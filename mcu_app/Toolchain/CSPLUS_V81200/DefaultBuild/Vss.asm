#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\vss\Vss.c -oDefaultBuild\Vss.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_41ac570e3e71440a8830360a445b58ddfdeok2b3.4bw
#@	compiled at Fri Mar 27 09:50:00 2026

	.file "..\..\Bsw\Crypto\CRYPTO\vss\Vss.c"

	$reg_mode 32
	.dbl_size 8

	.public _VssCryptoInit
	.extern _VssAdapter_InitSoft
	.public _VssSecocCmacGen
	.extern _VssAdapter_Sm4CMac
	.public _Vss_Challenge_Response
	.extern _VssAdapter_SM4_Challenge_Response
	.extern _memset
	.public _Vss_SetSecOCKeyActive
	.public _VssGenerateKeyByCode
	.public _VssGetAlgFlag
	.public _VssSetKeyActive
	.public _VssGetKeyActive
	.public _VssSetVSN
	.public _VssGetVSN
	.extern _memcmp
	.extern _memcpy
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
	.public _Vss_CRC32_CALC
	.extern _VssAdapter_CRC32_CALC
	.public _Vss_CRC16_CCITT_False
	.extern _VssAdapter_CRC16_CCITT_False
	.public _Vss_CRC16_CCITT
	.extern _VssAdapter_CRC16_CCITT
	.public _Vss_CRC8
	.extern _VssAdapter_CRC8

	.section .text, text
_VssCryptoInit:
	.stack _VssCryptoInit = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 54
	prepare 0x00000061, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 58
	jarl _VssAdapter_InitSoft, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 59
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 64
	mov #_gVssCtx.1, r2
	mov 0x00000001, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 65
	st.w r20, 0x000000CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 66
	st.w r21, 0x000000D0[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 68
	ld.w 0x000000CC[r2], r5
	st.w r6, 0x00000000[r3]
	movea 0x00000024, r2, r9
	mov 0x00000000, r20
	mov r20, r7
	mov r20, r8
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 70
	mov r20, r10
.BB.LABEL.1_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 71
	dispose 0x00000004, 0x00000061, [r31]
_VssSecocCmacGen:
	.stack _VssSecocCmacGen = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 82
	prepare 0x00000001, 0x00000010
	mov r6, r2
	mov r7, r5
	mov r8, r9
	mov r3, r6
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 128
	mov #.STR.1, r8
	add r6, r7
	mov r6, r10
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	ld.b 0x00000000[r8], r11
	st.b r11, 0x00000000[r10]
	add 0x00000001, r8
	add 0x00000001, r10
.BB.LABEL.2_2:	; entry
	cmp r10, r7
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 129
	mov r2, r7
	mov r5, r8
	jarl _VssAdapter_Sm4CMac, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 133
	dispose 0x00000010, 0x00000001, [r31]
_Vss_Challenge_Response:
	.stack _Vss_Challenge_Response = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 148
	prepare 0x00000061, 0x00000010
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 151
	add r8, r2
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	st.b r5, 0x00000000[r8]
	add 0x00000001, r8
.BB.LABEL.3_2:	; entry
	cmp r8, r2
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; entry
	st.b r0, 0x00000000[r3]
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 153
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; entry.bb43_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.3_11
.BB.LABEL.3_6:	; if_break_bb
	movea 0x00000010, r0, r9
	mov r3, r8
	mov 0x00000002, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 158
	jarl _VssGetKeyByKeyId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 159
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_break_bb.bb43_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000006, r10
	br9 .BB.LABEL.3_11
.BB.LABEL.3_8:	; if_break_bb28
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 164
	mov r21, r7
	mov r20, r8
	jarl _VssAdapter_SM4_Challenge_Response, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 165
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_break_bb28.bb43_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_break_bb39
	mov 0x00000000, r20
	movea 0x00000010, r0, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 171
	mov r20, r7
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 173
	mov r20, r10
.BB.LABEL.3_11:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 174
	dispose 0x00000010, 0x00000061, [r31]
_Vss_SetSecOCKeyActive:
	.stack _Vss_SetSecOCKeyActive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 184
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	mov 0x00000000, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 189
	jarl _VssSetKeyActive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 192
	dispose 0x00000000, 0x00000001, [r31]
_VssGenerateKeyByCode:
	.stack _VssGenerateKeyByCode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 206
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 208
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.5_7
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 212
	cmp 0x00000001, r9
	bh9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_break_bb
	addi 0xFFFFFFE0, r6, r0
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_break_bb.bb38_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_break_bb36
	mov 0x00000000, r10
.BB.LABEL.5_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 220
	jmp [r31]
_VssGetAlgFlag:
	.stack _VssGetAlgFlag = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 231
	prepare 0x00000041, 0x00000024
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 234
	st.b r0, 0x00000023[r3]
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 238
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.6_9
.BB.LABEL.6_2:	; if_break_bb
	movea 0x00000023, r3, r8
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 244
	jarl _VssGetKeyActive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 245
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 250
	ld.bu 0x00000023[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 252
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 253
	dispose 0x00000024, 0x00000041, [r31]
.BB.LABEL.6_5:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 256
	jarl _VssGetVSN, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 257
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_6:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 263
	tst1 0x00000000, 0x00000022[r3]
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 265
	st.b r2, 0x00000000[r20]
	dispose 0x00000024, 0x00000041, [r31]
.BB.LABEL.6_8:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 269
	st.b r2, 0x00000000[r20]
.BB.LABEL.6_9:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 275
	dispose 0x00000024, 0x00000041, [r31]
_VssSetKeyActive:
	.stack _VssSetKeyActive = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 287
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 291
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	mov r7, r2
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.7_14
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 296
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000008, r6
	blt9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_break_bb.bb93_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.7_14
.BB.LABEL.7_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 301
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 303
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_7:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 307
	movhi HIGHW1(#_gVssCtx.1+0x00000024), r0, r5
	ld.bu LOWW(#_gVssCtx.1+0x00000024)[r5], r5
	cmp r5, r8
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_break_bb37.bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_14
.BB.LABEL.7_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 309
	mov #_gVssCtx.1, r5
	st.b r8, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 310
	ld.w 0x000000CC[r5], r10
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 309
	movea 0x00000024, r5, r9
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 310
	mov r2, r8
	jarl [r10], r31
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.7_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 313
	cmp 0x00000003, r6
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_11:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 315
	cmp 0x00000001, r2
	bgt9 .BB.LABEL.7_4
.BB.LABEL.7_12:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 319
	mov #_gVssCtx.1, r5
	add r2, r5
	ld.bu 0x00000046[r5], r7
	cmp r7, r8
	movea 0x00000046, r5, r9
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_13:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 321
	st.b r8, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 322
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	mov 0x00000000, r7
	mov r2, r8
	jarl [r5], r31
.BB.LABEL.7_14:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 327
	dispose 0x00000004, 0x00000001, [r31]
_VssGetKeyActive:
	.stack _VssGetKeyActive = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 338
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 342
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	mov r8, r20
	mov r7, r8
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; entry.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
.BB.LABEL.8_2:	; bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 382
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 346
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r2
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_break_bb
	cmp 0x00000008, r6
	blt9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_break_bb.bb110_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.8_2
.BB.LABEL.8_7:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 351
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_8:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 353
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_9:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 357
	mov #_gVssCtx.1, r2
	ld.w 0x000000CC[r2], r5
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	movea 0x00000024, r2, r9
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 358
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_break_bb48.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.8_2
.BB.LABEL.8_11:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 362
	movhi HIGHW1(#_gVssCtx.1+0x00000024), r0, r2
	ld.b LOWW(#_gVssCtx.1+0x00000024)[r2], r2
	br9 .BB.LABEL.8_18
.BB.LABEL.8_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 364
	cmp 0x00000003, r6
	bz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_else_bb.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_2
.BB.LABEL.8_14:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 366
	cmp 0x00000001, r8
	bgt9 .BB.LABEL.8_6
.BB.LABEL.8_15:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 370
	mov #_gVssCtx.1, r2
	add r8, r2
	ld.bu 0x00000046[r2], r5
	cmp r20, r5
	movea 0x00000046, r2, r21
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_16:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 372
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r2
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r2], r2
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	mov r21, r9
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 373
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_17:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 377
	ld.b 0x00000000[r21], r2
.BB.LABEL.8_18:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	st.b r2, 0x00000000[r20]
	br9 .BB.LABEL.8_13
_VssSetVSN:
	.stack _VssSetVSN = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 393
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 397
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.9_9
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 402
	addi 0xFFFFFFE0, r20, r0
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r2
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r2], r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_break_bb
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_break_bb.bb50_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.9_9
.BB.LABEL.9_6:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 408
	mov #_gVssCtx.1, r6
	add 0x00000004, r6
	mov r21, r7
	mov r20, r8
	jarl _memcmp, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_break_bb34.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 410
	mov #_gVssCtx.1, r22
	addi 0x00000004, r22, r23
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 411
	ld.w 0x000000CC[r22], r2
	movea 0x00000020, r0, r5
	st.w r5, 0x00000000[r3]
	mov 0x00000000, r6
	mov r6, r7
	mov r6, r8
	mov r23, r9
	jarl [r2], r31
.BB.LABEL.9_9:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 415
	dispose 0x00000004, 0x00000079, [r31]
_VssGetVSN:
	.stack _VssGetVSN = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 425
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 429
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.10_9
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 433
	addi 0xFFFFFFE0, r7, r0
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r2
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r2], r2
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_break_bb
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_break_bb.bb48_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_break_bb34
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 438
	st.w r5, 0x00000000[r3]
	mov #_gVssCtx.1, r9
	add 0x00000004, r9
	mov 0x00000001, r7
	mov 0x00000000, r6
	mov r6, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 439
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_break_bb34.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 443
	mov #_gVssCtx.1, r7
	add 0x00000004, r7
	movea 0x00000020, r0, r8
	mov r20, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 445
	mov r21, r10
.BB.LABEL.10_9:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 446
	dispose 0x00000004, 0x00000061, [r31]
_VssSM4CMacByKeyId:
	.stack _VssSM4CMacByKeyId = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 459
	prepare 0x00000079, 0x00000010
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	mov r3, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 462
	add r10, r2
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry
	st.b r5, 0x00000000[r10]
	add 0x00000001, r10
.BB.LABEL.11_2:	; entry
	cmp r10, r2
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; entry
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 464
	movhi HIGHW1(#_gVssCtx.1), r0, r2
	ld.w LOWW(#_gVssCtx.1)[r2], r2
	cmp 0x00000001, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; entry.bb68_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 469
	cmp 0x00000008, r6
	bh9 .BB.LABEL.11_9
.BB.LABEL.11_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; if_break_bb
	cmp 0x00000000, r20
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_break_bb
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_break_bb.bb68_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_break_bb50
	mov r3, r23
	movea 0x00000010, r0, r9
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 474
	mov r23, r8
	jarl _VssGetKeyByKeyId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 476
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _VssAdapter_Sm4CMac, r31
.BB.LABEL.11_11:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 482
	dispose 0x00000010, 0x00000079, [r31]
_VssSM3Init:
	.stack _VssSM3Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 492
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 494
	cmp 0x00000000, r6
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 498
	jarl _VssAdapter_Sm3Init, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 499
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 500
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Update:
	.stack _VssSM3Update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 512
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 514
	cmp 0x00000000, r6
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 518
	jarl _VssAdapter_Sm3Update, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 519
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 520
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Final:
	.stack _VssSM3Final = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 530
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 532
	cmp 0x00000000, r6
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 536
	jarl _Crypto_SM3_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 537
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 538
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Calc:
	.stack _VssSM3Calc = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 549
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 551
	cmp 0x00000000, r6
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; entry
	cmp 0x00000000, r7
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 556
	jarl _VssAdapter_Sm3Calc, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_4:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 557
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Calc:
	.stack _VssSHA256Calc = 128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 568
	prepare 0x00000079, 0x0000006C
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 570
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; entry
	cmp 0x00000000, r21
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_break_bb
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 575
	mov r23, r6
	jarl _VssSHA256Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 576
	mov r23, r6
	mov r22, r7
	mov r21, r8
	jarl _VssSHA256Update, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 577
	mov r23, r6
	mov r20, r7
	jarl _VssSHA256Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 578
	dispose 0x0000006C, 0x00000079, [r31]
.BB.LABEL.16_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 579
	dispose 0x0000006C, 0x00000079, [r31]
_VssSHA256Init:
	.stack _VssSHA256Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 589
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 591
	cmp 0x00000000, r6
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 595
	jarl _VssAdapter_SHA256_Init, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 597
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.17_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 598
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Update:
	.stack _VssSHA256Update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 610
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 612
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 616
	jarl _VssAdapter_SHA256_Update, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 617
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 618
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Final:
	.stack _VssSHA256Final = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 628
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 630
	cmp 0x00000000, r6
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 634
	jarl _VssAdapter_SHA256_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 635
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 636
	dispose 0x00000000, 0x00000001, [r31]
_VssSM2_Verify:
	.stack _VssSM2_Verify = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 649
	prepare 0x00000079, 0x00000004
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 653
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; entry.bb41_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 657
	mov #_gVssCtx.1, r2
	ld.w 0x000000CC[r2], r5
	movea 0x00000041, r0, r6
	st.w r6, 0x00000000[r3]
	movea 0x00000048, r2, r9
	mov 0x00000000, r8
	mov 0x00000001, r7
	mov 0x00000006, r6
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 658
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_break_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_5:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 662
	mov #_gVssCtx.1, r2
	movea 0x00000048, r2, r2
	st.w r2, 0x00000000[r3]
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _VssAdapter_SM2_Verify, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 663
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_break_bb27.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x00000084, r0, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_break_bb39
	mov 0x00000000, r10
.BB.LABEL.20_8:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 669
	dispose 0x00000004, 0x00000079, [r31]
_VssEcc256_Verify:
	.stack _VssEcc256_Verify = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 682
	prepare 0x00000079, 0x00000004
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 686
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; entry.bb41_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.21_8
.BB.LABEL.21_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 691
	mov #_gVssCtx.1, r2
	ld.w 0x000000CC[r2], r5
	movea 0x00000041, r0, r6
	st.w r6, 0x00000000[r3]
	movea 0x00000089, r2, r9
	mov 0x00000000, r8
	mov 0x00000001, r7
	mov 0x00000007, r6
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 692
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_break_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.21_8
.BB.LABEL.21_5:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 697
	mov #_gVssCtx.1, r2
	movea 0x00000089, r2, r2
	st.w r2, 0x00000000[r3]
	mov r23, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl _VssAdapter_ECC_Verify, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 698
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_break_bb27.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	movea 0x00000084, r0, r10
	br9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_break_bb39
	mov 0x00000000, r10
.BB.LABEL.21_8:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 704
	dispose 0x00000004, 0x00000079, [r31]
_Vss_Crc32Init:
	.stack _Vss_Crc32Init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 715
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 717
	cmp 0x00000000, r6
	mov r8, r20
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 722
	jarl _VssAdapter_Crc32Init, r31
	st.w r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 724
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.22_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 725
	dispose 0x00000000, 0x00000041, [r31]
_Vss_Crc32:
	.stack _Vss_Crc32 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 738
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 740
	cmp 0x00000000, r6
	ld.w 0x00000008[r3], r20
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; bb17
	cmp 0x00000000, r9
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; bb17
	cmp 0x00000000, r8
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 745
	jarl _VssAdapter_Crc32, r31
	st.w r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 747
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.23_5:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 748
	dispose 0x00000000, 0x00000041, [r31]
_Vss_Crc32FinalResult:
	.stack _Vss_Crc32FinalResult = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 759
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 761
	cmp 0x00000000, r6
	mov r8, r20
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 766
	jarl _VssAdapter_Crc32FinalResult, r31
	st.w r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 768
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 769
	dispose 0x00000000, 0x00000041, [r31]
_Vss_CRC32_CALC:
	.stack _Vss_CRC32_CALC = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 781
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r9, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 783
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 788
	jarl _VssAdapter_CRC32_CALC, r31
	st.w r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 790
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.25_4:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 791
	dispose 0x00000000, 0x00000041, [r31]
_Vss_CRC16_CCITT_False:
	.stack _Vss_CRC16_CCITT_False = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 803
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r9, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 805
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 810
	jarl _VssAdapter_CRC16_CCITT_False, r31
	st.h r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 812
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.26_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 813
	dispose 0x00000000, 0x00000041, [r31]
_Vss_CRC16_CCITT:
	.stack _Vss_CRC16_CCITT = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 825
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r9, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 827
	bz9 .BB.LABEL.27_4
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 832
	jarl _VssAdapter_CRC16_CCITT, r31
	st.h r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 834
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.27_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 835
	dispose 0x00000000, 0x00000041, [r31]
_Vss_CRC8:
	.stack _Vss_CRC8 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 848
	prepare 0x00000041, 0x00000000
	ld.w 0x00000008[r3], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 850
	cmp 0x00000000, r20
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 855
	jarl _VssAdapter_CRC8, r31
	st.b r10, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 857
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.28_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 858
	dispose 0x00000000, 0x00000041, [r31]
_VssGetKeyByKeyId.1:
	.stack _VssGetKeyByKeyId.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 870
	prepare 0x00000079, 0x00000004
	mov r9, r20
	addi 0x00000000, r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 874
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; entry.bb58_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.29_9
.BB.LABEL.29_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 879
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r2
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_4:	; if_break_bb.bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.29_9
.BB.LABEL.29_5:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 884
	cmp 0x00000002, r7
	bz9 .BB.LABEL.29_7
.BB.LABEL.29_6:	; if_break_bb25.bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.29_9
.BB.LABEL.29_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 886
	st.w r20, 0x00000000[r3]
	mov r6, r5
	shl 0x00000004, r5
	mov #_gVssCtx.1, r8
	add r5, r8
	movea 0x00000026, r8, r22
	andi 0x000000FF, r6, r8
	mov 0x00000001, r5
	mov r7, r6
	mov r5, r7
	mov r22, r9
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 887
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.29_4
.BB.LABEL.29_8:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 891
	mov r21, r6
	mov r22, r7
	mov r20, r8
	jarl _memcpy, r31
	mov r23, r10
.BB.LABEL.29_9:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss.c", 895
	dispose 0x00000004, 0x00000079, [r31]
	.section .bss, bss
	.align 4
_gVssCtx.1:
	.ds (212)
	.section .const, const
.STR.1:
	.db 0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x10
