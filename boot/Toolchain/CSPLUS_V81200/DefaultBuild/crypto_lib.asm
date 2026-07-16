#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\vss\crypto_lib.c -oDefaultBuild\crypto_lib.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_3d6c60e236e74c95b819d2758adabd45gn2mo2df.x1e
#@	compiled at Thu Jul 16 13:41:34 2026

	.file "..\..\Bsw\SystemServices\vss\crypto_lib.c"

	$reg_mode 22
	.dbl_size 4

	.extern _sm2_z256_pre_comp
	.public _SM2_Z256_P, 32
	.public _SM2_Z256_NEG_P, 32
	.public _SM2_Z256_MODP_MONT_ONE, 4
	.public _SM2_Z256_2e512modp, 32
	.public _SM2_Z256_P_PRIME, 32
	.public _SM2_Z256_MODP_MONT_B, 32
	.public _SM2_Z256_N, 32
	.public _SM2_Z256_NEG_N, 32
	.public _SM2_Z256_ONE, 32
	.public _Crypto_SM4_CMAC
	.extern _memset
	.extern _memcpy
	.public _Crypto_SM3_CALC
	.public _Crypto_SM3_Init
	.public _Crypto_SM3_Update
	.public _Crypto_SM3_Final
	.extern _Wdg_59_DriverB_TriggerFunc
	.public _Crypto_SHA256_CALC
	.public _Crypto_SHA256_Init
	.public _Crypto_SHA256_Update
	.public _Crypto_SHA256_Final
	.public _Crypto_SM2_Verify
	.public _Crypto_ECC_Verify
	.public _Crypto_CcittFalseCrc16
	.public _Crypto_CcittCrc16
	.public _Crypto_Crc32Init
	.public _Crypto_Crc32
	.public _Crypto_Crc32FinalResult
	.public _Crypto_Crc8
	.public _sm2_z256_prime
	.public _sm2_z256_modp_haf
	.public _sm2_z256_modp_tri
	.public _sm2_z256_point_dbl

	.section .text, text
_Crypto_SM4_CMAC:
	.stack _Crypto_SM4_CMAC = 132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 346
	prepare 0x00000B87, 0x00000068
	mov r9, r5
	st.w r5, 0x00000004[r3]
	mov r8, r5
	st.w r5, 0x00000000[r3]
	mov r7, r25
	addi 0x00000000, r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 348
	bz17 .BB.LABEL.1_21
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000004[r3], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.1_21
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 353
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000000[r3], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.1_21
.BB.LABEL.1_4:	; if_break_bb46
	movea 0x00000010, r0, r27
	mov 0x00000000, r7
	movea 0x00000028, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 359
	mov r27, r6
	add r5, r6
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_break_bb46
	st.b r7, 0x00000000[r5]
	add 0x00000001, r5
.BB.LABEL.1_6:	; if_break_bb46
	cmp r5, r6
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_7:	; if_break_bb46
	st.b r0, 0x00000028[r3]
	movea 0x00000038, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 362
	mov r28, r6
	mov r27, r8
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 363
	mov r26, r6
	mov r28, r7
	mov r28, r8
	jarl _SM4_EncryptBlock.1, r31
	movea 0x00000058, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 365
	mov r29, r6
	mov r28, r7
	mov r27, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 368
	tst1 0x00000007, 0x00000058[r3]
	setf 0x0000000A, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 367
	mov r29, r6
	jarl _LeftShiftOneBit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 368
	cmp 0x00000000, r27
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000058, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 369
	ld.b 0x0000000F[r5], r5
	xori 0x00000087, r5, r5
	st.b r5, 0x00000067[r3]
.BB.LABEL.1_9:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000048, r3, r27
	movea 0x00000010, r0, r8
	movea 0x00000058, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 371
	mov r27, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 374
	tst1 0x00000007, 0x00000048[r3]
	setf 0x0000000A, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 373
	mov r27, r6
	jarl _LeftShiftOneBit.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 374
	cmp 0x00000000, r28
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000048, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 376
	ld.b 0x0000000F[r5], r5
	xori 0x00000087, r5, r5
	st.b r5, 0x00000057[r3]
.BB.LABEL.1_11:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 379
	addi 0x0000000F, r5, r5
	shr 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 380
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 382
	cmov 0x00000002, 0x00000001, r5, r27
	mov 0x00000000, r28
	br9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 387
	mov r28, r8
	shl 0x00000004, r8
	add r25, r8
	movea 0x00000028, r3, r29
	movea 0x00000018, r3, r30
	mov r30, r6
	mov r29, r7
	jarl _Xor128.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 388
	mov r26, r6
	mov r30, r7
	mov r29, r8
	jarl _SM4_EncryptBlock.1, r31
	add 0x00000001, r28
.BB.LABEL.1_13:	; bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 385
	addi 0xFFFFFFFF, r27, r5
	cmp r5, r28
	bl9 .BB.LABEL.1_12
.BB.LABEL.1_14:	; bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 390
	jarl32 _memset, r31
	mov 0x0FFFFFFF, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 391
	add r27, r28
	shl 0x00000004, r28
	ld.w 0x00000000[r3], r5
	subr r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 393
	addi 0xFFFFFFF0, r28, r0
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000000[r3], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 395
	shl 0x00000004, r27
	add r25, r27
	addi 0xFFFFFFF0, r27, r7
	movea 0x00000058, r3, r8
	movea 0x00000008, r3, r6
	br9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 399
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 401
	shl 0x00000004, r27
	add r25, r27
	addi 0xFFFFFFF0, r27, r7
	movea 0x00000008, r3, r6
	mov r28, r8
	jarl32 _memcpy, r31
.BB.LABEL.1_19:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 403
	add r6, r28
	movea 0xFFFFFF80, r0, r5
	st.b r5, 0x00000000[r28]
	movea 0x00000048, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 404
	mov r6, r7
.BB.LABEL.1_20:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	jarl _Xor128.1, r31
	movea 0x00000018, r3, r25
	movea 0x00000008, r3, r8
	movea 0x00000028, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 406
	mov r25, r6
	jarl _Xor128.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 407
	mov r26, r6
	mov r25, r7
	ld.w 0x00000004[r3], r5
	mov r5, r8
	jarl _SM4_EncryptBlock.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 409
	dispose 0x00000068, 0x00000B87, [r31]
.BB.LABEL.1_21:	; bb187
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 410
	dispose 0x00000068, 0x00000B87, [r31]
_Crypto_SM3_CALC:
	.stack _Crypto_SM3_CALC = 124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 422
	prepare 0x00000385, 0x00000068
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 425
	mov r28, r6
	jarl _Crypto_SM3_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 426
	mov r28, r6
	mov r25, r7
	mov r26, r8
	jarl _Crypto_SM3_Update, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 427
	mov r28, r6
	mov r27, r7
	jarl _Crypto_SM3_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 429
	dispose 0x00000068, 0x00000385, [r31]
_Crypto_SM3_Init:
	.stack _Crypto_SM3_Init = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 439
	mov 0x7380166F, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 441
	st.w r5, 0x00000000[r6]
	mov 0x4914B2B9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 442
	st.w r5, 0x00000004[r6]
	mov 0x172442D7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 443
	st.w r5, 0x00000008[r6]
	mov 0xDA8A0600, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 444
	st.w r5, 0x0000000C[r6]
	mov 0xA96F30BC, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 445
	st.w r5, 0x00000010[r6]
	mov 0x163138AA, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 446
	st.w r5, 0x00000014[r6]
	mov 0xE38DEE4D, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 447
	st.w r5, 0x00000018[r6]
	mov 0xB0FB0E4E, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 448
	st.w r5, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 449
	st.w r0, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 450
	st.w r0, 0x00000024[r6]
	jmp [r31]
_Crypto_SM3_Update:
	.stack _Crypto_SM3_Update = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 463
	prepare 0x00000B87, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 468
	ld.w 0x00000020[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 469
	mov r8, r9
	shl 0x00000003, r9
	mov r5, r10
	add r9, r10
	st.w r10, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 468
	shr 0x00000003, r5
	andi 0x0000003F, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 470
	cmp r9, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 468
	movea 0x00000020, r6, r5
	mov r8, r26
	mov r7, r27
	mov r6, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 470
	bnc9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 472
	ld.w 0x00000004[r5], r6
	add 0x00000001, r6
	st.w r6, 0x00000004[r5]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 475
	ld.w 0x00000004[r5], r6
	mov r26, r7
	shr 0x0000001D, r7
	add r7, r6
	st.w r6, 0x00000004[r5]
	movea 0x00000040, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 476
	sub r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 478
	cmp r26, r29
	bnh9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_break_bb.if_break_bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r29
	br9 .BB.LABEL.4_10
.BB.LABEL.4_4:	; if_then_bb52
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 480
	mov r5, r6
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 481
	movea 0x00000028, r28, r30
	mov r25, r6
	add r30, r6
	mov r27, r7
	mov r29, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 482
	mov r28, r6
	mov r30, r7
	mov 0x00000001, r25
	mov r25, r8
	jarl _sm3_compress_blocks.1, r31
	mov 0x00000000, r25
	br9 .BB.LABEL.4_8
.BB.LABEL.4_5:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 485
	mov r27, r7
	add r29, r7
	mov 0x00000001, r8
	mov r28, r6
	jarl _sm3_compress_blocks.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 486
	add 0x00000001, r25
	movea 0x0000003F, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 487
	cmp r5, r25
	bnh9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 489
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	mov 0x00000000, r25
.BB.LABEL.4_7:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r29, r29
.BB.LABEL.4_8:	; bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 483
	movea 0x0000003F, r29, r5
	cmp r26, r5
	bl9 .BB.LABEL.4_5
.BB.LABEL.4_9:	; bb86.if_break_bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r25
.BB.LABEL.4_10:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 499
	add r25, r28
	movea 0x00000028, r28, r6
	mov r26, r8
	sub r29, r8
	mov r27, r7
	add r29, r7
	jarl32 _memcpy, r31
	dispose 0x00000000, 0x00000B87, [r31]
_Crypto_SM3_Final:
	.stack _Crypto_SM3_Final = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 511
	prepare 0x00000301, 0x00000008
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 516
	ld.w 0x00000024[r6], r5
	shr 0x00000018, r5
	st.b r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 517
	ld.w 0x00000024[r6], r5
	shr 0x00000010, r5
	st.b r5, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 518
	ld.w 0x00000024[r6], r5
	shr 0x00000008, r5
	st.b r5, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 519
	ld.w 0x00000024[r6], r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 520
	ld.w 0x00000020[r6], r5
	shr 0x00000018, r5
	st.b r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 521
	ld.w 0x00000020[r6], r5
	shr 0x00000010, r5
	st.b r5, 0x00000005[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 522
	ld.w 0x00000020[r6], r5
	shr 0x00000008, r5
	st.b r5, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 523
	ld.w 0x00000020[r6], r5
	st.b r5, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 525
	ld.w 0x00000020[r6], r5
	shr 0x00000003, r5
	andi 0x0000003F, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 526
	mov r6, r7
	add r5, r7
	movea 0xFFFFFF80, r0, r8
	st.b r8, 0x00000028[r7]
	add 0x00000001, r5
	movea 0x00000038, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 528
	cmp r7, r5
	mov r6, r26
	bh9 .BB.LABEL.5_2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 532
	add r5, r6
	st.b r0, 0x00000028[r6]
	add 0x00000001, r5
.BB.LABEL.5_2:	; bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 530
	cmp r6, r5
	mov r26, r6
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 534
	movea 0x00000028, r26, r7
	mov 0x00000001, r8
	jarl _sm3_compress_blocks.1, r31
	mov 0x00000000, r5
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 540
	mov r26, r6
	add r5, r6
	st.b r0, 0x00000028[r6]
	add 0x00000001, r5
.BB.LABEL.5_5:	; bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000038, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 538
	cmp r6, r5
	bl9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; bb128.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; bb134
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 545
	add r5, r6
	ld.b 0x00000000[r6], r6
	mov r26, r7
	add r5, r7
	st.b r6, 0x00000060[r7]
	add 0x00000001, r5
.BB.LABEL.5_8:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 543
	cmp 0x00000008, r5
	bl9 .BB.LABEL.5_7
.BB.LABEL.5_9:	; bb152
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 548
	movea 0x00000028, r26, r7
	mov 0x00000001, r8
	mov r26, r6
	jarl _sm3_compress_blocks.1, r31
	mov 0x00000000, r5
	br9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 552
	mov r5, r6
	shl 0x00000002, r6
	mov r25, r7
	add r6, r7
	add r26, r6
	ld.w 0x00000000[r6], r8
	shr 0x00000018, r8
	st.b r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 553
	ld.w 0x00000000[r6], r8
	shr 0x00000010, r8
	st.b r8, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 554
	ld.w 0x00000000[r6], r8
	shr 0x00000008, r8
	st.b r8, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 555
	ld.w 0x00000000[r6], r6
	st.b r6, 0x00000003[r7]
	add 0x00000001, r5
.BB.LABEL.5_11:	; bb216
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 550
	cmp 0x00000008, r5
	bl9 .BB.LABEL.5_10
.BB.LABEL.5_12:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 557
	dispose 0x00000008, 0x00000301, [r31]
_Crypto_SHA256_CALC:
	.stack _Crypto_SHA256_CALC = 128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 569
	prepare 0x00000385, 0x0000006C
	addi 0x00000000, r8, r25
	mov r7, r26
	mov r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 571
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 576
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_break_bb24
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 582
	mov r28, r6
	jarl _Crypto_SHA256_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 583
	mov r28, r6
	mov r27, r7
	mov r26, r8
	jarl _Crypto_SHA256_Update, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 584
	mov r28, r6
	mov r25, r7
	jarl _Crypto_SHA256_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 585
	dispose 0x0000006C, 0x00000385, [r31]
.BB.LABEL.6_4:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 586
	dispose 0x0000006C, 0x00000385, [r31]
_Crypto_SHA256_Init:
	.stack _Crypto_SHA256_Init = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 596
	mov 0x6A09E667, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 599
	st.w r5, 0x00000000[r6]
	mov 0xBB67AE85, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 600
	st.w r5, 0x00000004[r6]
	mov 0x3C6EF372, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 601
	st.w r5, 0x00000008[r6]
	mov 0xA54FF53A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 602
	st.w r5, 0x0000000C[r6]
	mov 0x510E527F, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 603
	st.w r5, 0x00000010[r6]
	mov 0x9B05688C, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 604
	st.w r5, 0x00000014[r6]
	mov 0x1F83D9AB, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 605
	st.w r5, 0x00000018[r6]
	mov 0x5BE0CD19, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 606
	st.w r5, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 608
	st.w r0, 0x00000024[r6]
	st.w r0, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 609
	st.w r0, 0x00000068[r6]
	jmp [r31]
_Crypto_SHA256_Update:
	.stack _Crypto_SHA256_Update = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 622
	prepare 0x00000387, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 627
	ld.w 0x00000068[r6], r5
	cmp 0x00000000, r5
	mov r8, r25
	mov r7, r26
	mov r6, r27
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r28
	br9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; if_then_bb
	movea 0x00000040, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 628
	sub r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 629
	cmp r25, r28
	cmov 0x0000000B, r25, r28, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 631
	add r27, r5
	movea 0x00000028, r5, r6
	mov r26, r7
	mov r28, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 632
	ld.w 0x00000068[r27], r5
	add r28, r5
	st.w r5, 0x00000068[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 636
	addi 0xFFFFFFC0, r5, r0
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_3:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 637
	movea 0x00000028, r27, r7
	mov r27, r6
	jarl _sha256_transform.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 638
	ld.w 0x00000024[r27], r5
	ld.w 0x00000020[r27], r6
	mov 0x00000000, r7
	addi 0x00000040, r6, r6
	adf 0x00000001, r7, r5, r5
	st.w r5, 0x00000024[r27]
	st.w r6, 0x00000020[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 639
	st.w r0, 0x00000068[r27]
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 645
	mov r26, r7
	add r28, r7
	mov r27, r6
	jarl _sha256_transform.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 646
	ld.w 0x00000024[r27], r5
	ld.w 0x00000020[r27], r6
	mov 0x00000000, r7
	addi 0x00000040, r6, r6
	adf 0x00000001, r7, r5, r5
	st.w r5, 0x00000024[r27]
	st.w r6, 0x00000020[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 647
	movea 0x00000040, r28, r28
.BB.LABEL.8_5:	; bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 644
	movea 0x0000003F, r28, r5
	cmp r25, r5
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_6:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 651
	mov r25, r29
	sub r28, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 652
	cmp r25, r28
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 653
	mov r26, r7
	add r28, r7
	movea 0x00000028, r27, r6
	mov r29, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 654
	st.w r29, 0x00000068[r27]
.BB.LABEL.8_8:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 656
	dispose 0x00000000, 0x00000387, [r31]
_Crypto_SHA256_Final:
	.stack _Crypto_SHA256_Final = 96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 666
	prepare 0x00000B87, 0x00000044
	mov r6, r25
	mov r7, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 668
	ld.w 0x00000068[r25], r26
	ld.w 0x00000024[r25], r27
	ld.w 0x00000020[r25], r28
	movea 0xFFFFFF80, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 681
	st.b r5, 0x00000004[r3]
	movea 0x00000038, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 674
	cmp r5, r26
	movea 0x00000078, r0, r5
	movea 0x00000038, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 677
	cmov 0x00000001, r6, r5, r29
	sub r26, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 682
	addi 0xFFFFFFFF, r29, r8
	mov 0x00000000, r30
	movea 0x00000005, r3, r6
	mov r30, r7
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 668
	add r26, r28
	adf 0x00000001, r30, r27, r26
	shl 0x00000003, r26
	mov r28, r5
	shr 0x0000001D, r5
	or r5, r26
	shl 0x00000003, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 685
	ld.w 0x00000068[r25], r5
	mov r25, r6
	add r5, r6
	movea 0x00000038, r0, r7
	cmp r7, r5
	movea 0x00000028, r6, r6
	movea 0x00000004, r3, r7
	bl9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 687
	sub r5, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 688
	movea 0x00000028, r25, r29
	mov r25, r6
	mov r29, r7
	jarl _sha256_transform.1, r31
	movea 0x00000038, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 691
	mov r29, r6
	jarl32 _memset, r31
	mov 0x00000007, r29
	br9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 694
	mov r29, r8
	jarl32 _memcpy, r31
	mov 0x00000007, r29
	br9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 699
	mov r25, r5
	add r29, r5
	st.b r28, 0x00000060[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 700
	shr 0x00000008, r28
	mov r26, r5
	shl 0x00000018, r5
	or r5, r28
	add 0xFFFFFFFF, r29
	shr 0x00000008, r26
.BB.LABEL.9_4:	; bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 698
	cmp 0x00000000, r29
	bp9 .BB.LABEL.9_3
.BB.LABEL.9_5:	; bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 703
	movea 0x00000028, r25, r7
	mov r25, r6
	jarl _sha256_transform.1, r31
	mov 0x00000000, r5
	br9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 707
	mov r5, r6
	shl 0x00000002, r6
	ld.w 0x00000000[r3], r7
	add r6, r7
	add r25, r6
	ld.w 0x00000000[r6], r8
	shr 0x00000018, r8
	st.b r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 708
	ld.w 0x00000000[r6], r8
	shr 0x00000010, r8
	st.b r8, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 709
	ld.w 0x00000000[r6], r8
	shr 0x00000008, r8
	st.b r8, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 710
	ld.w 0x00000000[r6], r6
	st.b r6, 0x00000003[r7]
	add 0x00000001, r5
.BB.LABEL.9_7:	; bb161
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 706
	cmp 0x00000008, r5
	blt9 .BB.LABEL.9_6
.BB.LABEL.9_8:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 712
	dispose 0x00000044, 0x00000B87, [r31]
_Crypto_SM2_Verify:
	.stack _Crypto_SM2_Verify = 212
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 726
	prepare 0x00000385, 0x0000007C
	movea 0xFFFFFFBC, r3, r3
	mov r6, r25
	mov r7, r26
	mov r8, r27
	movea 0x00000041, r0, r8
	ld.w 0x000000D4[r3], r28
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 732
	mov r28, r7
	jarl _sm2_z256_point_from_octets.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 745
	addi 0xFFFFFFE0, r26, r0
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; if_break_bb
	cmp 0x00000000, r27
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_4:	; if_break_bb
	cmp 0x00000000, r28
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_break_bb70
	mov r3, r26
	movea 0x00000040, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 751
	mov r26, r6
	jarl32 _memset, r31
	movea 0x00000020, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 752
	mov r26, r6
	mov r27, r7
	mov r28, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 753
	movea 0x00000020, r27, r7
	movea 0x00000020, r3, r6
	mov r28, r8
	jarl32 _memcpy, r31
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 756
	mov r25, r7
	mov r26, r8
	jarl _sm2_do_verify.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 757
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 761
	movea 0x00000044, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
.BB.LABEL.10_7:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 762
	movea 0x00000044, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
_Crypto_ECC_Verify:
	.stack _Crypto_ECC_Verify = 252
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 773
	prepare 0x00000385, 0x0000007C
	movea 0xFFFFFF94, r3, r3
	ld.w 0x000000FC[r3], r5
	mov r9, r25
	mov r8, r26
	mov r7, r27
	addi 0x00000000, r6, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 778
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_2:	; entry
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_3:	; entry
	cmp 0x00000000, r27
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_4:	; entry
	cmp 0x00000000, r25
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 780
	st.w r5, 0x00000024[r3]
	movea 0x00000041, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 781
	st.w r5, 0x00000020[r3]
	movea 0x00000020, r3, r8
	movea 0x00000024, r3, r7
	movea 0x00000068, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 783
	jarl _secp256r1_public_key_from_bytes.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	addi 0xFFFFFFC0, r25, r0
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; if_break_bb91
	movea 0x00000028, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 789
	mov r25, r6
	mov r26, r7
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 790
	movea 0x00000020, r26, r7
	movea 0x00000048, r3, r6
	jarl _secp256r1_from_32bytes.1, r31
	mov r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 793
	mov r28, r6
	mov r27, r7
	mov r26, r8
	jarl _Crypto_SHA256_CALC, r31
	movea 0x00000068, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 795
	mov r26, r7
	mov r25, r8
	jarl _ecdsa_do_verify.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_break_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 798
	movea 0x0000006C, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
.BB.LABEL.11_9:	; bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 799
	movea 0x0000006C, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
_Crypto_CcittFalseCrc16:
	.stack _Crypto_CcittFalseCrc16 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 809
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 814
	andi 0x0000FFFF, r6, r5
	shr 0x00000008, r5
	ld.bu 0x00000000[r7], r9
	xor r9, r5
	add r5, r5
	mov #_crc16_ccitt_false_table.13, r9
	add r5, r9
	ld.h 0x00000000[r9], r5
	shl 0x00000008, r6
	xor r5, r6
	add 0x00000001, r7
.BB.LABEL.12_2:	; bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 813
	addi 0xFFFFFFFF, r5, r8
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 817
	zxh r6
	mov r6, r10
	jmp [r31]
_Crypto_CcittCrc16:
	.stack _Crypto_CcittCrc16 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 827
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 832
	andi 0x000000FF, r6, r5
	ld.bu 0x00000000[r7], r9
	xor r9, r5
	add r5, r5
	mov #_crc16_ccitt_table.14, r9
	add r5, r9
	ld.h 0x00000000[r9], r5
	zxh r6
	shr 0x00000008, r6
	xor r5, r6
	add 0x00000001, r7
.BB.LABEL.13_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 831
	addi 0xFFFFFFFF, r5, r8
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 835
	zxh r6
	mov r6, r10
	jmp [r31]
_Crypto_Crc32Init:
	.stack _Crypto_Crc32Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 845
	prepare 0x00000201, 0x00000000
	mov r6, r25
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 848
	mov r7, r6
	mov r5, r7
	jarl _ReverseBits.1, r31
	mov 0x00000000, r5
	br9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 853
	andi 0x00000001, r7, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 854
	cmov 0x00000002, 0x00000000, r10, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 853
	shr 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 854
	xor r8, r7
	add 0x00000001, r6
.BB.LABEL.14_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 852
	andi 0x000000FF, r6, r8
	cmp 0x00000008, r8
	blt9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 859
	mov r5, r6
	shl 0x00000002, r6
	add r25, r6
	st.w r7, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.14_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x000000FF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 850
	cmp r6, r5
	bh9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; bb37.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r6
	mov r5, r7
	br9 .BB.LABEL.14_2
.BB.LABEL.14_6:	; bb42
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 863
	dispose 0x00000000, 0x00000201, [r31]
_Crypto_Crc32:
	.stack _Crypto_Crc32 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 873
	br9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 879
	andi 0x000000FF, r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 878
	ld.bu 0x00000000[r8], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 879
	xor r10, r5
	shl 0x00000002, r5
	add r6, r5
	ld.w 0x00000000[r5], r5
	shr 0x00000008, r7
	xor r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 878
	add 0x00000001, r8
.BB.LABEL.15_2:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 877
	addi 0xFFFFFFFF, r5, r9
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.15_1
.BB.LABEL.15_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 882
	mov r7, r10
	jmp [r31]
_Crypto_Crc32FinalResult:
	.stack _Crypto_Crc32FinalResult = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 892
	not r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 896
	jmp [r31]
_Crypto_Crc8:
	.stack _Crypto_Crc8 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 906
	br9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 913
	ld.bu 0x00000000[r8], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 911
	add 0x00000001, r8
	mov 0x00000000, r10
	br9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 914
	andi 0x00000080, r6, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 915
	cmov 0x00000002, 0x00000000, r7, r5
	add 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 914
	add r6, r6
.BB.LABEL.17_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	xor r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 913
	andi 0x000000FF, r10, r5
	cmp 0x00000008, r5
	blt9 .BB.LABEL.17_2
.BB.LABEL.17_4:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 910
	addi 0xFFFFFFFF, r5, r9
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.17_1
.BB.LABEL.17_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 922
	not r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 923
	zxb r10
	jmp [r31]
_ReverseBits.1:
	.stack _ReverseBits.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 933
	mov 0x00000000, r10
	mov r10, r5
	br9 .BB.LABEL.18_4
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 938
	andi 0x00000001, r6, r0
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 939
	addi 0xFFFFFFFF, r7, r8
	andi 0x000000FF, r5, r9
	sub r9, r8
	mov 0x00000001, r9
	shl r8, r9
	or r9, r10
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 941
	add 0x00000001, r5
	shr 0x00000001, r6
.BB.LABEL.18_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 937
	andi 0x000000FF, r5, r8
	cmp r7, r8
	bl9 .BB.LABEL.18_1
.BB.LABEL.18_5:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 944
	jmp [r31]
_sm4_tau.1:
	.stack _sm4_tau.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 954
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 956
	shr 0x00000018, r5
	mov #_SM4_SBOX.1, r7
	add r7, r5
	ld.b 0x00000000[r5], r10
	shl 0x00000018, r10
	mov r6, r5
	shr 0x00000010, r5
	zxb r5
	add r7, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000010, r5
	or r5, r10
	andi 0x0000FFFF, r6, r5
	shr 0x00000008, r5
	add r7, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000008, r5
	or r5, r10
	zxb r6
	add r6, r7
	ld.bu 0x00000000[r7], r5
	or r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 958
	jmp [r31]
_sm4_l_cal.1:
	.stack _sm4_l_cal.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 968
	rotl 0x00000002, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 970
	xor r6, r10
	rotl 0x0000000A, r6, r5
	xor r5, r10
	rotl 0x00000012, r6, r5
	xor r5, r10
	rotl 0x00000018, r6, r5
	xor r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 971
	jmp [r31]
_sm4_l_key.1:
	.stack _sm4_l_key.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 981
	rotl 0x0000000D, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 983
	xor r6, r10
	rotl 0x00000017, r6, r5
	xor r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 984
	jmp [r31]
_SM4_EncryptBlock.1:
	.stack _SM4_EncryptBlock.1 = 180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 997
	prepare 0x00000385, 0x0000007C
	movea 0xFFFFFFDC, r3, r3
	mov r7, r25
	mov r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1001
	ld.b 0x00000000[r6], r5
	shl 0x00000018, r5
	ld.bu 0x00000001[r6], r7
	shl 0x00000010, r7
	or r7, r5
	ld.bu 0x00000002[r6], r7
	shl 0x00000008, r7
	or r7, r5
	ld.bu 0x00000003[r6], r7
	or r7, r5
	st.w r5, 0x00000090[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1002
	ld.b 0x00000004[r6], r5
	shl 0x00000018, r5
	ld.bu 0x00000005[r6], r7
	shl 0x00000010, r7
	or r7, r5
	ld.bu 0x00000006[r6], r7
	shl 0x00000008, r7
	or r7, r5
	ld.bu 0x00000007[r6], r7
	or r7, r5
	st.w r5, 0x00000094[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1003
	ld.b 0x00000008[r6], r5
	shl 0x00000018, r5
	ld.bu 0x00000009[r6], r7
	shl 0x00000010, r7
	or r7, r5
	ld.bu 0x0000000A[r6], r7
	shl 0x00000008, r7
	or r7, r5
	ld.bu 0x0000000B[r6], r7
	or r7, r5
	st.w r5, 0x00000098[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1004
	ld.b 0x0000000C[r6], r5
	shl 0x00000018, r5
	ld.bu 0x0000000D[r6], r7
	shl 0x00000010, r7
	or r7, r5
	ld.bu 0x0000000E[r6], r7
	shl 0x00000008, r7
	or r7, r5
	ld.bu 0x0000000F[r6], r6
	or r6, r5
	st.w r5, 0x0000009C[r3]
	mov 0xA3B1BAC6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1005
	ld.w 0x00000090[r3], r6
	xor r5, r6
	st.w r6, 0x00000090[r3]
	mov 0x56AA3350, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1006
	ld.w 0x00000094[r3], r6
	xor r5, r6
	st.w r6, 0x00000094[r3]
	mov 0x677D9197, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1007
	ld.w 0x00000098[r3], r6
	xor r5, r6
	st.w r6, 0x00000098[r3]
	mov 0xB27022DC, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1008
	ld.w 0x0000009C[r3], r6
	xor r5, r6
	mov 0x00000000, r27
	br9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1012
	mov r27, r28
	shl 0x00000002, r28
	mov #_SM4_CK.3, r5
	add r28, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000098[r3], r7
	ld.w 0x00000094[r3], r6
	ld.w 0x0000009C[r3], r8
	xor r7, r6
	xor r8, r6
	xor r5, r6
	jarl _sm4_tau.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1013
	mov r10, r6
	jarl _sm4_l_key.1, r31
	ld.w 0x00000090[r3], r5
	xor r10, r5
	st.w r5, 0x00000090[r3]
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1014
	add r28, r6
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1016
	ld.w 0x00000094[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1015
	ld.w 0x00000090[r3], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1016
	st.w r5, 0x00000090[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1017
	ld.w 0x00000098[r3], r5
	st.w r5, 0x00000094[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1018
	ld.w 0x0000009C[r3], r5
	st.w r5, 0x00000098[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1019
	add 0x00000001, r27
.BB.LABEL.22_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	st.w r6, 0x0000009C[r3]
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1010
	cmp r5, r27
	bl9 .BB.LABEL.22_1
.BB.LABEL.22_3:	; bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1022
	ld.b 0x00000000[r25], r5
	shl 0x00000018, r5
	ld.bu 0x00000001[r25], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x00000002[r25], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x00000003[r25], r6
	or r6, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1023
	ld.b 0x00000004[r25], r5
	shl 0x00000018, r5
	ld.bu 0x00000005[r25], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x00000006[r25], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x00000007[r25], r6
	or r6, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1024
	ld.b 0x00000008[r25], r5
	shl 0x00000018, r5
	ld.bu 0x00000009[r25], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x0000000A[r25], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x0000000B[r25], r6
	or r6, r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1025
	ld.b 0x0000000C[r25], r5
	shl 0x00000018, r5
	ld.bu 0x0000000D[r25], r6
	shl 0x00000010, r6
	or r6, r5
	ld.bu 0x0000000E[r25], r6
	shl 0x00000008, r6
	or r6, r5
	ld.bu 0x0000000F[r25], r6
	or r6, r5
	mov 0x00000000, r25
	br9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; bb276
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1029
	mov r25, r5
	shl 0x00000002, r5
	movea 0x00000010, r3, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000008[r3], r7
	ld.w 0x00000004[r3], r6
	ld.w 0x0000000C[r3], r8
	xor r7, r6
	xor r8, r6
	xor r5, r6
	jarl _sm4_tau.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1030
	mov r10, r6
	jarl _sm4_l_cal.1, r31
	ld.w 0x00000000[r3], r5
	xor r10, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1032
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1033
	ld.w 0x00000008[r3], r6
	st.w r6, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1034
	ld.w 0x0000000C[r3], r6
	st.w r6, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1035
	add 0x00000001, r25
.BB.LABEL.22_5:	; bb276
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	st.w r5, 0x0000000C[r3]
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1027
	cmp r5, r25
	bl9 .BB.LABEL.22_4
.BB.LABEL.22_6:	; bb328
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1038
	ld.w 0x0000000C[r3], r5
	shr 0x00000018, r5
	st.b r5, 0x00000000[r26]
	ld.w 0x0000000C[r3], r5
	shr 0x00000010, r5
	st.b r5, 0x00000001[r26]
	ld.w 0x0000000C[r3], r5
	shr 0x00000008, r5
	st.b r5, 0x00000002[r26]
	ld.w 0x0000000C[r3], r5
	st.b r5, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1039
	ld.w 0x00000008[r3], r5
	shr 0x00000018, r5
	st.b r5, 0x00000004[r26]
	ld.w 0x00000008[r3], r5
	shr 0x00000010, r5
	st.b r5, 0x00000005[r26]
	ld.w 0x00000008[r3], r5
	shr 0x00000008, r5
	st.b r5, 0x00000006[r26]
	ld.w 0x00000008[r3], r5
	st.b r5, 0x00000007[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1040
	ld.w 0x00000004[r3], r5
	shr 0x00000018, r5
	st.b r5, 0x00000008[r26]
	ld.w 0x00000004[r3], r5
	shr 0x00000010, r5
	st.b r5, 0x00000009[r26]
	ld.w 0x00000004[r3], r5
	shr 0x00000008, r5
	st.b r5, 0x0000000A[r26]
	ld.w 0x00000004[r3], r5
	st.b r5, 0x0000000B[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1041
	ld.w 0x00000000[r3], r5
	shr 0x00000018, r5
	st.b r5, 0x0000000C[r26]
	ld.w 0x00000000[r3], r5
	shr 0x00000010, r5
	st.b r5, 0x0000000D[r26]
	ld.w 0x00000000[r3], r5
	shr 0x00000008, r5
	st.b r5, 0x0000000E[r26]
	ld.w 0x00000000[r3], r5
	st.b r5, 0x0000000F[r26]
	movea 0x00000024, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
_LeftShiftOneBit.1:
	.stack _LeftShiftOneBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1052
	mov 0x00000000, r5
	mov 0x0000000F, r7
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1057
	mov r7, r9
	sxb r9
	add r6, r9
	ld.bu 0x00000000[r9], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1058
	mov r5, r10
	add r10, r10
	or r8, r10
	st.b r10, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1057
	zxb r5
	shr 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1059
	add 0xFFFFFFFF, r7
.BB.LABEL.23_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1055
	mov r7, r5
	sxb r5
	cmp 0x00000000, r5
	bp9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1061
	jmp [r31]
_Xor128.1:
	.stack _Xor128.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1074
	mov 0x00000000, r5
	br9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1078
	andi 0x000000FF, r5, r9
	mov r7, r10
	add r9, r10
	ld.b 0x00000000[r10], r10
	mov r8, r11
	add r9, r11
	ld.b 0x00000000[r11], r11
	xor r11, r10
	add r6, r9
	st.b r10, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.24_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1076
	andi 0x000000FF, r5, r9
	cmp 0x0000000F, r9
	ble9 .BB.LABEL.24_1
.BB.LABEL.24_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1080
	jmp [r31]
_sm3_compress_blocks.1:
	.stack _sm3_compress_blocks.1 = 776
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1092
	prepare 0x00000B87, 0x0000007C
	movea 0xFFFFFD90, r3, r3
	mov r6, r5
	st.w r5, 0x00000034[r3]
	mov r8, r5
	st.w r5, 0x000001D8[r3]
	mov r7, r5
	jr .BB.LABEL.25_5
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000034[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1108
	ld.w 0x0000001C[r5], r6
	st.w r6, 0x000001D4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1107
	ld.w 0x00000018[r5], r6
	st.w r6, 0x000001BC[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1106
	ld.w 0x00000014[r5], r6
	st.w r6, 0x000001B4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1105
	ld.w 0x00000010[r5], r6
	st.w r6, 0x0000019C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1104
	ld.w 0x0000000C[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1103
	ld.w 0x00000008[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1102
	ld.w 0x00000004[r5], r8
	st.w r8, 0x000001C4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1101
	ld.w 0x00000000[r5], r5
	st.w r5, 0x000001A4[r3]
	mov 0x00000000, r5
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1112
	mov r5, r8
	shl 0x00000002, r8
	ld.w 0x000001AC[r3], r9
	add r8, r9
	ld.b 0x00000000[r9], r10
	shl 0x00000018, r10
	ld.bu 0x00000001[r9], r11
	shl 0x00000010, r11
	or r11, r10
	ld.bu 0x00000002[r9], r11
	shl 0x00000008, r11
	or r11, r10
	ld.bu 0x00000003[r9], r9
	or r9, r10
	movea 0x000001DC, r3, r9
	add r8, r9
	st.w r10, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.25_3:	; bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1110
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.25_2
.BB.LABEL.25_4:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1115
	ld.w 0x000001DC[r3], r5
	ld.w 0x000001F8[r3], r8
	xor r5, r8
	ld.w 0x00000210[r3], r9
	rotl 0x0000000F, r9, r10
	xor r8, r10
	mov r10, r11
	shl 0x0000000F, r11
	mov r9, r12
	shl 0x0000000F, r12
	xor r8, r12
	shr 0x00000011, r12
	or r12, r11
	xor r10, r11
	shr 0x00000011, r9
	xor r9, r8
	shl 0x00000017, r8
	shr 0x00000009, r10
	or r10, r8
	xor r8, r11
	ld.w 0x000001E8[r3], r8
	rotl 0x00000007, r8, r8
	xor r8, r11
	ld.w 0x00000204[r3], r8
	xor r8, r11
	ld.w 0x000001EC[r3], r8
	st.w r8, 0x000001CC[r3]
	st.w r11, 0x0000021C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	ld.w 0x000001E0[r3], r8
	ld.w 0x000001FC[r3], r9
	xor r8, r9
	ld.w 0x00000214[r3], r10
	rotl 0x0000000F, r10, r11
	xor r9, r11
	mov r11, r12
	shl 0x0000000F, r12
	mov r10, r13
	shl 0x0000000F, r13
	xor r9, r13
	shr 0x00000011, r13
	or r13, r12
	xor r11, r12
	shr 0x00000011, r10
	xor r10, r9
	shl 0x00000017, r9
	shr 0x00000009, r11
	or r11, r9
	xor r9, r12
	ld.w 0x000001EC[r3], r9
	rotl 0x00000007, r9, r9
	xor r9, r12
	ld.w 0x00000208[r3], r9
	xor r9, r12
	ld.w 0x000001F0[r3], r9
	st.w r9, 0x000001D0[r3]
	st.w r12, 0x00000220[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	ld.w 0x000001E4[r3], r9
	ld.w 0x00000200[r3], r10
	xor r9, r10
	ld.w 0x00000218[r3], r11
	rotl 0x0000000F, r11, r12
	xor r10, r12
	mov r12, r13
	shl 0x0000000F, r13
	mov r11, r14
	shl 0x0000000F, r14
	xor r10, r14
	shr 0x00000011, r14
	or r14, r13
	xor r12, r13
	shr 0x00000011, r11
	xor r11, r10
	shl 0x00000017, r10
	shr 0x00000009, r12
	or r12, r10
	xor r10, r13
	ld.w 0x000001F0[r3], r10
	rotl 0x00000007, r10, r10
	xor r10, r13
	ld.w 0x0000020C[r3], r10
	xor r10, r13
	ld.w 0x000001F4[r3], r10
	st.w r10, 0x000001C8[r3]
	st.w r13, 0x00000224[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	ld.w 0x000001E8[r3], r10
	ld.w 0x00000204[r3], r11
	xor r10, r11
	ld.w 0x0000021C[r3], r12
	rotl 0x0000000F, r12, r13
	xor r11, r13
	mov r13, r14
	shl 0x0000000F, r14
	mov r12, r25
	shl 0x0000000F, r25
	xor r11, r25
	shr 0x00000011, r25
	or r25, r14
	xor r13, r14
	shr 0x00000011, r12
	xor r12, r11
	shl 0x00000017, r11
	shr 0x00000009, r13
	or r13, r11
	xor r11, r14
	ld.w 0x000001F4[r3], r11
	rotl 0x00000007, r11, r11
	xor r11, r14
	ld.w 0x00000210[r3], r11
	xor r11, r14
	ld.w 0x000001F8[r3], r11
	st.w r11, 0x000001C0[r3]
	st.w r14, 0x00000228[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	ld.w 0x000001EC[r3], r11
	ld.w 0x00000208[r3], r12
	xor r11, r12
	ld.w 0x00000220[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000001F8[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000214[r3], r12
	xor r12, r25
	ld.w 0x000001FC[r3], r12
	st.w r12, 0x000001B8[r3]
	st.w r25, 0x0000022C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	ld.w 0x000001F0[r3], r12
	st.w r12, 0x00000038[r3]
	ld.w 0x0000020C[r3], r12
	ld.w 0x00000038[r3], r13
	xor r13, r12
	ld.w 0x00000224[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000001FC[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000218[r3], r12
	xor r12, r25
	ld.w 0x00000200[r3], r12
	st.w r12, 0x000001B0[r3]
	st.w r25, 0x00000230[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	ld.w 0x000001F4[r3], r12
	st.w r12, 0x0000003C[r3]
	ld.w 0x00000210[r3], r12
	ld.w 0x0000003C[r3], r13
	xor r13, r12
	ld.w 0x00000228[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000200[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000021C[r3], r12
	xor r12, r25
	ld.w 0x00000204[r3], r12
	st.w r12, 0x000001A8[r3]
	st.w r25, 0x00000234[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	ld.w 0x000001F8[r3], r12
	st.w r12, 0x00000040[r3]
	ld.w 0x00000214[r3], r12
	ld.w 0x00000040[r3], r13
	xor r13, r12
	ld.w 0x0000022C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000204[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000220[r3], r12
	xor r12, r25
	ld.w 0x00000208[r3], r12
	st.w r12, 0x000001A0[r3]
	st.w r25, 0x00000238[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	ld.w 0x000001FC[r3], r12
	st.w r12, 0x00000044[r3]
	ld.w 0x00000218[r3], r12
	ld.w 0x00000044[r3], r13
	xor r13, r12
	ld.w 0x00000230[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000208[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000224[r3], r12
	xor r12, r25
	ld.w 0x0000020C[r3], r12
	st.w r12, 0x00000198[r3]
	st.w r25, 0x0000023C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	ld.w 0x00000200[r3], r12
	st.w r12, 0x00000194[r3]
	ld.w 0x0000021C[r3], r12
	ld.w 0x00000194[r3], r13
	xor r13, r12
	ld.w 0x00000234[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000020C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000228[r3], r12
	xor r12, r25
	ld.w 0x00000210[r3], r12
	st.w r12, 0x00000190[r3]
	st.w r25, 0x00000240[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	ld.w 0x00000204[r3], r12
	st.w r12, 0x0000018C[r3]
	ld.w 0x00000220[r3], r12
	ld.w 0x0000018C[r3], r13
	xor r13, r12
	ld.w 0x00000238[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000210[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000022C[r3], r12
	xor r12, r25
	ld.w 0x00000214[r3], r12
	st.w r12, 0x00000188[r3]
	st.w r25, 0x00000244[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	ld.w 0x00000208[r3], r12
	st.w r12, 0x00000184[r3]
	ld.w 0x00000224[r3], r12
	ld.w 0x00000184[r3], r13
	xor r13, r12
	ld.w 0x0000023C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000214[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000230[r3], r12
	xor r12, r25
	ld.w 0x00000218[r3], r12
	st.w r12, 0x00000180[r3]
	st.w r25, 0x00000248[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	ld.w 0x0000020C[r3], r12
	st.w r12, 0x0000017C[r3]
	ld.w 0x00000228[r3], r12
	ld.w 0x0000017C[r3], r13
	xor r13, r12
	ld.w 0x00000240[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000218[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000234[r3], r12
	xor r12, r25
	ld.w 0x0000021C[r3], r12
	st.w r12, 0x00000178[r3]
	st.w r25, 0x0000024C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	ld.w 0x00000210[r3], r12
	st.w r12, 0x00000174[r3]
	ld.w 0x0000022C[r3], r12
	ld.w 0x00000174[r3], r13
	xor r13, r12
	ld.w 0x00000244[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000021C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000238[r3], r12
	xor r12, r25
	ld.w 0x00000220[r3], r12
	st.w r12, 0x00000170[r3]
	st.w r25, 0x00000250[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	ld.w 0x00000214[r3], r12
	st.w r12, 0x0000016C[r3]
	ld.w 0x00000230[r3], r12
	ld.w 0x0000016C[r3], r13
	xor r13, r12
	ld.w 0x00000248[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000220[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000023C[r3], r12
	xor r12, r25
	ld.w 0x00000224[r3], r12
	st.w r12, 0x00000168[r3]
	st.w r25, 0x00000254[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	ld.w 0x00000218[r3], r12
	st.w r12, 0x00000164[r3]
	ld.w 0x00000234[r3], r12
	ld.w 0x00000164[r3], r13
	xor r13, r12
	ld.w 0x0000024C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000224[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000240[r3], r12
	xor r12, r25
	ld.w 0x00000228[r3], r12
	st.w r12, 0x00000160[r3]
	st.w r25, 0x00000258[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	ld.w 0x0000021C[r3], r12
	st.w r12, 0x0000015C[r3]
	ld.w 0x00000238[r3], r12
	ld.w 0x0000015C[r3], r13
	xor r13, r12
	ld.w 0x00000250[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000228[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000244[r3], r12
	xor r12, r25
	ld.w 0x0000022C[r3], r12
	st.w r12, 0x00000158[r3]
	st.w r25, 0x0000025C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	ld.w 0x00000220[r3], r12
	st.w r12, 0x00000154[r3]
	ld.w 0x0000023C[r3], r12
	ld.w 0x00000154[r3], r13
	xor r13, r12
	ld.w 0x00000254[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000022C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000248[r3], r12
	xor r12, r25
	ld.w 0x00000230[r3], r12
	st.w r12, 0x00000150[r3]
	st.w r25, 0x00000260[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	ld.w 0x00000224[r3], r12
	st.w r12, 0x0000014C[r3]
	ld.w 0x00000240[r3], r12
	ld.w 0x0000014C[r3], r13
	xor r13, r12
	ld.w 0x00000258[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000230[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000024C[r3], r12
	xor r12, r25
	ld.w 0x00000234[r3], r12
	st.w r12, 0x00000148[r3]
	st.w r25, 0x00000264[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	ld.w 0x00000228[r3], r12
	st.w r12, 0x00000144[r3]
	ld.w 0x00000244[r3], r12
	ld.w 0x00000144[r3], r13
	xor r13, r12
	ld.w 0x0000025C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000234[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000250[r3], r12
	xor r12, r25
	ld.w 0x00000238[r3], r12
	st.w r12, 0x00000140[r3]
	st.w r25, 0x00000268[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	ld.w 0x0000022C[r3], r12
	st.w r12, 0x0000013C[r3]
	ld.w 0x00000248[r3], r12
	ld.w 0x0000013C[r3], r13
	xor r13, r12
	ld.w 0x00000260[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000238[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000254[r3], r12
	xor r12, r25
	ld.w 0x0000023C[r3], r12
	st.w r12, 0x00000138[r3]
	st.w r25, 0x0000026C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	ld.w 0x00000230[r3], r12
	st.w r12, 0x00000134[r3]
	ld.w 0x0000024C[r3], r12
	ld.w 0x00000134[r3], r13
	xor r13, r12
	ld.w 0x00000264[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000023C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000258[r3], r12
	xor r12, r25
	ld.w 0x00000240[r3], r12
	st.w r12, 0x00000130[r3]
	st.w r25, 0x00000270[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	ld.w 0x00000234[r3], r12
	st.w r12, 0x0000012C[r3]
	ld.w 0x00000250[r3], r12
	ld.w 0x0000012C[r3], r13
	xor r13, r12
	ld.w 0x00000268[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000240[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000025C[r3], r12
	xor r12, r25
	ld.w 0x00000244[r3], r12
	st.w r12, 0x00000128[r3]
	st.w r25, 0x00000274[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	ld.w 0x00000238[r3], r12
	st.w r12, 0x00000124[r3]
	ld.w 0x00000254[r3], r12
	ld.w 0x00000124[r3], r13
	xor r13, r12
	ld.w 0x0000026C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000244[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000260[r3], r12
	xor r12, r25
	ld.w 0x00000248[r3], r12
	st.w r12, 0x00000120[r3]
	st.w r25, 0x00000278[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	ld.w 0x0000023C[r3], r12
	st.w r12, 0x0000011C[r3]
	ld.w 0x00000258[r3], r12
	ld.w 0x0000011C[r3], r13
	xor r13, r12
	ld.w 0x00000270[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000248[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000264[r3], r12
	xor r12, r25
	ld.w 0x0000024C[r3], r12
	st.w r12, 0x00000118[r3]
	st.w r25, 0x0000027C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	ld.w 0x00000240[r3], r12
	st.w r12, 0x00000114[r3]
	ld.w 0x0000025C[r3], r12
	ld.w 0x00000114[r3], r13
	xor r13, r12
	ld.w 0x00000274[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000024C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000268[r3], r12
	xor r12, r25
	ld.w 0x00000250[r3], r12
	st.w r12, 0x00000110[r3]
	st.w r25, 0x00000280[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	ld.w 0x00000244[r3], r12
	st.w r12, 0x0000010C[r3]
	ld.w 0x00000260[r3], r12
	ld.w 0x0000010C[r3], r13
	xor r13, r12
	ld.w 0x00000278[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000250[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000026C[r3], r12
	xor r12, r25
	ld.w 0x00000254[r3], r12
	st.w r12, 0x00000108[r3]
	st.w r25, 0x00000284[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	ld.w 0x00000248[r3], r12
	st.w r12, 0x00000104[r3]
	ld.w 0x00000264[r3], r12
	ld.w 0x00000104[r3], r13
	xor r13, r12
	ld.w 0x0000027C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000254[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000270[r3], r12
	xor r12, r25
	ld.w 0x00000258[r3], r12
	st.w r12, 0x00000100[r3]
	st.w r25, 0x00000288[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	ld.w 0x0000024C[r3], r12
	st.w r12, 0x000000FC[r3]
	ld.w 0x00000268[r3], r12
	ld.w 0x000000FC[r3], r13
	xor r13, r12
	ld.w 0x00000280[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000258[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000274[r3], r12
	xor r12, r25
	ld.w 0x0000025C[r3], r12
	st.w r12, 0x000000F8[r3]
	st.w r25, 0x0000028C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	ld.w 0x00000250[r3], r12
	st.w r12, 0x000000F4[r3]
	ld.w 0x0000026C[r3], r12
	ld.w 0x000000F4[r3], r13
	xor r13, r12
	ld.w 0x00000284[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000025C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000278[r3], r12
	xor r12, r25
	ld.w 0x00000260[r3], r12
	st.w r12, 0x000000F0[r3]
	st.w r25, 0x00000290[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	ld.w 0x00000254[r3], r12
	st.w r12, 0x000000EC[r3]
	ld.w 0x00000270[r3], r12
	ld.w 0x000000EC[r3], r13
	xor r13, r12
	ld.w 0x00000288[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000260[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000027C[r3], r12
	xor r12, r25
	ld.w 0x00000264[r3], r12
	st.w r12, 0x000000E8[r3]
	st.w r25, 0x00000294[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	ld.w 0x00000258[r3], r12
	st.w r12, 0x000000E4[r3]
	ld.w 0x00000274[r3], r12
	ld.w 0x000000E4[r3], r13
	xor r13, r12
	ld.w 0x0000028C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000264[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000280[r3], r12
	xor r12, r25
	ld.w 0x00000268[r3], r12
	st.w r12, 0x000000E0[r3]
	st.w r25, 0x00000298[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	ld.w 0x0000025C[r3], r12
	st.w r12, 0x000000DC[r3]
	ld.w 0x00000278[r3], r12
	ld.w 0x000000DC[r3], r13
	xor r13, r12
	ld.w 0x00000290[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000268[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000284[r3], r12
	xor r12, r25
	ld.w 0x0000026C[r3], r12
	st.w r12, 0x000000D8[r3]
	st.w r25, 0x0000029C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	ld.w 0x00000260[r3], r12
	st.w r12, 0x000000D4[r3]
	ld.w 0x0000027C[r3], r12
	ld.w 0x000000D4[r3], r13
	xor r13, r12
	ld.w 0x00000294[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000026C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000288[r3], r12
	xor r12, r25
	ld.w 0x00000270[r3], r12
	st.w r12, 0x000000D0[r3]
	st.w r25, 0x000002A0[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	ld.w 0x00000264[r3], r12
	st.w r12, 0x000000CC[r3]
	ld.w 0x00000280[r3], r12
	ld.w 0x000000CC[r3], r13
	xor r13, r12
	ld.w 0x00000298[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000270[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000028C[r3], r12
	xor r12, r25
	ld.w 0x00000274[r3], r12
	st.w r12, 0x000000C8[r3]
	st.w r25, 0x000002A4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	ld.w 0x00000268[r3], r12
	st.w r12, 0x000000C4[r3]
	ld.w 0x00000284[r3], r12
	ld.w 0x000000C4[r3], r13
	xor r13, r12
	ld.w 0x0000029C[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000274[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000290[r3], r12
	xor r12, r25
	ld.w 0x00000278[r3], r12
	st.w r12, 0x000000C0[r3]
	st.w r25, 0x000002A8[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	ld.w 0x0000026C[r3], r12
	st.w r12, 0x000000BC[r3]
	ld.w 0x00000288[r3], r12
	ld.w 0x000000BC[r3], r13
	xor r13, r12
	ld.w 0x000002A0[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000278[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000294[r3], r12
	xor r12, r25
	ld.w 0x0000027C[r3], r12
	st.w r12, 0x000000B8[r3]
	st.w r25, 0x000002AC[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	ld.w 0x00000270[r3], r12
	st.w r12, 0x000000B4[r3]
	ld.w 0x0000028C[r3], r12
	ld.w 0x000000B4[r3], r13
	xor r13, r12
	ld.w 0x000002A4[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000027C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x00000298[r3], r12
	xor r12, r25
	ld.w 0x00000280[r3], r12
	st.w r12, 0x000000B0[r3]
	st.w r25, 0x000002B0[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	ld.w 0x00000274[r3], r12
	st.w r12, 0x000000AC[r3]
	ld.w 0x00000290[r3], r12
	ld.w 0x000000AC[r3], r13
	xor r13, r12
	ld.w 0x000002A8[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000280[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x0000029C[r3], r12
	xor r12, r25
	ld.w 0x00000284[r3], r12
	st.w r12, 0x000000A8[r3]
	st.w r25, 0x000002B4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	ld.w 0x00000278[r3], r12
	st.w r12, 0x000000A4[r3]
	ld.w 0x00000294[r3], r12
	ld.w 0x000000A4[r3], r13
	xor r13, r12
	ld.w 0x000002AC[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000284[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002A0[r3], r12
	xor r12, r25
	ld.w 0x00000288[r3], r12
	st.w r12, 0x000000A0[r3]
	st.w r25, 0x000002B8[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	ld.w 0x0000027C[r3], r12
	st.w r12, 0x0000009C[r3]
	ld.w 0x00000298[r3], r12
	ld.w 0x0000009C[r3], r13
	xor r13, r12
	ld.w 0x000002B0[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000288[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002A4[r3], r12
	xor r12, r25
	ld.w 0x0000028C[r3], r12
	st.w r12, 0x00000098[r3]
	st.w r25, 0x000002BC[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	ld.w 0x00000280[r3], r12
	st.w r12, 0x00000094[r3]
	ld.w 0x0000029C[r3], r12
	ld.w 0x00000094[r3], r13
	xor r13, r12
	ld.w 0x000002B4[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000028C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002A8[r3], r12
	xor r12, r25
	ld.w 0x00000290[r3], r12
	st.w r12, 0x00000090[r3]
	st.w r25, 0x000002C0[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	ld.w 0x00000284[r3], r12
	st.w r12, 0x0000008C[r3]
	ld.w 0x000002A0[r3], r12
	ld.w 0x0000008C[r3], r13
	xor r13, r12
	ld.w 0x000002B8[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000290[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002AC[r3], r12
	xor r12, r25
	ld.w 0x00000294[r3], r12
	st.w r12, 0x00000088[r3]
	st.w r25, 0x000002C4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	ld.w 0x00000288[r3], r12
	st.w r12, 0x00000084[r3]
	ld.w 0x000002A4[r3], r12
	ld.w 0x00000084[r3], r13
	xor r13, r12
	ld.w 0x000002BC[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000294[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002B0[r3], r12
	xor r12, r25
	ld.w 0x00000298[r3], r12
	st.w r12, 0x00000080[r3]
	st.w r25, 0x000002C8[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	ld.w 0x0000028C[r3], r12
	st.w r12, 0x0000007C[r3]
	ld.w 0x000002A8[r3], r12
	ld.w 0x0000007C[r3], r13
	xor r13, r12
	ld.w 0x000002C0[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x00000298[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002B4[r3], r12
	xor r12, r25
	ld.w 0x0000029C[r3], r12
	st.w r12, 0x00000078[r3]
	st.w r25, 0x000002CC[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	ld.w 0x00000290[r3], r12
	st.w r12, 0x00000074[r3]
	ld.w 0x000002AC[r3], r12
	ld.w 0x00000074[r3], r13
	xor r13, r12
	ld.w 0x000002C4[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x0000029C[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002B8[r3], r12
	xor r12, r25
	ld.w 0x000002A0[r3], r12
	st.w r12, 0x00000070[r3]
	st.w r25, 0x000002D0[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	ld.w 0x00000294[r3], r12
	st.w r12, 0x0000006C[r3]
	ld.w 0x000002B0[r3], r12
	ld.w 0x0000006C[r3], r13
	xor r13, r12
	ld.w 0x000002C8[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000002A0[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002BC[r3], r12
	xor r12, r25
	ld.w 0x000002A4[r3], r12
	st.w r12, 0x00000068[r3]
	st.w r25, 0x000002D4[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	ld.w 0x00000298[r3], r12
	st.w r12, 0x00000064[r3]
	ld.w 0x000002B4[r3], r12
	ld.w 0x00000064[r3], r13
	xor r13, r12
	ld.w 0x000002CC[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000002A4[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002C0[r3], r12
	xor r12, r25
	ld.w 0x000002A8[r3], r12
	st.w r12, 0x00000060[r3]
	st.w r25, 0x000002D8[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	ld.w 0x0000029C[r3], r12
	st.w r12, 0x0000005C[r3]
	ld.w 0x000002B8[r3], r12
	ld.w 0x0000005C[r3], r13
	xor r13, r12
	ld.w 0x000002D0[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000002A8[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002C4[r3], r12
	xor r12, r25
	ld.w 0x000002AC[r3], r12
	st.w r12, 0x00000058[r3]
	st.w r25, 0x000002DC[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	ld.w 0x000002A0[r3], r12
	st.w r12, 0x00000054[r3]
	ld.w 0x000002BC[r3], r12
	ld.w 0x00000054[r3], r13
	xor r13, r12
	ld.w 0x000002D4[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000002AC[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002C8[r3], r12
	xor r12, r25
	ld.w 0x000002B0[r3], r12
	st.w r12, 0x00000050[r3]
	st.w r25, 0x000002E0[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	ld.w 0x000002A4[r3], r12
	st.w r12, 0x0000004C[r3]
	ld.w 0x000002C0[r3], r12
	ld.w 0x0000004C[r3], r13
	xor r13, r12
	ld.w 0x000002D8[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r25
	shl 0x0000000F, r25
	mov r13, r26
	shl 0x0000000F, r26
	xor r12, r26
	shr 0x00000011, r26
	or r26, r25
	xor r14, r25
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r25
	ld.w 0x000002B0[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r25
	ld.w 0x000002CC[r3], r12
	xor r12, r25
	ld.w 0x000002B4[r3], r12
	st.w r12, 0x00000048[r3]
	st.w r25, 0x000002E4[r3]
	ld.w 0x000001A4[r3], r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1115
	rotl 0x0000000C, r12, r13
	mov r13, r14
	ld.w 0x0000019C[r3], r25
	add r25, r14
	mov 0x01CC4519, r26
	add r14, r26
	shl 0x00000007, r26
	mov 0x79CC4519, r27
	add r27, r14
	shr 0x00000019, r14
	or r14, r26
	mov r25, r14
	ld.w 0x000001B4[r3], r27
	xor r27, r14
	ld.w 0x000001BC[r3], r28
	xor r28, r14
	ld.w 0x000001D4[r3], r29
	add r29, r14
	add r5, r14
	add r26, r14
	rotl 0x00000009, r14, r29
	rotl 0x00000011, r14, r30
	xor r29, r14
	xor r30, r14
	xor r13, r26
	mov r12, r13
	ld.w 0x000001C4[r3], r29
	xor r29, r13
	xor r7, r13
	add r26, r13
	ld.w 0x000001CC[r3], r26
	xor r26, r5
	add r5, r13
	add r13, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	rotl 0x0000000C, r6, r5
	mov r5, r13
	add r14, r13
	mov 0x01988A32, r26
	add r13, r26
	shl 0x00000007, r26
	mov 0xF3988A32, r30
	add r30, r13
	shr 0x00000019, r13
	or r13, r26
	mov r14, r13
	xor r25, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1115
	rotl 0x00000013, r27, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	xor r27, r13
	add r28, r13
	add r8, r13
	add r26, r13
	rotl 0x00000009, r13, r28
	rotl 0x00000011, r13, r30
	xor r28, r13
	xor r30, r13
	xor r5, r26
	mov r6, r5
	xor r12, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1115
	rotl 0x00000009, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	xor r28, r5
	add r26, r5
	ld.w 0x000001D0[r3], r26
	xor r26, r8
	add r8, r5
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	rotl 0x0000000C, r7, r5
	mov r5, r8
	add r13, r8
	mov 0x01311465, r26
	add r8, r26
	shl 0x00000007, r26
	mov 0xE7311465, r29
	add r29, r8
	shr 0x00000019, r8
	or r8, r26
	mov r13, r8
	xor r14, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	rotl 0x00000013, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	xor r25, r8
	add r27, r8
	add r9, r8
	add r26, r8
	rotl 0x00000009, r8, r27
	rotl 0x00000011, r8, r29
	xor r27, r8
	xor r29, r8
	xor r5, r26
	mov r7, r5
	xor r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1116
	rotl 0x00000009, r12, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	xor r12, r5
	add r26, r5
	ld.w 0x000001C8[r3], r26
	xor r26, r9
	add r9, r5
	add r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	rotl 0x0000000C, r28, r5
	mov r5, r9
	add r8, r9
	mov 0x006228CB, r26
	add r9, r26
	shl 0x00000007, r26
	mov 0xCE6228CB, r27
	add r27, r9
	shr 0x00000019, r9
	or r9, r26
	mov r8, r9
	xor r13, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	rotl 0x00000013, r14, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	xor r14, r9
	add r25, r9
	add r10, r9
	add r26, r9
	rotl 0x00000009, r9, r25
	rotl 0x00000011, r9, r27
	xor r25, r9
	xor r27, r9
	xor r5, r26
	mov r28, r5
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1117
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	xor r6, r5
	add r26, r5
	ld.w 0x000001C0[r3], r25
	xor r25, r10
	add r10, r5
	add r5, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	rotl 0x0000000C, r12, r5
	mov r5, r10
	add r9, r10
	mov 0x00C45197, r25
	add r10, r25
	shl 0x00000007, r25
	mov 0x9CC45197, r26
	add r26, r10
	shr 0x00000019, r10
	or r10, r25
	mov r9, r10
	xor r8, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	rotl 0x00000013, r13, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	xor r13, r10
	add r14, r10
	add r11, r10
	add r25, r10
	rotl 0x00000009, r10, r14
	rotl 0x00000011, r10, r26
	xor r14, r10
	xor r26, r10
	xor r5, r25
	mov r12, r5
	xor r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1118
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	xor r7, r5
	add r25, r5
	ld.w 0x000001B8[r3], r14
	xor r14, r11
	add r11, r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	rotl 0x0000000C, r6, r5
	mov r5, r11
	add r10, r11
	mov 0x0188A32F, r14
	add r11, r14
	shl 0x00000007, r14
	mov 0x3988A32F, r25
	add r25, r11
	shr 0x00000019, r11
	or r11, r14
	mov r10, r11
	xor r9, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	rotl 0x00000013, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	xor r8, r11
	add r13, r11
	ld.w 0x00000038[r3], r13
	add r13, r11
	add r14, r11
	rotl 0x00000009, r11, r13
	rotl 0x00000011, r11, r25
	xor r13, r11
	xor r25, r11
	xor r5, r14
	mov r6, r5
	xor r12, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1119
	rotl 0x00000009, r28, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	xor r13, r5
	add r14, r5
	ld.w 0x000001B0[r3], r14
	ld.w 0x00000038[r3], r25
	xor r14, r25
	add r25, r5
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	rotl 0x0000000C, r7, r5
	mov r5, r14
	add r11, r14
	mov 0x0111465E, r25
	add r14, r25
	shl 0x00000007, r25
	mov 0x7311465E, r26
	add r26, r14
	shr 0x00000019, r14
	or r14, r25
	mov r11, r14
	xor r10, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	rotl 0x00000013, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	xor r9, r14
	add r8, r14
	ld.w 0x0000003C[r3], r8
	add r8, r14
	add r25, r14
	rotl 0x00000009, r14, r8
	rotl 0x00000011, r14, r26
	xor r8, r14
	xor r26, r14
	xor r5, r25
	mov r7, r5
	xor r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1120
	rotl 0x00000009, r12, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	xor r8, r5
	add r25, r5
	ld.w 0x000001A8[r3], r12
	ld.w 0x0000003C[r3], r25
	xor r12, r25
	add r25, r5
	add r5, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	rotl 0x0000000C, r13, r5
	mov r5, r12
	add r14, r12
	mov 0x00228CBC, r25
	add r12, r25
	shl 0x00000007, r25
	mov 0xE6228CBC, r26
	add r26, r12
	shr 0x00000019, r12
	or r12, r25
	mov r14, r12
	xor r11, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	rotl 0x00000013, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	xor r10, r12
	add r9, r12
	ld.w 0x00000040[r3], r9
	add r9, r12
	add r25, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r26
	xor r9, r12
	xor r26, r12
	xor r5, r25
	mov r13, r5
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1121
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	xor r6, r5
	add r25, r5
	ld.w 0x000001A0[r3], r9
	ld.w 0x00000040[r3], r25
	xor r9, r25
	add r25, r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	rotl 0x0000000C, r8, r5
	mov r5, r9
	add r12, r9
	mov 0x00451979, r25
	add r9, r25
	shl 0x00000007, r25
	mov 0xCC451979, r26
	add r26, r9
	shr 0x00000019, r9
	or r9, r25
	mov r12, r9
	xor r14, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	rotl 0x00000013, r11, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	xor r11, r9
	add r10, r9
	ld.w 0x00000044[r3], r10
	add r10, r9
	add r25, r9
	rotl 0x00000009, r9, r10
	rotl 0x00000011, r9, r26
	xor r10, r9
	xor r26, r9
	xor r5, r25
	mov r8, r5
	xor r13, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1122
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	xor r7, r5
	add r25, r5
	ld.w 0x00000198[r3], r10
	ld.w 0x00000044[r3], r25
	xor r10, r25
	add r25, r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	rotl 0x0000000C, r6, r5
	mov r5, r10
	add r9, r10
	mov 0x008A32F3, r25
	add r10, r25
	shl 0x00000007, r25
	mov 0x988A32F3, r26
	add r26, r10
	shr 0x00000019, r10
	or r10, r25
	mov r9, r10
	xor r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	rotl 0x00000013, r14, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	xor r14, r10
	add r11, r10
	ld.w 0x00000194[r3], r11
	add r11, r10
	add r25, r10
	rotl 0x00000009, r10, r11
	rotl 0x00000011, r10, r26
	xor r11, r10
	xor r26, r10
	xor r5, r25
	mov r6, r5
	xor r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1123
	rotl 0x00000009, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	xor r11, r5
	add r25, r5
	ld.w 0x00000194[r3], r13
	ld.w 0x00000190[r3], r25
	xor r25, r13
	add r13, r5
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	rotl 0x0000000C, r7, r5
	mov r5, r13
	add r10, r13
	mov 0x011465E7, r25
	add r13, r25
	shl 0x00000007, r25
	mov 0x311465E7, r26
	add r26, r13
	shr 0x00000019, r13
	or r13, r25
	mov r10, r13
	xor r9, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	xor r12, r13
	add r14, r13
	ld.w 0x0000018C[r3], r14
	add r14, r13
	add r25, r13
	rotl 0x00000009, r13, r14
	rotl 0x00000011, r13, r26
	xor r14, r13
	xor r26, r13
	xor r5, r25
	mov r7, r5
	xor r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1124
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	xor r8, r5
	add r25, r5
	ld.w 0x0000018C[r3], r25
	ld.w 0x00000188[r3], r14
	xor r14, r25
	add r25, r5
	add r5, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	rotl 0x0000000C, r11, r5
	mov r5, r14
	add r13, r14
	mov 0x0028CBCE, r25
	add r14, r25
	shl 0x00000007, r25
	mov 0x6228CBCE, r26
	add r26, r14
	shr 0x00000019, r14
	or r14, r25
	mov r13, r14
	xor r10, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	rotl 0x00000013, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	xor r9, r14
	add r12, r14
	ld.w 0x00000184[r3], r12
	add r12, r14
	add r25, r14
	rotl 0x00000009, r14, r12
	rotl 0x00000011, r14, r26
	xor r12, r14
	xor r26, r14
	xor r5, r25
	mov r11, r5
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1125
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	xor r6, r5
	add r25, r5
	ld.w 0x00000184[r3], r25
	ld.w 0x00000180[r3], r12
	xor r12, r25
	add r25, r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	rotl 0x0000000C, r8, r5
	mov r5, r12
	add r14, r12
	mov 0x0051979C, r25
	add r12, r25
	shl 0x00000007, r25
	mov 0xC451979C, r26
	add r26, r12
	shr 0x00000019, r12
	or r12, r25
	mov r14, r12
	xor r13, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	rotl 0x00000013, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	xor r10, r12
	add r9, r12
	ld.w 0x0000017C[r3], r9
	add r9, r12
	add r25, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r26
	xor r9, r12
	xor r26, r12
	xor r5, r25
	mov r8, r5
	xor r11, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1126
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	xor r7, r5
	add r25, r5
	ld.w 0x0000017C[r3], r25
	ld.w 0x00000178[r3], r9
	xor r9, r25
	add r25, r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	rotl 0x0000000C, r6, r5
	mov r5, r9
	add r12, r9
	mov 0x00A32F39, r25
	add r9, r25
	shl 0x00000007, r25
	mov 0x88A32F39, r26
	add r26, r9
	shr 0x00000019, r9
	or r9, r25
	mov r12, r9
	xor r14, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	rotl 0x00000013, r13, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	xor r13, r9
	add r10, r9
	ld.w 0x00000174[r3], r10
	add r10, r9
	add r25, r9
	rotl 0x00000009, r9, r10
	rotl 0x00000011, r9, r26
	xor r10, r9
	xor r26, r9
	xor r5, r25
	mov r6, r5
	xor r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1127
	rotl 0x00000009, r11, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	xor r10, r5
	add r25, r5
	ld.w 0x00000174[r3], r11
	ld.w 0x00000170[r3], r25
	xor r25, r11
	add r11, r5
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	rotl 0x0000000C, r7, r5
	mov r5, r11
	add r9, r11
	mov 0x01465E73, r25
	add r11, r25
	shl 0x00000007, r25
	mov 0x11465E73, r26
	add r26, r11
	shr 0x00000019, r11
	or r11, r25
	mov r9, r11
	xor r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	rotl 0x00000013, r14, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	xor r14, r11
	add r13, r11
	ld.w 0x0000016C[r3], r13
	add r13, r11
	add r25, r11
	rotl 0x00000009, r11, r13
	rotl 0x00000011, r11, r26
	xor r13, r11
	xor r26, r11
	xor r5, r25
	mov r7, r5
	xor r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1128
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	xor r8, r5
	add r25, r5
	ld.w 0x0000016C[r3], r25
	ld.w 0x00000168[r3], r13
	xor r13, r25
	add r25, r5
	add r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	rotl 0x0000000C, r10, r5
	mov r5, r13
	add r11, r13
	mov 0x008CBCE6, r25
	add r13, r25
	shl 0x00000007, r25
	mov 0x228CBCE6, r26
	add r26, r13
	shr 0x00000019, r13
	or r13, r25
	mov r11, r13
	xor r9, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	xor r12, r13
	add r14, r13
	ld.w 0x00000164[r3], r14
	add r14, r13
	add r25, r13
	rotl 0x00000009, r13, r14
	rotl 0x00000011, r13, r26
	xor r14, r13
	xor r26, r13
	xor r5, r25
	mov r10, r5
	xor r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1129
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	xor r6, r5
	add r25, r5
	ld.w 0x00000164[r3], r14
	ld.w 0x00000160[r3], r25
	xor r25, r14
	add r14, r5
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	rotl 0x0000000C, r8, r5
	mov r5, r14
	add r13, r14
	mov 0x018A7A87, r25
	mov r14, r26
	add r25, r26
	shl 0x00000007, r26
	mov 0x9D8A7A87, r27
	add r27, r14
	shr 0x00000019, r14
	or r14, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	rotl 0x00000013, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	mov r11, r14
	xor r9, r14
	and r13, r14
	xor r9, r14
	add r12, r14
	ld.w 0x0000015C[r3], r12
	add r12, r14
	add r26, r14
	rotl 0x00000009, r14, r12
	rotl 0x00000011, r14, r27
	xor r12, r14
	xor r27, r14
	xor r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1130
	rotl 0x00000009, r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	mov r10, r7
	or r5, r7
	and r8, r7
	mov r10, r12
	and r5, r12
	or r12, r7
	add r26, r7
	ld.w 0x0000015C[r3], r12
	ld.w 0x00000158[r3], r26
	xor r26, r12
	add r12, r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	rotl 0x0000000C, r6, r7
	mov r7, r12
	add r14, r12
	mov 0x0114F50F, r26
	mov r12, r27
	add r26, r27
	shl 0x00000007, r27
	mov 0x3B14F50F, r28
	add r28, r12
	shr 0x00000019, r12
	or r12, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	rotl 0x00000013, r11, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r9, r12
	ld.w 0x00000154[r3], r9
	add r9, r12
	add r27, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r28
	xor r9, r12
	xor r28, r12
	xor r7, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1131
	rotl 0x00000009, r10, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000154[r3], r10
	ld.w 0x00000150[r3], r27
	xor r27, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r12, r10
	mov r10, r27
	mov 0x0029EA1E, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x7629EA1E, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x0000014C[r3], r11
	add r11, r13
	add r27, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r28
	xor r11, r13
	xor r28, r13
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1132
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r27, r9
	ld.w 0x0000014C[r3], r11
	ld.w 0x00000148[r3], r27
	xor r27, r11
	add r11, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r13, r11
	mov r11, r27
	mov 0x0053D43C, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0xEC53D43C, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x00000144[r3], r10
	add r10, r14
	add r27, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r28
	xor r10, r14
	xor r28, r14
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1133
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000144[r3], r10
	ld.w 0x00000140[r3], r27
	xor r27, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r14, r10
	mov r10, r27
	mov 0x00A7A879, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0xD8A7A879, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x0000013C[r3], r11
	add r11, r12
	add r27, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r28
	xor r11, r12
	xor r28, r12
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1134
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r27, r9
	ld.w 0x0000013C[r3], r11
	ld.w 0x00000138[r3], r27
	xor r27, r11
	add r11, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r12, r11
	mov r11, r27
	mov 0x014F50F3, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0xB14F50F3, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x00000134[r3], r10
	add r10, r13
	add r27, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r28
	xor r10, r13
	xor r28, r13
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1135
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000134[r3], r27
	ld.w 0x00000130[r3], r10
	xor r10, r27
	add r27, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r13, r10
	mov r10, r27
	mov 0x009EA1E7, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x629EA1E7, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x0000012C[r3], r11
	add r11, r14
	add r27, r14
	rotl 0x00000009, r14, r11
	rotl 0x00000011, r14, r28
	xor r11, r14
	xor r28, r14
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1136
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r27, r9
	ld.w 0x0000012C[r3], r27
	ld.w 0x00000128[r3], r11
	xor r11, r27
	add r27, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r14, r11
	mov r11, r27
	mov 0x013D43CE, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0xC53D43CE, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x00000124[r3], r10
	add r10, r12
	add r27, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r28
	xor r10, r12
	xor r28, r12
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1137
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000124[r3], r27
	ld.w 0x00000120[r3], r10
	xor r10, r27
	add r27, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r12, r10
	mov r10, r27
	mov 0x007A879D, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x8A7A879D, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x0000011C[r3], r11
	add r11, r13
	add r27, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r28
	xor r11, r13
	xor r28, r13
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1138
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r27, r9
	ld.w 0x0000011C[r3], r27
	ld.w 0x00000118[r3], r11
	xor r11, r27
	add r27, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r13, r11
	mov r11, r27
	mov 0x00F50F3B, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x14F50F3B, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x00000114[r3], r10
	add r10, r14
	add r27, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r28
	xor r10, r14
	xor r28, r14
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1139
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000114[r3], r27
	ld.w 0x00000110[r3], r10
	xor r10, r27
	add r27, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r14, r10
	mov r10, r27
	mov 0x01EA1E76, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x29EA1E76, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x0000010C[r3], r11
	add r11, r12
	add r27, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r28
	xor r11, r12
	xor r28, r12
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1140
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r27, r9
	ld.w 0x0000010C[r3], r27
	ld.w 0x00000108[r3], r11
	xor r11, r27
	add r27, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r12, r11
	mov r11, r27
	mov 0x01D43CEC, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x53D43CEC, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x00000104[r3], r10
	add r10, r13
	add r27, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r28
	xor r10, r13
	xor r28, r13
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1141
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r27, r9
	ld.w 0x00000104[r3], r27
	ld.w 0x00000100[r3], r10
	xor r10, r27
	add r27, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r13, r10
	mov r10, r27
	mov 0x01A879D8, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0xA7A879D8, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x000000FC[r3], r11
	add r11, r14
	add r27, r14
	rotl 0x00000009, r14, r11
	rotl 0x00000011, r14, r28
	xor r11, r14
	xor r28, r14
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1142
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r27, r9
	ld.w 0x000000FC[r3], r11
	ld.w 0x000000F8[r3], r27
	xor r27, r11
	add r11, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r14, r11
	mov r11, r27
	mov 0x0150F3B1, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x4F50F3B1, r28
	add r28, r11
	shr 0x00000019, r11
	or r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x000000F4[r3], r10
	add r10, r12
	add r27, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r28
	xor r10, r12
	xor r28, r12
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1143
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r27, r9
	ld.w 0x000000F4[r3], r27
	ld.w 0x000000F0[r3], r10
	xor r10, r27
	add r27, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r12, r10
	mov r10, r27
	mov 0x00A1E762, r28
	add r28, r27
	shl 0x00000007, r27
	mov 0x9EA1E762, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x000000EC[r3], r11
	add r11, r13
	add r27, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r28
	xor r11, r13
	xor r28, r13
	xor r9, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1144
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r27, r9
	ld.w 0x000000EC[r3], r11
	ld.w 0x000000E8[r3], r27
	xor r27, r11
	add r11, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r13, r11
	mov 0x0143CEC5, r27
	mov r11, r28
	add r27, r28
	shl 0x00000007, r28
	mov 0x3D43CEC5, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x000000E4[r3], r10
	add r10, r14
	add r28, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r29
	xor r10, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1145
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r28, r9
	ld.w 0x000000E4[r3], r28
	ld.w 0x000000E0[r3], r10
	xor r10, r28
	add r28, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r14, r10
	mov 0x00879D8A, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0x7A879D8A, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x000000DC[r3], r11
	add r11, r12
	add r28, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r29
	xor r11, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1146
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r28, r9
	ld.w 0x000000DC[r3], r28
	ld.w 0x000000D8[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r12, r11
	mov 0x010F3B14, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0xF50F3B14, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x000000D4[r3], r10
	add r10, r13
	add r28, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r29
	xor r10, r13
	xor r29, r13
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1147
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r28, r9
	ld.w 0x000000D4[r3], r28
	ld.w 0x000000D0[r3], r10
	xor r10, r28
	add r28, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r13, r10
	mov 0x001E7629, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0xEA1E7629, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x000000CC[r3], r11
	add r11, r14
	add r28, r14
	rotl 0x00000009, r14, r11
	rotl 0x00000011, r14, r29
	xor r11, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1148
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r28, r9
	ld.w 0x000000CC[r3], r28
	ld.w 0x000000C8[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r14, r11
	mov 0x003CEC53, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0xD43CEC53, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x000000C4[r3], r10
	add r10, r12
	add r28, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r29
	xor r10, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1149
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r28, r9
	ld.w 0x000000C4[r3], r28
	ld.w 0x000000C0[r3], r10
	xor r10, r28
	add r28, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r12, r10
	mov 0x0079D8A7, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0xA879D8A7, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x000000BC[r3], r11
	add r11, r13
	add r28, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r29
	xor r11, r13
	xor r29, r13
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1150
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r28, r9
	ld.w 0x000000BC[r3], r28
	ld.w 0x000000B8[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r13, r11
	mov 0x00F3B14F, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0x50F3B14F, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x000000B4[r3], r10
	add r10, r14
	add r28, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r29
	xor r10, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1151
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r28, r9
	ld.w 0x000000B4[r3], r28
	ld.w 0x000000B0[r3], r10
	xor r10, r28
	add r28, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r14, r10
	mov 0x01E7629E, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0xA1E7629E, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x000000AC[r3], r11
	add r11, r12
	add r28, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r29
	xor r11, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1152
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r28, r9
	ld.w 0x000000AC[r3], r28
	ld.w 0x000000A8[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r12, r11
	mov 0x01CEC53D, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0x43CEC53D, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x000000A4[r3], r10
	add r10, r13
	add r28, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r29
	xor r10, r13
	xor r29, r13
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1153
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r28, r9
	ld.w 0x000000A4[r3], r10
	ld.w 0x000000A0[r3], r28
	xor r28, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r13, r10
	mov 0x019D8A7A, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0x879D8A7A, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x0000009C[r3], r11
	add r11, r14
	add r28, r14
	rotl 0x00000009, r14, r11
	rotl 0x00000011, r14, r29
	xor r11, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1154
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r28, r9
	ld.w 0x0000009C[r3], r28
	ld.w 0x00000098[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r14, r11
	mov 0x013B14F5, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0x0F3B14F5, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x00000094[r3], r10
	add r10, r12
	add r28, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r29
	xor r10, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1155
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r28, r9
	ld.w 0x00000094[r3], r10
	ld.w 0x00000090[r3], r28
	xor r28, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r12, r10
	mov 0x007629EA, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0x1E7629EA, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x0000008C[r3], r11
	add r11, r13
	add r28, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r29
	xor r11, r13
	xor r29, r13
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1156
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r28, r9
	ld.w 0x0000008C[r3], r28
	ld.w 0x00000088[r3], r11
	xor r11, r28
	add r28, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r13, r11
	mov 0x00EC53D4, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0x3CEC53D4, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x00000084[r3], r10
	add r10, r14
	add r28, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r29
	xor r10, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1157
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r28, r9
	ld.w 0x00000084[r3], r10
	ld.w 0x00000080[r3], r28
	xor r28, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r14, r10
	mov 0x01D8A7A8, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0x79D8A7A8, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x0000007C[r3], r11
	add r11, r12
	add r28, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r29
	xor r11, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1158
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r28, r9
	ld.w 0x0000007C[r3], r11
	ld.w 0x00000078[r3], r28
	xor r28, r11
	add r11, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r12, r11
	mov 0x01B14F50, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0xF3B14F50, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x00000074[r3], r10
	add r10, r13
	add r28, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r29
	xor r10, r13
	xor r29, r13
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1159
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r28, r9
	ld.w 0x00000074[r3], r10
	ld.w 0x00000070[r3], r28
	xor r28, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r13, r10
	mov 0x01629EA1, r28
	add r10, r28
	shl 0x00000007, r28
	mov 0xE7629EA1, r29
	add r29, r10
	shr 0x00000019, r10
	or r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x0000006C[r3], r11
	add r11, r14
	add r28, r14
	rotl 0x00000009, r14, r11
	rotl 0x00000011, r14, r29
	xor r11, r14
	xor r29, r14
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1160
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	add r28, r9
	ld.w 0x0000006C[r3], r11
	ld.w 0x00000068[r3], r28
	xor r28, r11
	add r11, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r14, r11
	mov 0x00C53D43, r28
	add r11, r28
	shl 0x00000007, r28
	mov 0xCEC53D43, r29
	add r29, r11
	shr 0x00000019, r11
	or r11, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x00000064[r3], r10
	add r10, r12
	add r28, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r29
	xor r10, r12
	xor r29, r12
	xor r9, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1161
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r10
	and r6, r10
	or r10, r9
	add r28, r9
	ld.w 0x00000064[r3], r10
	ld.w 0x00000060[r3], r28
	xor r28, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r12, r10
	add r10, r25
	shl 0x00000007, r25
	mov 0x9D8A7A87, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x0000005C[r3], r11
	add r11, r13
	add r25, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r28
	xor r11, r13
	xor r28, r13
	xor r9, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1162
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	add r25, r9
	ld.w 0x0000005C[r3], r25
	ld.w 0x00000058[r3], r11
	xor r11, r25
	add r25, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r13, r11
	add r11, r26
	shl 0x00000007, r26
	mov 0x3B14F50F, r25
	add r25, r11
	shr 0x00000019, r11
	or r11, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x00000054[r3], r10
	add r10, r14
	add r26, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r25
	xor r10, r14
	xor r25, r14
	xor r9, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1163
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	add r26, r9
	ld.w 0x00000054[r3], r10
	ld.w 0x00000050[r3], r25
	xor r25, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r14, r10
	mov 0x0029EA1E, r25
	add r10, r25
	shl 0x00000007, r25
	st.w r25, 0x00000030[r3]
	mov 0x7629EA1E, r25
	add r25, r10
	shr 0x00000019, r10
	ld.w 0x00000030[r3], r25
	or r10, r25
	st.w r25, 0x00000030[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	ld.w 0x0000004C[r3], r11
	add r11, r12
	add r25, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r25
	xor r11, r12
	xor r25, r12
	rotl 0x00000013, r13, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1166
	mov r14, r13
	xor r11, r13
	and r12, r13
	xor r11, r13
	add r10, r13
	ld.w 0x000002A8[r3], r10
	add r10, r13
	ld.w 0x000002C4[r3], r25
	xor r10, r25
	ld.w 0x000002DC[r3], r26
	rotl 0x0000000F, r26, r28
	xor r25, r28
	mov r28, r29
	shl 0x0000000F, r29
	mov r26, r30
	shl 0x0000000F, r30
	xor r25, r30
	shr 0x00000011, r30
	or r30, r29
	xor r28, r29
	shr 0x00000011, r26
	xor r26, r25
	shl 0x00000017, r25
	shr 0x00000009, r28
	or r28, r25
	xor r25, r29
	ld.w 0x000002B4[r3], r25
	rotl 0x00000007, r25, r25
	xor r25, r29
	ld.w 0x000002D0[r3], r25
	xor r25, r29
	ld.w 0x000002B8[r3], r25
	st.w r29, 0x000002E8[r3]
	ld.w 0x00000030[r3], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	xor r9, r26
	st.w r26, 0x00000030[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1164
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r26
	and r8, r26
	or r26, r9
	ld.w 0x00000030[r3], r26
	add r26, r9
	ld.w 0x0000004C[r3], r26
	ld.w 0x00000048[r3], r28
	xor r28, r26
	add r26, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1166
	rotl 0x0000000C, r7, r9
	mov r9, r26
	add r12, r26
	mov 0x0053D43C, r28
	add r26, r28
	shl 0x00000007, r28
	st.w r28, 0x0000002C[r3]
	mov 0xEC53D43C, r28
	add r28, r26
	shr 0x00000019, r26
	ld.w 0x0000002C[r3], r28
	or r26, r28
	st.w r28, 0x0000002C[r3]
	add r28, r13
	rotl 0x00000009, r13, r26
	rotl 0x00000011, r13, r28
	xor r26, r13
	xor r28, r13
	ld.w 0x0000002C[r3], r26
	xor r9, r26
	st.w r26, 0x0000002C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1165
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1166
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r26
	and r6, r26
	or r26, r9
	ld.w 0x0000002C[r3], r26
	add r26, r9
	xor r25, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1167
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r13, r10
	mov 0x00A7A879, r25
	add r10, r25
	shl 0x00000007, r25
	st.w r25, 0x00000028[r3]
	mov 0xD8A7A879, r25
	add r25, r10
	shr 0x00000019, r10
	ld.w 0x00000028[r3], r25
	or r10, r25
	st.w r25, 0x00000028[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1166
	rotl 0x00000013, r14, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1167
	mov r12, r14
	xor r10, r14
	and r13, r14
	xor r10, r14
	add r11, r14
	ld.w 0x000002AC[r3], r11
	add r11, r14
	add r25, r14
	rotl 0x00000009, r14, r25
	rotl 0x00000011, r14, r26
	xor r25, r14
	xor r26, r14
	ld.w 0x00000028[r3], r25
	xor r9, r25
	st.w r25, 0x00000028[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1166
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1167
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r25
	and r5, r25
	or r25, r9
	ld.w 0x00000028[r3], r25
	add r25, r9
	ld.w 0x000002BC[r3], r25
	xor r25, r11
	add r11, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1168
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r14, r11
	mov 0x014F50F3, r26
	add r11, r26
	shl 0x00000007, r26
	st.w r26, 0x00000024[r3]
	mov 0xB14F50F3, r26
	add r26, r11
	shr 0x00000019, r11
	ld.w 0x00000024[r3], r26
	or r11, r26
	st.w r26, 0x00000024[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1167
	rotl 0x00000013, r12, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1168
	mov r13, r12
	xor r11, r12
	and r14, r12
	xor r11, r12
	add r10, r12
	ld.w 0x000002B0[r3], r10
	add r10, r12
	add r26, r12
	rotl 0x00000009, r12, r26
	rotl 0x00000011, r12, r28
	xor r26, r12
	xor r28, r12
	ld.w 0x00000024[r3], r26
	xor r9, r26
	st.w r26, 0x00000024[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1167
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1168
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r26
	and r7, r26
	or r26, r9
	ld.w 0x00000024[r3], r26
	add r26, r9
	ld.w 0x000002C0[r3], r26
	xor r26, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1169
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r12, r10
	mov 0x009EA1E7, r28
	add r10, r28
	shl 0x00000007, r28
	st.w r28, 0x00000020[r3]
	mov 0x629EA1E7, r28
	add r28, r10
	shr 0x00000019, r10
	ld.w 0x00000020[r3], r28
	or r10, r28
	st.w r28, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1168
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1169
	mov r14, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r11, r13
	ld.w 0x000002B4[r3], r11
	add r11, r13
	add r28, r13
	rotl 0x00000009, r13, r28
	rotl 0x00000011, r13, r30
	xor r28, r13
	xor r30, r13
	ld.w 0x00000020[r3], r28
	xor r9, r28
	st.w r28, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1168
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1169
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r28
	and r8, r28
	or r28, r9
	ld.w 0x00000020[r3], r28
	add r28, r9
	ld.w 0x000002C4[r3], r28
	xor r28, r11
	add r11, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1170
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r13, r11
	mov 0x013D43CE, r30
	add r11, r30
	shl 0x00000007, r30
	st.w r30, 0x0000001C[r3]
	mov 0xC53D43CE, r30
	add r30, r11
	shr 0x00000019, r11
	ld.w 0x0000001C[r3], r30
	or r11, r30
	st.w r30, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1169
	rotl 0x00000013, r14, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1170
	mov r12, r14
	xor r11, r14
	and r13, r14
	xor r11, r14
	add r10, r14
	ld.w 0x000002B8[r3], r10
	add r10, r14
	add r30, r14
	rotl 0x00000009, r14, r30
	rotl 0x00000011, r14, r31
	xor r30, r14
	xor r31, r14
	ld.w 0x0000001C[r3], r30
	xor r9, r30
	st.w r30, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1169
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1170
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r30
	and r6, r30
	or r30, r9
	ld.w 0x0000001C[r3], r30
	add r30, r9
	ld.w 0x000002C8[r3], r30
	xor r30, r10
	add r10, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1171
	rotl 0x0000000C, r8, r9
	mov r9, r10
	add r14, r10
	mov 0x007A879D, r31
	add r10, r31
	shl 0x00000007, r31
	st.w r31, 0x00000018[r3]
	mov 0x8A7A879D, r31
	add r31, r10
	shr 0x00000019, r10
	ld.w 0x00000018[r3], r31
	or r10, r31
	st.w r31, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1170
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1171
	mov r13, r12
	xor r10, r12
	and r14, r12
	xor r10, r12
	add r11, r12
	add r25, r12
	add r31, r12
	rotl 0x00000009, r12, r11
	rotl 0x00000011, r12, r31
	xor r11, r12
	xor r31, r12
	ld.w 0x00000018[r3], r11
	xor r9, r11
	st.w r11, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1170
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1171
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r11
	and r5, r11
	or r11, r9
	ld.w 0x00000018[r3], r11
	add r11, r9
	ld.w 0x000002CC[r3], r11
	xor r11, r25
	add r25, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1172
	rotl 0x0000000C, r6, r9
	mov r9, r25
	add r12, r25
	mov 0x00F50F3B, r31
	add r25, r31
	shl 0x00000007, r31
	st.w r31, 0x00000014[r3]
	mov 0x14F50F3B, r31
	add r31, r25
	shr 0x00000019, r25
	ld.w 0x00000014[r3], r31
	or r25, r31
	st.w r31, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1171
	rotl 0x00000013, r13, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1172
	mov r14, r25
	xor r13, r25
	and r12, r25
	xor r13, r25
	add r10, r25
	add r26, r25
	add r31, r25
	rotl 0x00000009, r25, r10
	rotl 0x00000011, r25, r31
	xor r10, r25
	xor r31, r25
	ld.w 0x00000014[r3], r10
	xor r9, r10
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1171
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1172
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r10
	and r7, r10
	or r10, r9
	ld.w 0x00000014[r3], r10
	add r10, r9
	ld.w 0x000002D0[r3], r10
	xor r10, r26
	add r26, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1173
	rotl 0x0000000C, r5, r9
	mov r9, r26
	add r25, r26
	mov 0x01EA1E76, r31
	add r26, r31
	shl 0x00000007, r31
	st.w r31, 0x00000010[r3]
	mov 0x29EA1E76, r31
	add r31, r26
	shr 0x00000019, r26
	ld.w 0x00000010[r3], r31
	or r26, r31
	st.w r31, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1172
	rotl 0x00000013, r14, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1173
	mov r12, r26
	xor r14, r26
	and r25, r26
	xor r14, r26
	add r13, r26
	add r28, r26
	add r31, r26
	rotl 0x00000009, r26, r13
	rotl 0x00000011, r26, r31
	xor r13, r26
	xor r31, r26
	ld.w 0x00000010[r3], r13
	xor r9, r13
	st.w r13, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1172
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1173
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r13
	and r8, r13
	or r13, r9
	ld.w 0x00000010[r3], r13
	add r13, r9
	ld.w 0x000002D4[r3], r13
	xor r13, r28
	add r28, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1174
	rotl 0x0000000C, r7, r9
	mov r9, r28
	add r26, r28
	mov 0x01D43CEC, r31
	add r28, r31
	shl 0x00000007, r31
	st.w r31, 0x0000000C[r3]
	mov 0x53D43CEC, r31
	add r31, r28
	shr 0x00000019, r28
	ld.w 0x0000000C[r3], r31
	or r28, r31
	st.w r31, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1173
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1174
	mov r25, r28
	xor r12, r28
	and r26, r28
	xor r12, r28
	add r14, r28
	add r30, r28
	add r31, r28
	rotl 0x00000009, r28, r14
	rotl 0x00000011, r28, r31
	xor r14, r28
	xor r31, r28
	ld.w 0x0000000C[r3], r14
	xor r9, r14
	st.w r14, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1173
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1174
	mov r5, r9
	or r6, r9
	and r7, r9
	mov r5, r14
	and r6, r14
	or r14, r9
	ld.w 0x0000000C[r3], r14
	add r14, r9
	ld.w 0x000002D8[r3], r14
	xor r14, r30
	add r30, r9
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1175
	rotl 0x0000000C, r8, r9
	mov r9, r30
	add r28, r30
	mov 0x01A879D8, r31
	add r30, r31
	shl 0x00000007, r31
	st.w r31, 0x00000008[r3]
	mov 0xA7A879D8, r31
	add r31, r30
	shr 0x00000019, r30
	ld.w 0x00000008[r3], r31
	or r30, r31
	st.w r31, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1174
	rotl 0x00000013, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1175
	mov r26, r30
	xor r25, r30
	and r28, r30
	xor r25, r30
	add r12, r30
	add r11, r30
	add r31, r30
	rotl 0x00000009, r30, r12
	rotl 0x00000011, r30, r31
	xor r12, r30
	xor r31, r30
	ld.w 0x00000008[r3], r12
	xor r9, r12
	st.w r12, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1174
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1175
	mov r7, r9
	or r5, r9
	and r8, r9
	mov r7, r12
	and r5, r12
	or r12, r9
	ld.w 0x00000008[r3], r12
	add r12, r9
	ld.w 0x000002DC[r3], r12
	xor r12, r11
	add r11, r9
	add r9, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1176
	rotl 0x0000000C, r6, r9
	mov r9, r11
	add r30, r11
	mov 0x0150F3B1, r12
	add r11, r12
	shl 0x00000007, r12
	st.w r12, 0x00000004[r3]
	mov 0x4F50F3B1, r12
	add r12, r11
	shr 0x00000019, r11
	ld.w 0x00000004[r3], r12
	or r11, r12
	st.w r12, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1175
	rotl 0x00000013, r26, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1176
	mov r28, r12
	xor r11, r12
	and r30, r12
	xor r11, r12
	add r25, r12
	add r10, r12
	ld.w 0x00000004[r3], r25
	add r25, r12
	rotl 0x00000009, r12, r25
	rotl 0x00000011, r12, r26
	xor r25, r12
	xor r26, r12
	ld.w 0x00000004[r3], r25
	xor r9, r25
	st.w r25, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1175
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1176
	mov r8, r9
	or r7, r9
	and r6, r9
	mov r8, r25
	and r7, r25
	or r25, r9
	ld.w 0x00000004[r3], r25
	add r25, r9
	ld.w 0x000002E0[r3], r25
	xor r25, r10
	add r10, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1177
	rotl 0x0000000C, r5, r9
	mov r9, r10
	add r12, r10
	mov 0x00A1E762, r25
	add r10, r25
	shl 0x00000007, r25
	st.w r25, 0x00000000[r3]
	mov 0x9EA1E762, r25
	add r25, r10
	shr 0x00000019, r10
	ld.w 0x00000000[r3], r25
	or r10, r25
	st.w r25, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1176
	rotl 0x00000013, r28, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1177
	mov r30, r25
	xor r10, r25
	and r12, r25
	xor r10, r25
	add r11, r25
	add r13, r25
	ld.w 0x00000000[r3], r11
	add r11, r25
	rotl 0x00000009, r25, r11
	rotl 0x00000011, r25, r26
	xor r11, r25
	xor r26, r25
	ld.w 0x00000000[r3], r11
	xor r9, r11
	st.w r11, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1176
	rotl 0x00000009, r8, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1177
	mov r6, r9
	or r8, r9
	and r5, r9
	mov r6, r11
	and r8, r11
	or r11, r9
	ld.w 0x00000000[r3], r11
	add r11, r9
	ld.w 0x000002E4[r3], r11
	xor r11, r13
	add r13, r9
	add r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1178
	rotl 0x0000000C, r7, r9
	mov r9, r11
	add r25, r11
	add r11, r27
	shl 0x00000007, r27
	mov 0x3D43CEC5, r13
	add r13, r11
	shr 0x00000019, r11
	or r11, r27
	xor r27, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1177
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1178
	mov r5, r11
	or r6, r11
	and r7, r11
	mov r5, r13
	and r6, r13
	or r13, r11
	add r9, r11
	xor r14, r29
	add r29, r11
	add r11, r8
	ld.w 0x00000034[r3], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1180
	ld.w 0x00000000[r9], r11
	xor r8, r11
	st.w r11, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1181
	ld.w 0x00000004[r9], r8
	xor r7, r8
	st.w r8, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1178
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1182
	ld.w 0x00000008[r9], r7
	xor r5, r7
	st.w r7, 0x00000008[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1183
	ld.w 0x0000000C[r9], r5
	xor r6, r5
	st.w r5, 0x0000000C[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1177
	rotl 0x00000013, r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1178
	mov r12, r6
	xor r5, r6
	and r25, r6
	xor r5, r6
	add r10, r6
	add r14, r6
	add r6, r27
	rotl 0x00000009, r27, r6
	rotl 0x00000011, r27, r7
	xor r6, r27
	xor r7, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1184
	ld.w 0x00000010[r9], r6
	xor r27, r6
	st.w r6, 0x00000010[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1185
	ld.w 0x00000014[r9], r6
	xor r25, r6
	st.w r6, 0x00000014[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1178
	rotl 0x00000013, r12, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1186
	ld.w 0x00000018[r9], r7
	xor r6, r7
	st.w r7, 0x00000018[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1187
	ld.w 0x0000001C[r9], r6
	xor r5, r6
	st.w r6, 0x0000001C[r9]
	ld.w 0x000001AC[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1189
	movea 0x00000040, r5, r5
.BB.LABEL.25_5:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	st.w r5, 0x000001AC[r3]
	ld.w 0x000001D8[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1099
	addi 0xFFFFFFFF, r5, r6
	st.w r6, 0x000001D8[r3]
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.25_1
.BB.LABEL.25_6:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1191
	movea 0x00000270, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_sha256_transform.1:
	.stack _sha256_transform.1 = 280
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1202
	prepare 0x00000B86, 0x0000007C
	movea 0xFFFFFF7C, r3, r3
	mov 0x00000000, r5
	mov r5, r8
	br9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1208
	mov r7, r9
	add r8, r9
	ld.b 0x00000000[r9], r10
	shl 0x00000018, r10
	ld.bu 0x00000001[r9], r11
	shl 0x00000010, r11
	or r11, r10
	ld.bu 0x00000002[r9], r11
	shl 0x00000008, r11
	or r11, r10
	ld.bu 0x00000003[r9], r9
	or r9, r10
	mov r5, r9
	shl 0x00000002, r9
	mov r3, r11
	add r9, r11
	st.w r10, 0x00000000[r11]
	add 0x00000004, r8
	add 0x00000001, r5
.BB.LABEL.26_2:	; bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1206
	cmp 0x0000000F, r5
	bnh9 .BB.LABEL.26_1
	br9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1212
	mov r5, r7
	shl 0x00000002, r7
	mov r3, r8
	add r7, r8
	ld.w 0xFFFFFFC4[r8], r7
	rotl 0x00000019, r7, r9
	rotl 0x0000000E, r7, r10
	xor r10, r9
	shr 0x00000003, r7
	xor r7, r9
	ld.w 0xFFFFFFF8[r8], r7
	rotl 0x0000000F, r7, r10
	rotl 0x0000000D, r7, r11
	xor r11, r10
	shr 0x0000000A, r7
	xor r7, r10
	ld.w 0xFFFFFFE4[r8], r7
	add r7, r10
	add r9, r10
	ld.w 0xFFFFFFC0[r8], r7
	add r7, r10
	st.w r10, 0x00000000[r8]
	add 0x00000001, r5
.BB.LABEL.26_4:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1210
	cmp r7, r5
	bl9 .BB.LABEL.26_3
.BB.LABEL.26_5:	; bb152
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1222
	ld.w 0x0000001C[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1221
	ld.w 0x00000018[r6], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1220
	ld.w 0x00000014[r6], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1219
	ld.w 0x00000010[r6], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1218
	ld.w 0x0000000C[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1217
	ld.w 0x00000008[r6], r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1216
	ld.w 0x00000004[r6], r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1215
	ld.w 0x00000000[r6], r13
	mov 0x00000000, r14
	br9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; bb177
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1227
	mov r11, r13
	xor r10, r13
	and r12, r13
	mov r11, r26
	and r10, r26
	xor r26, r13
	rotl 0x0000001E, r12, r26
	rotl 0x00000013, r12, r27
	xor r27, r26
	rotl 0x0000000A, r12, r27
	xor r27, r26
	add r13, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1226
	not r8, r13
	and r5, r13
	rotl 0x0000001A, r8, r27
	rotl 0x00000015, r8, r28
	rotl 0x00000007, r8, r29
	mov r8, r30
	and r7, r30
	xor r13, r30
	xor r28, r27
	xor r29, r27
	add r27, r25
	add r30, r25
	mov r14, r13
	shl 0x00000002, r13
	mov r3, r27
	add r13, r27
	mov #_SHA256_K.5, r28
	add r28, r13
	ld.w 0x00000000[r13], r13
	add r13, r25
	ld.w 0x00000000[r27], r13
	add r13, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1231
	add r25, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1235
	add r26, r25
	add 0x00000001, r14
	mov r25, r13
.BB.LABEL.26_7:	; bb257
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r25
	mov r7, r5
	mov r8, r7
	mov r9, r8
	mov r10, r9
	mov r11, r10
	mov r12, r11
	mov r13, r12
	movea 0x00000040, r0, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1224
	cmp r13, r14
	bl9 .BB.LABEL.26_6
.BB.LABEL.26_8:	; bb262
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1238
	ld.w 0x00000000[r6], r13
	add r12, r13
	st.w r13, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1239
	ld.w 0x00000004[r6], r12
	add r11, r12
	st.w r12, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1240
	ld.w 0x00000008[r6], r11
	add r10, r11
	st.w r11, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1241
	ld.w 0x0000000C[r6], r10
	add r9, r10
	st.w r10, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1242
	ld.w 0x00000010[r6], r9
	add r8, r9
	st.w r9, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1243
	ld.w 0x00000014[r6], r8
	add r7, r8
	st.w r8, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1244
	ld.w 0x00000018[r6], r7
	add r5, r7
	st.w r7, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1245
	ld.w 0x0000001C[r6], r5
	add r25, r5
	st.w r5, 0x0000001C[r6]
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000B86, [r31]
_sm2_z256_prime:
	.stack _sm2_z256_prime = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1259
	mov #_SM2_Z256_P, r10
	jmp [r31]
_sm2_z256_cmp.1:
	.stack _sm2_z256_cmp.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1270
	ld.w 0x0000001C[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1273
	ld.w 0x00000018[r7], r8
	ld.w 0x0000001C[r6], r9
	ld.w 0x00000018[r6], r10
	cmp r10, r8
	sbf 0x00000001, r9, r5, r0
	bnc9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; entry.bb99_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.28_11
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1275
	cmp r8, r10
	sbf 0x00000001, r5, r9, r0
	bnc9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; if_else_bb.bb99_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	br9 .BB.LABEL.28_11
.BB.LABEL.28_4:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1278
	ld.w 0x00000014[r7], r5
	ld.w 0x00000010[r7], r8
	ld.w 0x00000014[r6], r9
	ld.w 0x00000010[r6], r10
	cmp r10, r8
	sbf 0x00000001, r9, r5, r0
	bl9 .BB.LABEL.28_1
.BB.LABEL.28_5:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1280
	cmp r8, r10
	sbf 0x00000001, r5, r9, r0
	bl9 .BB.LABEL.28_3
.BB.LABEL.28_6:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1283
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r8
	ld.w 0x0000000C[r6], r9
	ld.w 0x00000008[r6], r10
	cmp r10, r8
	sbf 0x00000001, r9, r5, r0
	bl9 .BB.LABEL.28_1
.BB.LABEL.28_7:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1285
	cmp r8, r10
	sbf 0x00000001, r5, r9, r0
	bl9 .BB.LABEL.28_3
.BB.LABEL.28_8:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1288
	ld.w 0x00000004[r7], r5
	ld.w 0x00000000[r7], r7
	ld.w 0x00000004[r6], r8
	ld.w 0x00000000[r6], r6
	cmp r6, r7
	sbf 0x00000001, r8, r5, r0
	bl9 .BB.LABEL.28_1
.BB.LABEL.28_9:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1290
	cmp r7, r6
	sbf 0x00000001, r5, r8, r0
	bl9 .BB.LABEL.28_3
.BB.LABEL.28_10:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
.BB.LABEL.28_11:	; bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1293
	jmp [r31]
_sm2_z256_from_bytes.1:
	.stack _sm2_z256_from_bytes.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1304
	ld.b 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1306
	shl 0x00000018, r5
	ld.bu 0x00000001[r7], r8
	shl 0x00000010, r8
	or r8, r5
	ld.bu 0x00000002[r7], r8
	shl 0x00000008, r8
	or r8, r5
	ld.bu 0x00000003[r7], r8
	or r8, r5
	ld.bu 0x00000005[r7], r8
	ld.bu 0x00000004[r7], r9
	ld.bu 0x00000006[r7], r10
	ld.bu 0x00000007[r7], r11
	st.w r5, 0x0000001C[r6]
	shl 0x00000018, r9
	shl 0x00000010, r8
	or r8, r9
	shl 0x00000008, r10
	or r10, r9
	or r11, r9
	st.w r9, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1307
	ld.b 0x00000008[r7], r5
	shl 0x00000018, r5
	ld.bu 0x00000009[r7], r8
	shl 0x00000010, r8
	or r8, r5
	ld.bu 0x0000000A[r7], r8
	shl 0x00000008, r8
	or r8, r5
	ld.bu 0x0000000B[r7], r8
	or r8, r5
	ld.bu 0x0000000D[r7], r8
	ld.bu 0x0000000C[r7], r9
	ld.bu 0x0000000E[r7], r10
	ld.bu 0x0000000F[r7], r11
	st.w r5, 0x00000014[r6]
	shl 0x00000018, r9
	shl 0x00000010, r8
	or r8, r9
	shl 0x00000008, r10
	or r10, r9
	or r11, r9
	st.w r9, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1308
	ld.b 0x00000010[r7], r5
	shl 0x00000018, r5
	ld.bu 0x00000011[r7], r8
	shl 0x00000010, r8
	or r8, r5
	ld.bu 0x00000012[r7], r8
	shl 0x00000008, r8
	or r8, r5
	ld.bu 0x00000013[r7], r8
	or r8, r5
	ld.bu 0x00000015[r7], r8
	ld.bu 0x00000014[r7], r9
	ld.bu 0x00000016[r7], r10
	ld.bu 0x00000017[r7], r11
	st.w r5, 0x0000000C[r6]
	shl 0x00000018, r9
	shl 0x00000010, r8
	or r8, r9
	shl 0x00000008, r10
	or r10, r9
	or r11, r9
	st.w r9, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1309
	ld.b 0x00000018[r7], r5
	shl 0x00000018, r5
	ld.bu 0x00000019[r7], r8
	shl 0x00000010, r8
	or r8, r5
	ld.bu 0x0000001A[r7], r8
	shl 0x00000008, r8
	or r8, r5
	ld.bu 0x0000001B[r7], r8
	or r8, r5
	ld.bu 0x0000001D[r7], r8
	ld.bu 0x0000001C[r7], r9
	ld.bu 0x0000001E[r7], r10
	ld.bu 0x0000001F[r7], r7
	st.w r5, 0x00000004[r6]
	shl 0x00000018, r9
	shl 0x00000010, r8
	or r8, r9
	shl 0x00000008, r10
	or r10, r9
	or r7, r9
	st.w r9, 0x00000000[r6]
	jmp [r31]
_is_zero.1:
	.stack _is_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1320
	mov 0x00000000, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1322
	subr r11, r6
	sbf 0x00000001, r7, r11, r5
	or r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1324
	shr 0x0000001F, r7
	xori 0x00000001, r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1326
	jmp [r31]
_sm2_z256_is_zero.1:
	.stack _sm2_z256_is_zero.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1336
	prepare 0x00000B87, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1339
	ld.w 0x00000004[r25], r7
	ld.w 0x00000000[r25], r6
	jarl _is_zero.1, r31
	mov r10, r26
	mov r11, r27
	ld.w 0x0000000C[r25], r7
	ld.w 0x00000008[r25], r6
	jarl _is_zero.1, r31
	mov r10, r28
	mov r11, r5
	st.w r5, 0x00000000[r3]
	ld.w 0x00000014[r25], r7
	ld.w 0x00000010[r25], r6
	jarl _is_zero.1, r31
	mov r10, r29
	mov r11, r30
	ld.w 0x0000001C[r25], r7
	ld.w 0x00000018[r25], r6
	jarl _is_zero.1, r31
	and r28, r26
	and r29, r26
	and r26, r10
	ld.w 0x00000000[r3], r5
	and r5, r27
	and r30, r27
	and r27, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1343
	dispose 0x00000004, 0x00000B87, [r31]
_sm2_z256_copy.1:
	.stack _sm2_z256_copy.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1354
	ld.w 0x0000001C[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1356
	ld.w 0x00000018[r7], r8
	st.w r5, 0x0000001C[r6]
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1357
	ld.w 0x00000014[r7], r5
	ld.w 0x00000010[r7], r8
	st.w r5, 0x00000014[r6]
	st.w r8, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1358
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r8
	st.w r5, 0x0000000C[r6]
	st.w r8, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1359
	ld.w 0x00000004[r7], r5
	ld.w 0x00000000[r7], r7
	st.w r5, 0x00000004[r6]
	st.w r7, 0x00000000[r6]
	jmp [r31]
_sm2_z256_set_zero.1:
	.stack _sm2_z256_set_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1370
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1372
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1373
	st.w r0, 0x0000000C[r6]
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1374
	st.w r0, 0x00000014[r6]
	st.w r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1375
	st.w r0, 0x0000001C[r6]
	st.w r0, 0x00000018[r6]
	jmp [r31]
_sm2_z256_point_set_infinity.1:
	.stack _sm2_z256_point_set_infinity.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1386
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1388
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r26
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r26], r7
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1389
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r26], r7
	movea 0x00000020, r25, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1390
	movea 0x00000040, r25, r6
	jarl _sm2_z256_set_zero.1, r31
	dispose 0x00000000, 0x00000301, [r31]
_sm2_z256_mul.1:
	.stack _sm2_z256_mul.1 = 260
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1403
	prepare 0x00000200, 0x0000007C
	movea 0xFFFFFF7C, r3, r3
	movea 0x00000080, r0, r5
	mov 0x00000000, r9
	mov r3, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1407
	add r10, r5
	br9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; entry
	st.b r9, 0x00000000[r10]
	add 0x00000001, r10
.BB.LABEL.35_2:	; entry
	cmp r10, r5
	bnz9 .BB.LABEL.35_1
.BB.LABEL.35_3:	; entry
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	br9 .BB.LABEL.35_5
.BB.LABEL.35_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1414
	mov r9, r5
	shl 0x00000004, r5
	movea 0x000000C0, r3, r10
	mov r10, r11
	add r5, r11
	mov r9, r12
	shl 0x00000003, r12
	mov r7, r13
	add r12, r13
	ld.w 0x00000000[r13], r14
	st.w r14, 0x00000000[r11]
	st.w r0, 0x00000004[r11]
	movea 0x00000080, r3, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1415
	mov r11, r14
	add r5, r14
	add r8, r12
	ld.w 0x00000000[r12], r25
	st.w r25, 0x00000000[r14]
	st.w r0, 0x00000004[r14]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1416
	ori 0x00000008, r5, r5
	add r5, r10
	ld.w 0x00000004[r13], r13
	st.w r13, 0x00000000[r10]
	st.w r0, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1417
	add r5, r11
	ld.w 0x00000004[r12], r5
	st.w r5, 0x00000000[r11]
	st.w r0, 0x00000004[r11]
	add 0x00000001, r9
.BB.LABEL.35_5:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1412
	cmp 0x00000004, r9
	blt9 .BB.LABEL.35_4
.BB.LABEL.35_6:	; bb51.bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.35_10
.BB.LABEL.35_7:	; bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1427
	mov r7, r10
	shl 0x00000003, r10
	movea 0x00000080, r3, r11
	add r10, r11
	ld.w 0x00000000[r11], r10
	mov r5, r12
	shl 0x00000003, r12
	movea 0x000000C0, r3, r13
	add r12, r13
	ld.w 0x00000004[r13], r12
	mul r10, r12, r0
	ld.w 0x00000000[r13], r13
	ld.w 0x00000004[r11], r11
	mul r13, r11, r0
	add r11, r12
	mulu r10, r13, r10
	add r10, r12
	mov r5, r10
	add r7, r10
	shl 0x00000003, r10
	mov r3, r11
	add r10, r11
	ld.w 0x00000004[r11], r10
	ld.w 0x00000000[r11], r14
	add r13, r14
	adf 0x00000001, r12, r10, r10
	add r8, r14
	adf 0x00000001, r9, r10, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1428
	st.w r14, 0x00000000[r11]
	st.w r0, 0x00000004[r11]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1429
	add 0x00000001, r7
	mov 0x00000000, r9
.BB.LABEL.35_8:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1424
	cmp 0x00000008, r7
	blt9 .BB.LABEL.35_7
.BB.LABEL.35_9:	; bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1431
	mov r5, r7
	shl 0x00000003, r7
	mov r3, r10
	add r10, r7
	st.w r9, 0x00000044[r7]
	st.w r8, 0x00000040[r7]
	add 0x00000001, r5
.BB.LABEL.35_10:	; bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1421
	cmp 0x00000008, r5
	blt9 .BB.LABEL.35_12
.BB.LABEL.35_11:	; bb100.bb125_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.35_14
.BB.LABEL.35_12:	; bb100.bb87_crit_edge
	mov 0x00000000, r8
	mov r8, r9
	mov r8, r7
	br9 .BB.LABEL.35_8
.BB.LABEL.35_13:	; bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1437
	mov r5, r7
	shl 0x00000004, r7
	mov r3, r8
	add r8, r7
	ld.w 0x00000008[r7], r8
	ld.w 0x00000004[r7], r9
	or r9, r8
	mov r5, r9
	shl 0x00000003, r9
	add r6, r9
	ld.w 0x00000000[r7], r7
	st.w r8, 0x00000004[r9]
	st.w r7, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.35_14:	; bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1435
	cmp 0x00000008, r5
	blt9 .BB.LABEL.35_13
.BB.LABEL.35_15:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1439
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000200, [r31]
_sm2_z512_add.1:
	.stack _sm2_z512_add.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1451
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1456
	ld.w 0x00000000[r7], r9
	ld.w 0x00000004[r8], r10
	ld.w 0x00000000[r8], r11
	add r9, r11
	adf 0x00000001, r10, r5, r10
	st.w r10, 0x00000004[r6]
	st.w r11, 0x00000000[r6]
	cmp r9, r11
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1457
	ld.w 0x0000000C[r7], r9
	ld.w 0x00000008[r7], r10
	mov 0x00000000, r11
	add r10, r5
	adf 0x00000001, r11, r9, r12
	ld.w 0x0000000C[r8], r13
	ld.w 0x00000008[r8], r14
	add r5, r14
	adf 0x00000001, r13, r12, r13
	st.w r13, 0x0000000C[r6]
	st.w r14, 0x00000008[r6]
	cmp r5, r14
	sbf 0x00000001, r12, r13, r0
	setf 0x00000001, r13
	cmp r10, r5
	sbf 0x00000001, r9, r12, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1458
	ld.w 0x00000014[r7], r10
	ld.w 0x00000010[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x00000014[r8], r13
	ld.w 0x00000010[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x00000014[r6]
	st.w r14, 0x00000010[r6]
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1459
	ld.w 0x0000001C[r7], r10
	ld.w 0x00000018[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x0000001C[r8], r13
	ld.w 0x00000018[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x0000001C[r6]
	st.w r14, 0x00000018[r6]
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1460
	ld.w 0x00000024[r7], r10
	ld.w 0x00000020[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x00000024[r8], r13
	ld.w 0x00000020[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x00000024[r6]
	st.w r14, 0x00000020[r6]
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1461
	ld.w 0x0000002C[r7], r10
	ld.w 0x00000028[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x0000002C[r8], r13
	ld.w 0x00000028[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x0000002C[r6]
	st.w r14, 0x00000028[r6]
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1462
	ld.w 0x00000034[r7], r10
	ld.w 0x00000030[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x00000034[r8], r13
	ld.w 0x00000030[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x00000034[r6]
	st.w r14, 0x00000030[r6]
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1463
	ld.w 0x0000003C[r7], r10
	ld.w 0x00000038[r7], r7
	add r7, r5
	adf 0x00000001, r9, r10, r9
	ld.w 0x0000003C[r8], r12
	ld.w 0x00000038[r8], r8
	add r5, r8
	adf 0x00000001, r12, r9, r12
	st.w r12, 0x0000003C[r6]
	st.w r8, 0x00000038[r6]
	cmp r5, r8
	sbf 0x00000001, r9, r12, r0
	setf 0x00000001, r6
	cmp r7, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r10
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1466
	jmp [r31]
_sm2_z256_add.1:
	.stack _sm2_z256_add.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1478
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1483
	ld.w 0x00000000[r7], r9
	ld.w 0x00000004[r8], r10
	ld.w 0x00000000[r8], r11
	add r9, r11
	adf 0x00000001, r10, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1485
	st.w r10, 0x00000004[r6]
	st.w r11, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1484
	cmp r9, r11
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1488
	ld.w 0x0000000C[r7], r9
	ld.w 0x00000008[r7], r10
	mov 0x00000000, r11
	add r10, r5
	adf 0x00000001, r11, r9, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1490
	ld.w 0x0000000C[r8], r13
	ld.w 0x00000008[r8], r14
	add r5, r14
	adf 0x00000001, r13, r12, r13
	st.w r13, 0x0000000C[r6]
	st.w r14, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1491
	cmp r5, r14
	sbf 0x00000001, r12, r13, r0
	setf 0x00000001, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1489
	cmp r10, r5
	sbf 0x00000001, r9, r12, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1491
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1494
	ld.w 0x00000014[r7], r10
	ld.w 0x00000010[r7], r12
	add r12, r5
	adf 0x00000001, r9, r10, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1496
	ld.w 0x00000014[r8], r13
	ld.w 0x00000010[r8], r14
	add r5, r14
	adf 0x00000001, r13, r9, r13
	st.w r13, 0x00000014[r6]
	st.w r14, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1497
	cmp r5, r14
	sbf 0x00000001, r9, r13, r0
	setf 0x00000001, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1495
	cmp r12, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1497
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1500
	ld.w 0x0000001C[r7], r10
	ld.w 0x00000018[r7], r7
	add r7, r5
	adf 0x00000001, r9, r10, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1502
	ld.w 0x0000001C[r8], r12
	ld.w 0x00000018[r8], r8
	add r5, r8
	adf 0x00000001, r12, r9, r12
	st.w r12, 0x0000001C[r6]
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1503
	cmp r5, r8
	sbf 0x00000001, r9, r12, r0
	setf 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1501
	cmp r7, r5
	sbf 0x00000001, r10, r9, r0
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1503
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1506
	jmp [r31]
_sm2_z256_sub.1:
	.stack _sm2_z256_sub.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1518
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1523
	ld.w 0x00000000[r7], r9
	ld.w 0x00000004[r8], r10
	ld.w 0x00000000[r8], r11
	subr r9, r11
	sbf 0x00000001, r10, r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1525
	st.w r10, 0x00000004[r6]
	st.w r11, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1524
	cmp r11, r9
	sbf 0x00000001, r10, r5, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1528
	ld.w 0x0000000C[r7], r9
	ld.w 0x00000008[r7], r10
	mov 0x00000000, r11
	subr r10, r5
	sbf 0x00000001, r11, r9, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1530
	ld.w 0x0000000C[r8], r13
	ld.w 0x00000008[r8], r14
	subr r5, r14
	sbf 0x00000001, r13, r12, r13
	st.w r13, 0x0000000C[r6]
	st.w r14, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1531
	cmp r14, r5
	sbf 0x00000001, r13, r12, r0
	setf 0x00000001, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1529
	cmp r5, r10
	sbf 0x00000001, r12, r9, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1531
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1534
	ld.w 0x00000014[r7], r10
	ld.w 0x00000010[r7], r12
	subr r12, r5
	sbf 0x00000001, r9, r10, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1536
	ld.w 0x00000014[r8], r13
	ld.w 0x00000010[r8], r14
	subr r5, r14
	sbf 0x00000001, r13, r9, r13
	st.w r13, 0x00000014[r6]
	st.w r14, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1537
	cmp r14, r5
	sbf 0x00000001, r13, r9, r0
	setf 0x00000001, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1535
	cmp r5, r12
	sbf 0x00000001, r9, r10, r0
	setf 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1537
	add r13, r5
	adf 0x00000001, r11, r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1540
	ld.w 0x0000001C[r7], r10
	ld.w 0x00000018[r7], r7
	subr r7, r5
	sbf 0x00000001, r9, r10, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1542
	ld.w 0x0000001C[r8], r12
	ld.w 0x00000018[r8], r8
	subr r5, r8
	sbf 0x00000001, r12, r9, r12
	st.w r12, 0x0000001C[r6]
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1543
	cmp r8, r5
	sbf 0x00000001, r12, r9, r0
	setf 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1541
	cmp r5, r7
	sbf 0x00000001, r9, r10, r0
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1543
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1546
	jmp [r31]
_sm2_z256_modp_mont_mul.1:
	.stack _sm2_z256_modp_mont_mul.1 = 144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1558
	prepare 0x00000381, 0x0000007C
	add 0xFFFFFFFC, r3
	mov r6, r25
	movea 0x00000040, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1565
	mov r26, r6
	jarl _sm2_z256_mul.1, r31
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1568
	mov #_SM2_Z256_P_PRIME, r8
	mov r27, r6
	mov r26, r7
	jarl _sm2_z256_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1571
	mov #_SM2_Z256_P, r8
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1574
	mov r26, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z512_add.1, r31
	mov r10, r26
	mov r11, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1577
	movea 0x00000060, r3, r7
	mov r25, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1580
	or r27, r26
	mov r25, r6
	cmp 0x00000000, r26
	bz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1582
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r8
	mov r25, r7
	jarl _sm2_z256_add.1, r31
	add 0x00000004, r3
	dispose 0x0000007C, 0x00000381, [r31]
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1584
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.39_4
.BB.LABEL.39_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1586
	mov #_SM2_Z256_P, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.39_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	add 0x00000004, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1588
	dispose 0x0000007C, 0x00000381, [r31]
_sm2_z256_modp_to_mont.1:
	.stack _sm2_z256_modp_to_mont.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1599
	prepare 0x00000001, 0x00000000
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1601
	mov #_SM2_Z256_2e512modp, r8
	mov r7, r6
	mov r5, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_mont_sqr.1:
	.stack _sm2_z256_modp_mont_sqr.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1613
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1615
	mov r7, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_add.1:
	.stack _sm2_z256_modp_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1628
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1632
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1635
	or r11, r10
	mov r25, r6
	cmp 0x00000000, r10
	bz9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1639
	mov #_SM2_Z256_NEG_P, r8
	mov r25, r7
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1640
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.42_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1644
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.42_4
.BB.LABEL.42_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1646
	mov #_SM2_Z256_P, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.42_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1648
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_point_is_on_curve.1:
	.stack _sm2_z256_point_is_on_curve.1 = 116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1658
	prepare 0x00000385, 0x00000060
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1665
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	movea 0x00000040, r25, r26
	mov r26, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	movea 0x00000020, r25, r7
	bnz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1668
	mov r26, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1669
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1670
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1671
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_add.1, r31
	movea 0x00000020, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1672
	mov r26, r6
	mov r25, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1673
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1674
	mov #_SM2_Z256_MODP_MONT_B, r8
	mov r26, r6
	mov r26, r7
	br9 .BB.LABEL.43_3
.BB.LABEL.43_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1679
	mov r27, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000020, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1680
	mov r28, r6
	mov r26, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1681
	mov r26, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1682
	mov r28, r6
	mov r28, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1683
	mov #_SM2_Z256_MODP_MONT_B, r8
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1684
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1685
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1686
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1687
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1688
	mov r26, r6
	mov r25, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1689
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1690
	mov r28, r6
	mov r28, r7
	mov r26, r8
.BB.LABEL.43_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	jarl _sm2_z256_modp_add.1, r31
	movea 0x00000020, r3, r7
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1693
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1698
	dispose 0x00000060, 0x00000385, [r31]
_sm2_z256_point_from_bytes.1:
	.stack _sm2_z256_point_from_bytes.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1709
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1711
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1713
	jarl _sm2_z256_prime, r31
	mov r25, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.44_7
.BB.LABEL.44_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1718
	movea 0x00000020, r25, r27
	movea 0x00000020, r26, r7
	mov r27, r6
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1720
	jarl _sm2_z256_prime, r31
	mov r27, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.44_7
.BB.LABEL.44_2:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1727
	mov r25, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.44_5
.BB.LABEL.44_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r27, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.44_5
.BB.LABEL.44_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1729
	mov r25, r6
	jarl _sm2_z256_point_set_infinity.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1730
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.44_5:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1734
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_modp_to_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1735
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_to_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1736
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	movea 0x00000040, r25, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1739
	mov r25, r6
	jarl _sm2_z256_point_is_on_curve.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.44_7
.BB.LABEL.44_6:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1744
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.44_7:	; bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1745
	dispose 0x00000000, 0x00000381, [r31]
_sm2_z256_point_from_octets.1:
	.stack _sm2_z256_point_from_octets.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1757
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1759
	ld.bu 0x00000000[r7], r5
	cmp 0x00000004, r5
	mov r6, r25
	bnz9 .BB.LABEL.45_4
.BB.LABEL.45_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	addi 0xFFFFFFBF, r8, r0
	bnz9 .BB.LABEL.45_4
.BB.LABEL.45_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1766
	add 0x00000001, r7
	mov r25, r6
	jarl _sm2_z256_point_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1767
	mov r25, r6
	jarl _sm2_z256_point_is_on_curve.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.45_4
.BB.LABEL.45_3:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1776
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.45_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 1777
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_order.1:
	.stack _sm2_z256_order.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2070
	mov #_SM2_Z256_N, r10
	jmp [r31]
_sm2_z256_modn_add.1:
	.stack _sm2_z256_modn_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2082
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2086
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2088
	or r11, r10
	mov r25, r6
	cmp 0x00000000, r10
	bz9 .BB.LABEL.47_2
.BB.LABEL.47_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2091
	mov #_SM2_Z256_NEG_N, r8
	mov r25, r7
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2092
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.47_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2095
	mov #_SM2_Z256_N, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.47_4
.BB.LABEL.47_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2097
	mov #_SM2_Z256_N, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.47_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2099
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_get_booth.1:
	.stack _sm2_z256_get_booth.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2111
	prepare 0x00000B87, 0x00000004
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2113
	shl r7, r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2118
	cmp 0x00000000, r8
	mov r7, r25
	bnz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2121
	ld.w 0x00000000[r6], r25
	mov r25, r26
	add r26, r26
	br9 .BB.LABEL.48_6
.BB.LABEL.48_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2125
	mul r25, r8, r0
	add 0xFFFFFFFF, r8
	movea 0x00000040, r0, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2126
	mov r8, r27
	divh r26, r27, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2130
	mov r27, r5
	shl 0x00000003, r5
	mov r6, r29
	add r5, r29
	ld.w 0x00000004[r29], r7
	ld.w 0x00000000[r29], r6
	mov r28, r8
	jarl32 __COM_shrl_64_32, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2132
	sub r28, r26
	add 0x00000001, r25
	cmp r25, r26
	mov r11, r30
	mov r10, r26
	bge9 .BB.LABEL.48_5
.BB.LABEL.48_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	cmp 0x00000003, r27
	bge9 .BB.LABEL.48_5
.BB.LABEL.48_4:	; if_then_bb61
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2134
	sub r28, r8
	ld.w 0x0000000C[r29], r7
	ld.w 0x00000008[r29], r6
	jarl32 __COM_shll_64_32, r31
	or r11, r30
	or r10, r26
.BB.LABEL.48_5:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2137
	mov r26, r25
	shr 0x00000001, r25
	shl 0x0000001F, r30
	or r30, r25
.BB.LABEL.48_6:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000000[r3], r5
	and r5, r26
	and r5, r25
	mov r26, r10
	sub r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2138
	dispose 0x00000004, 0x00000B87, [r31]
_sm2_z256_point_copy_affine.1:
	.stack _sm2_z256_point_copy_affine.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2149
	prepare 0x00000201, 0x00000000
	mov r6, r25
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2151
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2152
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	movea 0x00000040, r25, r6
	jarl _sm2_z256_copy.1, r31
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_modp_sub.1:
	.stack _sm2_z256_modp_sub.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2155
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2159
	jarl _sm2_z256_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2162
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.50_2
.BB.LABEL.50_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2166
	mov #_SM2_Z256_NEG_P, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.50_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2168
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_modp_dbl.1:
	.stack _sm2_z256_modp_dbl.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2173
	mov r7, r8
	jarl _sm2_z256_modp_add.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_copy_conditional.1:
	.stack _sm2_z256_copy_conditional.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2186
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2189
	mov r5, r10
	sub r8, r10
	sbf 0x00000001, r9, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2194
	ld.w 0x00000004[r7], r11
	and r5, r11
	mov 0xFFFFFFFF, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2191
	add 0xFFFFFFFF, r8
	adf 0x00000001, r12, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2194
	ld.w 0x00000004[r6], r12
	and r9, r12
	xor r12, r11
	ld.w 0x00000000[r6], r12
	ld.w 0x00000000[r7], r13
	st.w r11, 0x00000004[r6]
	and r10, r13
	and r8, r12
	xor r12, r13
	st.w r13, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2195
	ld.w 0x0000000C[r7], r11
	and r5, r11
	ld.w 0x0000000C[r6], r12
	and r9, r12
	xor r12, r11
	ld.w 0x00000008[r6], r12
	ld.w 0x00000008[r7], r13
	st.w r11, 0x0000000C[r6]
	and r10, r13
	and r8, r12
	xor r12, r13
	st.w r13, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2196
	ld.w 0x00000014[r7], r11
	and r5, r11
	ld.w 0x00000014[r6], r12
	and r9, r12
	xor r12, r11
	ld.w 0x00000010[r6], r12
	ld.w 0x00000010[r7], r13
	st.w r11, 0x00000014[r6]
	and r10, r13
	and r8, r12
	xor r12, r13
	st.w r13, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2197
	ld.w 0x0000001C[r7], r11
	and r5, r11
	ld.w 0x0000001C[r6], r5
	and r9, r5
	xor r5, r11
	ld.w 0x00000018[r6], r5
	ld.w 0x00000018[r7], r7
	st.w r11, 0x0000001C[r6]
	and r10, r7
	and r8, r5
	xor r5, r7
	st.w r7, 0x00000018[r6]
	jmp [r31]
_sm2_z256_point_add_affine.1:
	.stack _sm2_z256_point_add_affine.1 = 480
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2210
	prepare 0x00000B87, 0x0000007C
	movea 0xFFFFFEB8, r3, r3
	mov r6, r5
	st.w r5, 0x00000060[r3]
	mov r7, r5
	st.w r5, 0x00000008[r3]
	mov r8, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2234
	ld.w 0x0000000C[r25], r5
	st.w r5, 0x0000004C[r3]
	ld.w 0x00000008[r25], r5
	st.w r5, 0x0000005C[r3]
	ld.w 0x00000004[r25], r26
	ld.w 0x00000000[r25], r27
	ld.w 0x00000014[r25], r5
	st.w r5, 0x00000044[r3]
	ld.w 0x00000010[r25], r5
	st.w r5, 0x00000058[r3]
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2233
	ld.w 0x0000004C[r5], r5
	ld.w 0x00000008[r3], r6
	ld.w 0x00000048[r6], r8
	ld.w 0x00000044[r6], r7
	ld.w 0x00000040[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2234
	ld.w 0x0000003C[r25], r9
	st.w r9, 0x00000054[r3]
	ld.w 0x00000038[r25], r9
	st.w r9, 0x00000050[r3]
	ld.w 0x00000034[r25], r9
	st.w r9, 0x0000003C[r3]
	ld.w 0x00000030[r25], r9
	st.w r9, 0x00000048[r3]
	ld.w 0x0000002C[r25], r9
	st.w r9, 0x00000034[r3]
	ld.w 0x00000028[r25], r9
	st.w r9, 0x00000040[r3]
	ld.w 0x00000024[r25], r28
	ld.w 0x00000020[r25], r9
	st.w r9, 0x00000038[r3]
	ld.w 0x0000001C[r25], r29
	ld.w 0x00000018[r25], r9
	st.w r9, 0x00000030[r3]
	ld.w 0x00000008[r3], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2233
	ld.w 0x0000005C[r9], r9
	ld.w 0x00000008[r3], r10
	ld.w 0x00000058[r10], r10
	ld.w 0x00000008[r3], r11
	ld.w 0x00000054[r11], r11
	ld.w 0x00000008[r3], r12
	ld.w 0x00000050[r12], r12
	or r5, r7
	or r11, r7
	or r9, r7
	or r8, r6
	or r12, r6
	or r10, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2237
	jarl _is_zero.1, r31
	mov r10, r5
	st.w r5, 0x0000002C[r3]
	mov r11, r5
	st.w r5, 0x00000028[r3]
	ld.w 0x0000004C[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2234
	or r5, r26
	ld.w 0x00000044[r3], r5
	or r5, r26
	or r29, r26
	or r28, r26
	ld.w 0x00000034[r3], r5
	or r5, r26
	ld.w 0x0000003C[r3], r5
	or r5, r26
	mov r26, r7
	ld.w 0x00000054[r3], r5
	or r5, r7
	ld.w 0x0000005C[r3], r5
	or r5, r27
	ld.w 0x00000058[r3], r5
	or r5, r27
	ld.w 0x00000030[r3], r5
	or r5, r27
	ld.w 0x00000038[r3], r5
	or r5, r27
	ld.w 0x00000040[r3], r5
	or r5, r27
	ld.w 0x00000048[r3], r5
	or r5, r27
	mov r27, r6
	ld.w 0x00000050[r3], r5
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2238
	jarl _is_zero.1, r31
	mov r10, r5
	st.w r5, 0x00000024[r3]
	mov r11, r5
	st.w r5, 0x00000020[r3]
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2227
	movea 0x00000040, r5, r5
	st.w r5, 0x0000001C[r3]
	movea 0x00000164, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2241
	mov r26, r6
	mov r5, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x000001A4, r3, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2242
	mov r5, r6
	mov r25, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000144, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2243
	mov r27, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	ld.w 0x00000008[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x00000184, r3, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2244
	mov r5, r6
	mov r26, r7
	ld.w 0x0000001C[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000064, r3, r5
	st.w r5, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2245
	mov r5, r6
	mov r27, r7
	ld.w 0x0000001C[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2230
	movea 0x00000020, r25, r5
	st.w r5, 0x00000018[r3]
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2246
	mov r5, r6
	mov r5, r7
	ld.w 0x00000018[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2226
	movea 0x00000020, r5, r5
	st.w r5, 0x00000010[r3]
	movea 0x00000124, r3, r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2247
	mov r5, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	ld.w 0x00000010[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x00000104, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2248
	mov r26, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x000000E4, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2249
	mov r28, r6
	ld.w 0x0000000C[r3], r5
	mov r5, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x000000C4, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2250
	mov r29, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	ld.w 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2251
	mov r5, r6
	ld.w 0x00000008[r3], r5
	mov r5, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2252
	mov r26, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x000000A4, r3, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2253
	mov r30, r6
	mov r28, r7
	mov r26, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2254
	mov r30, r6
	mov r30, r7
	mov r29, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2255
	mov r27, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	mov r30, r8
	jarl _sm2_z256_modp_sub.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2256
	mov r5, r6
	ld.w 0x00000010[r3], r5
	mov r5, r7
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2257
	mov r27, r6
	mov r27, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000084, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2258
	mov r26, r6
	mov r27, r7
	ld.w 0x00000000[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2261
	mov r30, r6
	mov r25, r7
	ld.w 0x0000002C[r3], r5
	mov r5, r8
	ld.w 0x00000028[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2262
	mov r30, r6
	ld.w 0x00000008[r3], r5
	mov r5, r7
	ld.w 0x00000024[r3], r5
	mov r5, r8
	ld.w 0x00000020[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2263
	mov r26, r6
	ld.w 0x00000018[r3], r5
	mov r5, r7
	ld.w 0x0000002C[r3], r5
	mov r5, r8
	ld.w 0x00000028[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2264
	mov r26, r6
	ld.w 0x00000010[r3], r5
	mov r5, r7
	ld.w 0x00000024[r3], r5
	mov r5, r8
	ld.w 0x00000020[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2265
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	ld.w 0x00000014[r3], r5
	mov r5, r6
	ld.w 0x0000002C[r3], r5
	mov r5, r8
	ld.w 0x00000028[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	ld.w 0x00000014[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2266
	mov r5, r6
	ld.w 0x0000001C[r3], r5
	mov r5, r7
	ld.w 0x00000024[r3], r5
	mov r5, r8
	ld.w 0x00000020[r3], r5
	mov r5, r9
	jarl _sm2_z256_copy_conditional.1, r31
	movea 0x00000020, r0, r25
	ld.w 0x00000060[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2268
	mov r5, r6
	mov r30, r7
	mov r25, r8
	jarl32 _memcpy, r31
	ld.w 0x00000060[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2269
	movea 0x00000020, r5, r6
	mov r26, r7
	mov r25, r8
	jarl32 _memcpy, r31
	ld.w 0x00000060[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2270
	movea 0x00000040, r5, r6
	ld.w 0x00000014[r3], r5
	mov r5, r7
	mov r25, r8
	jarl32 _memcpy, r31
	movea 0x00000148, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_sm2_z256_modp_neg.1:
	.stack _sm2_z256_modp_neg.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2282
	prepare 0x00000001, 0x00000000
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2284
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_sub.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_point_sub_affine.1:
	.stack _sm2_z256_point_sub_affine.1 = 84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2297
	prepare 0x00000385, 0x00000040
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2302
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2303
	movea 0x00000020, r27, r7
	movea 0x00000020, r3, r6
	jarl _sm2_z256_modp_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2305
	mov r25, r6
	mov r26, r7
	mov r28, r8
	jarl _sm2_z256_point_add_affine.1, r31
	dispose 0x00000040, 0x00000385, [r31]
_sm2_z256_point_mul_generator.1:
	.stack _sm2_z256_point_mul_generator.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2317
	prepare 0x00000385, 0x00000000
	movea 0x00000024, r0, r25
	mov 0x00000001, r26
	mov r7, r27
	mov r6, r28
	br9 .BB.LABEL.56_9
.BB.LABEL.56_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2326
	mov r27, r6
	mov r25, r8
	jarl _sm2_z256_get_booth.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2328
	cmp 0x00000000, r26
	bz9 .BB.LABEL.56_4
.BB.LABEL.56_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2330
	cmp 0x00000000, r10
	bz9 .BB.LABEL.56_8
.BB.LABEL.56_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2332
	movhi HIGHW1(#_g_pre_comp.6), r0, r26
	ld.w LOWW(#_g_pre_comp.6)[r26], r26
	mov r25, r5
	shl 0x0000000C, r5
	shl 0x00000006, r10
	add r10, r5
	add r26, r5
	movea 0xFFFFFFC0, r5, r7
	mov r28, r6
	jarl _sm2_z256_point_copy_affine.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.56_8
.BB.LABEL.56_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2338
	cmp 0x00000000, r10
	ble9 .BB.LABEL.56_6
.BB.LABEL.56_5:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2340
	movhi HIGHW1(#_g_pre_comp.6), r0, r5
	ld.w LOWW(#_g_pre_comp.6)[r5], r5
	mov r25, r6
	shl 0x0000000C, r6
	shl 0x00000006, r10
	add r10, r6
	add r5, r6
	movea 0xFFFFFFC0, r6, r8
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_point_add_affine.1, r31
	br9 .BB.LABEL.56_8
.BB.LABEL.56_6:	; if_else_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2342
	cmp 0x00000000, r10
	bp9 .BB.LABEL.56_8
.BB.LABEL.56_7:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2344
	movhi HIGHW1(#_g_pre_comp.6), r0, r5
	ld.w LOWW(#_g_pre_comp.6)[r5], r8
	mov r25, r5
	shl 0x0000000C, r5
	add r5, r8
	not r10, r5
	shl 0x00000006, r5
	add r5, r8
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_point_sub_affine.1, r31
.BB.LABEL.56_8:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r25
.BB.LABEL.56_9:	; bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2324
	cmp 0x00000000, r25
	bp9 .BB.LABEL.56_1
.BB.LABEL.56_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2349
	cmp 0x00000000, r26
	bz9 .BB.LABEL.56_12
.BB.LABEL.56_11:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2351
	mov r28, r6
	jarl _sm2_z256_point_set_infinity.1, r31
.BB.LABEL.56_12:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2353
	dispose 0x00000000, 0x00000385, [r31]
_sm2_z256_equ.1:
	.stack _sm2_z256_equ.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2364
	prepare 0x00000B87, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2369
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r8
	st.w r8, 0x00000000[r3]
	ld.w 0x0000000C[r6], r8
	ld.w 0x00000008[r6], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2368
	ld.w 0x00000004[r7], r10
	ld.w 0x00000000[r7], r11
	ld.w 0x00000004[r6], r12
	ld.w 0x00000000[r6], r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2370
	ld.w 0x00000014[r7], r14
	ld.w 0x00000010[r7], r25
	ld.w 0x00000014[r6], r26
	ld.w 0x00000010[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2371
	ld.w 0x0000001C[r7], r28
	ld.w 0x00000018[r7], r29
	ld.w 0x0000001C[r6], r30
	ld.w 0x00000018[r6], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2368
	xor r10, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2369
	xor r5, r8
	or r8, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2370
	xor r14, r26
	or r26, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2371
	xor r28, r30
	mov r12, r7
	or r30, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2368
	xor r11, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2369
	ld.w 0x00000000[r3], r5
	xor r5, r9
	or r9, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2370
	xor r25, r27
	or r27, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2371
	xor r29, r31
	mov r13, r6
	or r31, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2372
	jarl _is_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2373
	dispose 0x00000004, 0x00000B87, [r31]
_sm2_z256_modp_haf:
	.stack _sm2_z256_modp_haf = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2384
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2389
	ld.w 0x00000000[r7], r5
	andi 0x00000001, r5, r0
	ld.w 0x00000004[r7], r8
	mov r6, r25
	bz9 .BB.LABEL.58_2
.BB.LABEL.58_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2391
	mov #_SM2_Z256_P, r8
	mov r25, r6
	jarl _sm2_z256_add.1, r31
	shl 0x0000001F, r10
	mov 0x00000000, r5
	br9 .BB.LABEL.58_3
.BB.LABEL.58_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2396
	st.w r5, 0x00000000[r25]
	st.w r8, 0x00000004[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2397
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r6
	st.w r5, 0x0000000C[r25]
	st.w r6, 0x00000008[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2398
	ld.w 0x00000014[r7], r5
	ld.w 0x00000010[r7], r6
	st.w r5, 0x00000014[r25]
	st.w r6, 0x00000010[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2399
	ld.w 0x0000001C[r7], r5
	ld.w 0x00000018[r7], r6
	st.w r5, 0x0000001C[r25]
	st.w r6, 0x00000018[r25]
	mov 0x00000000, r10
	mov r10, r5
.BB.LABEL.58_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2403
	ld.w 0x00000004[r25], r6
	mov r6, r7
	shr 0x00000001, r7
	ld.w 0x00000008[r25], r8
	shl 0x0000001F, r8
	or r8, r7
	ld.w 0x00000000[r25], r8
	st.w r7, 0x00000004[r25]
	shr 0x00000001, r8
	shl 0x0000001F, r6
	or r6, r8
	st.w r8, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2404
	ld.w 0x0000000C[r25], r6
	mov r6, r7
	shr 0x00000001, r7
	ld.w 0x00000010[r25], r8
	shl 0x0000001F, r8
	or r8, r7
	ld.w 0x00000008[r25], r8
	st.w r7, 0x0000000C[r25]
	shr 0x00000001, r8
	shl 0x0000001F, r6
	or r6, r8
	st.w r8, 0x00000008[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2405
	ld.w 0x00000014[r25], r6
	mov r6, r7
	shr 0x00000001, r7
	ld.w 0x00000018[r25], r8
	shl 0x0000001F, r8
	or r8, r7
	ld.w 0x00000010[r25], r8
	st.w r7, 0x00000014[r25]
	shr 0x00000001, r8
	shl 0x0000001F, r6
	or r6, r8
	st.w r8, 0x00000010[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2406
	ld.w 0x0000001C[r25], r6
	mov r6, r7
	shr 0x00000001, r7
	or r10, r7
	ld.w 0x00000018[r25], r8
	st.w r7, 0x0000001C[r25]
	shr 0x00000001, r8
	shl 0x0000001F, r6
	or r6, r8
	or r5, r8
	st.w r8, 0x00000018[r25]
	dispose 0x00000000, 0x00000201, [r31]
_sm2_z256_modp_tri:
	.stack _sm2_z256_modp_tri = 48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2418
	prepare 0x00000381, 0x00000020
	mov r6, r25
	mov r7, r26
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2421
	mov r27, r6
	mov r26, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2422
	mov r25, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_add.1, r31
	dispose 0x00000020, 0x00000381, [r31]
_sm2_z256_point_dbl:
	.stack _sm2_z256_point_dbl = 160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2434
	prepare 0x00000B87, 0x0000007C
	add 0xFFFFFFF8, r3
	mov r6, r5
	st.w r5, 0x00000000[r3]
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2437
	movea 0x00000020, r25, r26
	movea 0x00000064, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2448
	mov r27, r6
	mov r26, r7
	jarl _sm2_z256_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2438
	movea 0x00000040, r25, r28
	movea 0x00000024, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2450
	mov r29, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2452
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2441
	movea 0x00000040, r5, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2454
	mov r30, r6
	mov r28, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2456
	mov r30, r6
	mov r30, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x00000044, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2458
	mov r26, r6
	mov r25, r7
	mov r29, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2460
	mov r29, r6
	mov r25, r7
	mov r29, r8
	jarl _sm2_z256_modp_sub.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2440
	movea 0x00000020, r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2462
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2464
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_haf, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2466
	mov r26, r6
	mov r26, r7
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2468
	mov r26, r6
	mov r26, r7
	jarl _sm2_z256_modp_tri, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2470
	mov r27, r6
	mov r27, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000004, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2472
	mov r25, r6
	mov r27, r7
	jarl _sm2_z256_modp_dbl.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2474
	mov r5, r6
	mov r26, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2476
	mov r5, r6
	mov r5, r7
	mov r25, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2478
	mov r27, r6
	mov r27, r7
	ld.w 0x00000000[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2480
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2482
	mov r28, r6
	mov r27, r7
	mov r28, r8
	jarl _sm2_z256_modp_sub.1, r31
	add 0x00000008, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_sm2_z256_point_add.1:
	.stack _sm2_z256_point_add.1 = 544
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2495
	prepare 0x00000B87, 0x0000007C
	movea 0xFFFFFE78, r3, r3
	mov r6, r5
	st.w r5, 0x00000040[r3]
	mov r7, r25
	st.w r25, 0x00000038[r3]
	mov r8, r26
	st.w r26, 0x00000030[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2521
	ld.w 0x0000004C[r25], r5
	ld.w 0x00000048[r25], r8
	ld.w 0x00000044[r25], r7
	ld.w 0x00000040[r25], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2522
	ld.w 0x0000005C[r26], r9
	st.w r9, 0x0000002C[r3]
	ld.w 0x00000058[r26], r9
	st.w r9, 0x0000003C[r3]
	ld.w 0x00000054[r26], r27
	ld.w 0x00000050[r26], r9
	st.w r9, 0x00000034[r3]
	ld.w 0x0000004C[r26], r28
	ld.w 0x00000048[r26], r9
	st.w r9, 0x00000028[r3]
	ld.w 0x00000044[r26], r29
	ld.w 0x00000040[r26], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2521
	ld.w 0x0000005C[r25], r9
	ld.w 0x00000058[r25], r10
	ld.w 0x00000054[r25], r11
	ld.w 0x00000050[r25], r12
	or r5, r7
	or r11, r7
	or r9, r7
	or r8, r6
	or r12, r6
	or r10, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2524
	jarl _is_zero.1, r31
	mov r10, r5
	st.w r5, 0x00000024[r3]
	mov r11, r5
	st.w r5, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2522
	or r28, r29
	or r27, r29
	mov r29, r7
	ld.w 0x0000002C[r3], r5
	or r5, r7
	ld.w 0x00000028[r3], r5
	or r5, r30
	ld.w 0x00000034[r3], r5
	or r5, r30
	mov r30, r6
	ld.w 0x0000003C[r3], r5
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2525
	jarl _is_zero.1, r31
	mov r10, r5
	st.w r5, 0x0000001C[r3]
	mov r11, r5
	st.w r5, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2518
	movea 0x00000040, r26, r27
	st.w r27, 0x00000010[r3]
	movea 0x00000144, r3, r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2528
	mov r5, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2514
	movea 0x00000040, r25, r28
	st.w r28, 0x00000014[r3]
	movea 0x00000164, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2529
	mov r29, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000184, r3, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2532
	mov r30, r6
	ld.w 0x0000000C[r3], r5
	mov r5, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000001C4, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2533
	mov r27, r6
	mov r29, r7
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2513
	movea 0x00000020, r25, r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2534
	mov r30, r6
	mov r30, r7
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2517
	movea 0x00000020, r26, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2535
	mov r27, r6
	mov r27, r7
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000104, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2536
	mov r27, r7
	mov r30, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x000001A4, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2539
	mov r27, r6
	mov r25, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000001E4, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2540
	mov r25, r6
	mov r26, r7
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000124, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2541
	mov r25, r7
	mov r27, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2544
	mov r27, r6
	mov r25, r7
	jarl _sm2_z256_equ.1, r31
	ld.w 0x00000024[r3], r5
	ld.w 0x00000020[r3], r6
	or r6, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.61_6
.BB.LABEL.61_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.61_6
.BB.LABEL.61_2:	; entry
	ld.w 0x0000001C[r3], r5
	ld.w 0x00000018[r3], r6
	or r6, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.61_6
.BB.LABEL.61_3:	; if_then_bb
	movea 0x000001C4, r3, r7
	movea 0x00000184, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2546
	jarl _sm2_z256_equ.1, r31
	or r11, r10
	ld.w 0x00000040[r3], r5
	mov r5, r6
	cmp 0x00000000, r10
	bz9 .BB.LABEL.61_5
.BB.LABEL.61_4:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2549
	ld.w 0x00000038[r3], r5
	mov r5, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2550
	movea 0x00000188, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.61_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2555
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2556
	movea 0x00000188, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.61_6:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000104, r3, r5
	st.w r5, 0x00000000[r3]
	movea 0x000000C4, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2561
	mov r25, r6
	mov r5, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000044, r3, r26
	movea 0x00000124, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2562
	mov r26, r6
	mov r27, r7
	ld.w 0x00000014[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000000E4, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2563
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2564
	mov r26, r6
	mov r26, r7
	ld.w 0x00000010[r3], r5
	mov r5, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000000A4, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2565
	mov r29, r6
	mov r28, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000001E4, r3, r27
	movea 0x000001A4, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2566
	mov r27, r6
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2567
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x00000084, r3, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2568
	mov r30, r6
	mov r25, r7
	mov r28, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2569
	mov r30, r6
	mov r30, r7
	mov r29, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x00000064, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2570
	mov r25, r6
	mov r27, r7
	mov r30, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x000001C4, r3, r27
	movea 0x00000184, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2571
	mov r27, r6
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2572
	mov r25, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2573
	mov r25, r6
	mov r25, r7
	mov r27, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2576
	mov r30, r6
	ld.w 0x00000030[r3], r5
	mov r5, r7
	ld.w 0x00000024[r3], r27
	mov r27, r8
	ld.w 0x00000020[r3], r28
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2577
	mov r25, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	mov r27, r8
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2578
	mov r26, r6
	ld.w 0x00000010[r3], r5
	mov r5, r7
	mov r27, r8
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2580
	mov r30, r6
	ld.w 0x00000038[r3], r5
	mov r5, r7
	ld.w 0x0000001C[r3], r27
	mov r27, r8
	ld.w 0x00000018[r3], r28
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2581
	mov r25, r6
	ld.w 0x00000008[r3], r5
	mov r5, r7
	mov r27, r8
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2582
	mov r26, r6
	ld.w 0x00000014[r3], r5
	mov r5, r7
	mov r27, r8
	mov r28, r9
	jarl _sm2_z256_copy_conditional.1, r31
	movea 0x00000020, r0, r27
	ld.w 0x00000040[r3], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2585
	mov r28, r6
	mov r30, r7
	mov r27, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2586
	movea 0x00000020, r28, r6
	mov r25, r7
	mov r27, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2587
	movea 0x00000040, r28, r6
	mov r26, r7
	mov r27, r8
	jarl32 _memcpy, r31
	movea 0x00000188, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_sm2_z256_point_mul_pre_compute.1:
	.stack _sm2_z256_point_mul_pre_compute.1 = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2599
	prepare 0x00000B87, 0x00000008
	mov r6, r25
	mov r7, r26
	movea 0x00000060, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2601
	mov r26, r6
	mov r25, r7
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2604
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	movea 0x00000040, r25, r6
	jarl _sm2_z256_equ.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	movea 0x00000060, r26, r27
	mov r27, r6
	mov r26, r7
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.62_2
.BB.LABEL.62_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2607
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2608
	mov r27, r7
	movea 0x000000C0, r26, r28
	mov r28, r6
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2609
	movea 0x00000120, r26, r29
	mov r29, r6
	mov r27, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2610
	movea 0x00000180, r26, r27
	mov r27, r6
	mov r29, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2611
	movea 0x000001E0, r26, r30
	mov r30, r6
	mov r28, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2612
	movea 0x00000240, r26, r5
	st.w r5, 0x00000004[r3]
	mov r5, r6
	mov r30, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2613
	movea 0x000002A0, r26, r28
	mov r28, r6
	mov r29, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2614
	movea 0x00000300, r26, r6
	mov r28, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2615
	movea 0x00000360, r26, r29
	mov r29, r6
	mov r27, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2616
	movea 0x000003C0, r26, r6
	mov r29, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2617
	movea 0x00000420, r26, r27
	mov r27, r6
	mov r30, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2618
	movea 0x00000480, r26, r6
	mov r27, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2619
	movea 0x000004E0, r26, r27
	mov r27, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2620
	movea 0x00000540, r26, r6
	mov r27, r7
	mov r25, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2621
	movea 0x000005A0, r26, r6
	mov r28, r7
	jarl _sm2_z256_point_dbl, r31
	dispose 0x00000008, 0x00000B87, [r31]
.BB.LABEL.62_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2626
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2627
	mov r27, r7
	movea 0x00000120, r26, r28
	mov r28, r6
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2628
	movea 0x000002A0, r26, r5
	st.w r5, 0x00000000[r3]
	mov r5, r6
	mov r28, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2629
	movea 0x000005A0, r26, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2630
	movea 0x000000C0, r26, r29
	mov r29, r6
	mov r27, r7
	mov r25, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2631
	movea 0x000001E0, r26, r25
	mov r25, r6
	mov r29, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2632
	movea 0x00000420, r26, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2633
	movea 0x00000180, r26, r30
	mov r30, r6
	mov r29, r7
	mov r27, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2634
	movea 0x00000360, r26, r6
	mov r30, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2635
	movea 0x00000240, r26, r27
	mov r27, r6
	mov r28, r7
	mov r29, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2636
	movea 0x000004E0, r26, r6
	mov r27, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2637
	movea 0x00000300, r26, r6
	mov r28, r7
	mov r30, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2638
	movea 0x000003C0, r26, r6
	mov r25, r7
	mov r30, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2639
	movea 0x00000480, r26, r6
	mov r27, r7
	mov r25, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2640
	movea 0x00000540, r26, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	mov r27, r8
	jarl _sm2_z256_point_add.1, r31
	dispose 0x00000008, 0x00000B87, [r31]
_sm2_z256_point_neg.1:
	.stack _sm2_z256_point_neg.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2653
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2655
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2656
	movea 0x00000020, r26, r7
	movea 0x00000020, r25, r6
	jarl _sm2_z256_modp_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2657
	movea 0x00000040, r26, r7
	movea 0x00000040, r25, r6
	jarl _sm2_z256_copy.1, r31
	dispose 0x00000000, 0x00000301, [r31]
_sm2_z256_point_sub.1:
	.stack _sm2_z256_point_sub.1 = 112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2670
	prepare 0x00000381, 0x00000060
	mov r6, r25
	mov r7, r26
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2673
	mov r27, r6
	mov r8, r7
	jarl _sm2_z256_point_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2674
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_point_add.1, r31
	dispose 0x00000060, 0x00000381, [r31]
_sm2_z256_point_mul.1:
	.stack _sm2_z256_point_mul.1 = 1560
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2677
	prepare 0x00000387, 0x0000007C
	movea 0xFFFFFA7C, r3, r3
	mov r6, r25
	mov r7, r26
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2686
	mov r8, r6
	jarl _sm2_z256_point_mul_pre_compute.1, r31
	movea 0x00000033, r0, r27
	mov 0x00000001, r28
	br9 .BB.LABEL.65_14
.BB.LABEL.65_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2691
	mov r26, r6
	mov r27, r8
	jarl _sm2_z256_get_booth.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2693
	cmp 0x00000000, r28
	mov r10, r29
	bz9 .BB.LABEL.65_7
.BB.LABEL.65_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2696
	cmp 0x00000000, r29
	bz9 .BB.LABEL.65_11
.BB.LABEL.65_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2698
	mul 0x00000060, r29, r0
	mov r3, r28
	add r28, r29
	movea 0xFFFFFFA0, r29, r28
	movea 0x00000060, r0, r29
	add r25, r29
	mov r25, r5
	br9 .BB.LABEL.65_5
.BB.LABEL.65_4:	; if_then_bb29
	ld23.dw 0x00000000[r28], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r28
	add 0x00000008, r5
.BB.LABEL.65_5:	; if_then_bb29
	cmp r5, r29
	bnz9 .BB.LABEL.65_4
.BB.LABEL.65_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r28
	br9 .BB.LABEL.65_11
.BB.LABEL.65_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2705
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2706
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2707
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2708
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2709
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2712
	cmp 0x00000000, r29
	ble9 .BB.LABEL.65_9
.BB.LABEL.65_8:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2714
	mul 0x00000060, r29, r0
	mov r3, r5
	add r5, r29
	movea 0xFFFFFFA0, r29, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_add.1, r31
	br9 .BB.LABEL.65_11
.BB.LABEL.65_9:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2716
	cmp 0x00000000, r29
	bp9 .BB.LABEL.65_11
.BB.LABEL.65_10:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2718
	not r29, r5
	mul 0x00000060, r5, r0
	mov r3, r8
	add r5, r8
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_point_sub.1, r31
.BB.LABEL.65_11:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2721
	andi 0x00000007, r27, r0
	bnz9 .BB.LABEL.65_13
.BB.LABEL.65_12:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2723
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
.BB.LABEL.65_13:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r27
.BB.LABEL.65_14:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2689
	cmp 0x00000000, r27
	bp9 .BB.LABEL.65_1
.BB.LABEL.65_15:	; bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2728
	cmp 0x00000000, r28
	bz9 .BB.LABEL.65_17
.BB.LABEL.65_16:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2730
	mov r25, r6
	jarl32 _memset, r31
.BB.LABEL.65_17:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000584, r3, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2732
	dispose 0x0000007C, 0x00000387, [r31]
_sm2_z256_point_is_at_infinity.1:
	.stack _sm2_z256_point_is_at_infinity.1 = 76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2742
	prepare 0x00000301, 0x00000040
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2744
	movea 0x00000040, r25, r6
	jarl _sm2_z256_is_zero.1, r31
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.66_3
.BB.LABEL.66_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2750
	mov r26, r6
	mov r25, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2751
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2752
	movea 0x00000020, r25, r7
	mov r3, r25
	mov r25, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2754
	mov r26, r6
	mov r25, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.66_3
.BB.LABEL.66_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2760
	dispose 0x00000040, 0x00000301, [r31]
.BB.LABEL.66_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2766
	dispose 0x00000040, 0x00000301, [r31]
_sm2_z256_modp_from_mont.1:
	.stack _sm2_z256_modp_from_mont.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2777
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2779
	mov #_SM2_Z256_ONE, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_mont_inv.1:
	.stack _sm2_z256_modp_mont_inv.1 = 184
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2791
	prepare 0x00000387, 0x0000007C
	movea 0xFFFFFFDC, r3, r3
	mov r6, r25
	mov r7, r26
	movea 0x00000080, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2797
	mov r27, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000060, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2798
	mov r28, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000040, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2799
	mov r27, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2800
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2801
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2802
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2803
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2804
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2805
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2806
	mov r28, r6
	mov r28, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2807
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov 0x00000001, r27
	br9 .BB.LABEL.68_2
.BB.LABEL.68_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2812
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r27
.BB.LABEL.68_2:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2810
	cmp 0x00000008, r27
	blt9 .BB.LABEL.68_1
.BB.LABEL.68_3:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2814
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r27
	br9 .BB.LABEL.68_5
.BB.LABEL.68_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2818
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r27
.BB.LABEL.68_5:	; bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2816
	cmp 0x00000008, r27
	blt9 .BB.LABEL.68_4
.BB.LABEL.68_6:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2820
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r27
	br9 .BB.LABEL.68_8
.BB.LABEL.68_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2824
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r27
.BB.LABEL.68_8:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2822
	cmp 0x00000004, r27
	blt9 .BB.LABEL.68_7
.BB.LABEL.68_9:	; bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r27
	movea 0x00000040, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2826
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2827
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2828
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000060, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2829
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2830
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2831
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2832
	mov r29, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000080, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2833
	mov r28, r6
	mov r29, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2834
	mov r27, r6
	mov r29, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov 0x00000001, r27
	br9 .BB.LABEL.68_11
.BB.LABEL.68_10:	; bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2838
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r27
.BB.LABEL.68_11:	; bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2836
	addi 0xFFFFFFE1, r27, r0
	blt9 .BB.LABEL.68_10
.BB.LABEL.68_12:	; bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2840
	mov r27, r6
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2841
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2842
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000060, r3, r8
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2843
	mov r27, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_14
.BB.LABEL.68_13:	; bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2847
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_14:	; bb123
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2845
	addi 0xFFFFFFDF, r26, r0
	blt9 .BB.LABEL.68_13
.BB.LABEL.68_15:	; bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r26
	movea 0x00000060, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2849
	mov r27, r6
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2850
	mov r26, r6
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_17
.BB.LABEL.68_16:	; bb135
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2854
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_17:	; bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2852
	addi 0xFFFFFFE0, r26, r0
	blt9 .BB.LABEL.68_16
.BB.LABEL.68_18:	; bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r26
	movea 0x00000040, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2856
	mov r26, r6
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2857
	mov r27, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2858
	mov r26, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_20
.BB.LABEL.68_19:	; bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2862
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_20:	; bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2860
	addi 0xFFFFFFE0, r26, r0
	blt9 .BB.LABEL.68_19
.BB.LABEL.68_21:	; bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r26
	movea 0x00000040, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2864
	mov r26, r6
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2865
	mov r27, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2866
	mov r26, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_23
.BB.LABEL.68_22:	; bb175
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2870
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_23:	; bb180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2868
	addi 0xFFFFFFE0, r26, r0
	blt9 .BB.LABEL.68_22
.BB.LABEL.68_24:	; bb185
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r26
	movea 0x00000040, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2872
	mov r26, r6
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2873
	mov r27, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2874
	mov r26, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_26
.BB.LABEL.68_25:	; bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2878
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_26:	; bb200
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2876
	addi 0xFFFFFFE0, r26, r0
	blt9 .BB.LABEL.68_25
.BB.LABEL.68_27:	; bb205
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r26
	movea 0x00000040, r3, r27
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2880
	mov r26, r6
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2881
	mov r27, r6
	mov r26, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2882
	mov r26, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r26
	br9 .BB.LABEL.68_29
.BB.LABEL.68_28:	; bb215
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2886
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r26
.BB.LABEL.68_29:	; bb220
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2884
	addi 0xFFFFFFE0, r26, r0
	blt9 .BB.LABEL.68_28
.BB.LABEL.68_30:	; bb225
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r8
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2888
	mov r25, r6
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000024, r3, r3
	dispose 0x0000007C, 0x00000387, [r31]
_sm2_z256_point_get_xy.1:
	.stack _sm2_z256_point_get_xy.1 = 52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2902
	prepare 0x00000385, 0x00000020
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2905
	jarl _sm2_z256_point_is_at_infinity.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.69_4
.BB.LABEL.69_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2907
	mov r26, r6
	jarl _sm2_z256_set_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2908
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.69_3
.BB.LABEL.69_2:	; if_then_bb.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.69_7
.BB.LABEL.69_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2910
	mov r27, r6
	jarl _sm2_z256_set_zero.1, r31
	mov 0x00000000, r10
	dispose 0x00000020, 0x00000385, [r31]
.BB.LABEL.69_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2916
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r5
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r5], r7
	movea 0x00000040, r25, r28
	mov r28, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.69_10
.BB.LABEL.69_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2919
	mov r26, r6
	mov r25, r7
	jarl _sm2_z256_modp_from_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2920
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.69_8
.BB.LABEL.69_6:	; if_then_bb25.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
.BB.LABEL.69_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2951
	dispose 0x00000020, 0x00000385, [r31]
.BB.LABEL.69_8:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2922
	movea 0x00000020, r25, r7
.BB.LABEL.69_9:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r27, r6
	jarl _sm2_z256_modp_from_mont.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2951
	dispose 0x00000020, 0x00000385, [r31]
.BB.LABEL.69_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2931
	mov r28, r7
	jarl _sm2_z256_modp_mont_inv.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2932
	cmp 0x00000000, r27
	bz9 .BB.LABEL.69_12
.BB.LABEL.69_11:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2935
	movea 0x00000020, r25, r7
	mov r3, r8
	mov r27, r6
	jarl _sm2_z256_modp_mont_mul.1, r31
.BB.LABEL.69_12:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2938
	mov r28, r6
	mov r28, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2940
	mov r26, r6
	mov r25, r7
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2941
	mov r26, r6
	mov r26, r7
	jarl _sm2_z256_modp_from_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2942
	cmp 0x00000000, r27
	bz9 .BB.LABEL.69_6
.BB.LABEL.69_13:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2945
	mov r27, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2946
	mov r27, r7
	br9 .BB.LABEL.69_9
_sm2_do_verify.1:
	.stack _sm2_do_verify.1 = 372
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2963
	prepare 0x00000385, 0x0000007C
	movea 0xFFFFFF1C, r3, r3
	mov r6, r25
	mov r7, r26
	mov r8, r27
	movea 0x00000080, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2974
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2975
	mov r28, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bz17 .BB.LABEL.70_11
.BB.LABEL.70_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2980
	jarl _sm2_z256_order.1, r31
	movea 0x00000080, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.70_11
.BB.LABEL.70_2:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2985
	movea 0x00000020, r27, r7
	movea 0x00000060, r3, r27
	mov r27, r6
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2986
	mov r27, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.70_11
.BB.LABEL.70_3:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2991
	jarl _sm2_z256_order.1, r31
	movea 0x00000060, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.70_11
.BB.LABEL.70_4:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r27
	movea 0x00000060, r3, r8
	movea 0x00000080, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2998
	mov r27, r6
	jarl _sm2_z256_modn_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 2999
	mov r27, r6
	jarl _sm2_z256_is_zero.1, r31
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.70_11
.BB.LABEL.70_5:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3006
	jarl32 _Wdg_59_DriverB_TriggerFunc, r31
	movea 0x00000100, r3, r27
	movea 0x00000060, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3007
	mov r27, r6
	jarl _sm2_z256_point_mul_generator.1, r31
	movea 0x000000A0, r3, r28
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3008
	mov r28, r6
	mov r25, r8
	jarl _sm2_z256_point_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3009
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _sm2_z256_point_add.1, r31
	mov 0x00000000, r8
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3010
	mov r27, r6
	jarl _sm2_z256_point_get_xy.1, r31
	movea 0x00000040, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3013
	mov r25, r6
	mov r26, r7
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3014
	jarl _sm2_z256_order.1, r31
	mov r25, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.70_7
.BB.LABEL.70_6:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3016
	jarl _sm2_z256_order.1, r31
	movea 0x00000040, r3, r6
	mov r6, r7
	mov r10, r8
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.70_7:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3020
	jarl _sm2_z256_order.1, r31
	movea 0x00000020, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.70_9
.BB.LABEL.70_8:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3022
	jarl _sm2_z256_order.1, r31
	movea 0x00000020, r3, r6
	mov r6, r7
	mov r10, r8
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.70_9:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r25
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3024
	mov r25, r6
	mov r25, r7
	jarl _sm2_z256_modn_add.1, r31
	movea 0x00000080, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3027
	mov r25, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.70_11
.BB.LABEL.70_10:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3032
	movea 0x000000E4, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
.BB.LABEL.70_11:	; bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3033
	movea 0x000000E4, r3, r3
	dispose 0x0000007C, 0x00000385, [r31]
_bn_is_zero.1:
	.stack _bn_is_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3044
	br9 .BB.LABEL.71_2
.BB.LABEL.71_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r7, r5
	shl 0x00000002, r5
	add r6, r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.71_4
.BB.LABEL.71_2:	; bb10
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3046
	addi 0xFFFFFFFF, r5, r7
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.71_1
.BB.LABEL.71_3:	; bb10.bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.71_5
.BB.LABEL.71_4:	; bb.bb19_crit_edge
	mov 0x00000000, r10
.BB.LABEL.71_5:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3048
	jmp [r31]
_bn_is_one.1:
	.stack _bn_is_one.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3058
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3060
	cmp 0x00000001, r5
	bz9 .BB.LABEL.72_3
.BB.LABEL.72_1:	; entry.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.72_5
.BB.LABEL.72_2:	; bb8
	mov r7, r5
	shl 0x00000002, r5
	add r6, r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.72_1
.BB.LABEL.72_3:	; bb19
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3061
	addi 0xFFFFFFFF, r5, r7
	cmp 0x00000001, r5
	bh9 .BB.LABEL.72_2
.BB.LABEL.72_4:	; bb19.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
.BB.LABEL.72_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3063
	jmp [r31]
_bn_from_bytes.1:
	.stack _bn_from_bytes.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3073
	br9 .BB.LABEL.73_2
.BB.LABEL.73_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3076
	ld.b 0x00000000[r8], r5
	shl 0x00000018, r5
	ld.bu 0x00000001[r8], r9
	shl 0x00000010, r9
	or r9, r5
	ld.bu 0x00000002[r8], r9
	shl 0x00000008, r9
	or r9, r5
	ld.bu 0x00000003[r8], r9
	or r9, r5
	mov r7, r9
	shl 0x00000002, r9
	add r6, r9
	st.w r5, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3077
	add 0x00000004, r8
.BB.LABEL.73_2:	; bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3075
	addi 0xFFFFFFFF, r5, r7
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.73_1
.BB.LABEL.73_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3079
	jmp [r31]
_bn_cmp.1:
	.stack _bn_cmp.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3089
	br9 .BB.LABEL.74_3
.BB.LABEL.74_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3092
	shl 0x00000002, r5
	add 0xFFFFFFFC, r5
	mov r6, r9
	add r5, r9
	ld.w 0x00000000[r9], r9
	add r7, r5
	ld.w 0x00000000[r5], r5
	cmp r5, r9
	bh9 .BB.LABEL.74_5
.BB.LABEL.74_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3093
	cmp r5, r9
	bl9 .BB.LABEL.74_6
.BB.LABEL.74_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3091
	addi 0xFFFFFFFF, r5, r8
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.74_1
.BB.LABEL.74_4:	; bb29.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.74_7
.BB.LABEL.74_5:	; bb.bb38_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.74_7
.BB.LABEL.74_6:	; if_else_bb.bb38_crit_edge
	mov 0xFFFFFFFF, r10
.BB.LABEL.74_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3096
	jmp [r31]
_bn_sub.1:
	.stack _bn_sub.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3106
	prepare 0x00000200, 0x00000000
	mov 0x00000000, r5
	mov r5, r11
	mov r5, r12
	br9 .BB.LABEL.75_2
.BB.LABEL.75_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3110
	mov r12, r13
	shl 0x00000002, r13
	mov r7, r5
	add r13, r5
	ld.w 0x00000000[r5], r5
	mov r8, r14
	add r13, r14
	ld.w 0x00000000[r14], r14
	mov 0x00000000, r25
	sub r14, r5
	sbf 0x00000001, r25, r25, r14
	add r5, r10
	adf 0x00000001, r14, r11, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3111
	add r6, r13
	st.w r10, 0x00000000[r13]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3112
	mov r5, r11
	sar 0x0000001F, r11
	add 0x00000001, r12
.BB.LABEL.75_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3109
	cmp r9, r12
	bl9 .BB.LABEL.75_1
.BB.LABEL.75_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3115
	dispose 0x00000000, 0x00000200, [r31]
_bn_add.1:
	.stack _bn_add.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3125
	prepare 0x00000200, 0x00000000
	mov 0x00000000, r5
	mov r5, r11
	mov r5, r12
	br9 .BB.LABEL.76_2
.BB.LABEL.76_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3129
	mov r12, r13
	shl 0x00000002, r13
	mov r7, r11
	add r13, r11
	ld.w 0x00000000[r11], r14
	mov r8, r11
	add r13, r11
	ld.w 0x00000000[r11], r25
	mov 0x00000000, r11
	add r25, r14
	adf 0x00000001, r11, r11, r25
	add r14, r10
	adf 0x00000001, r25, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3130
	add r6, r13
	st.w r10, 0x00000000[r13]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3131
	add 0x00000001, r12
.BB.LABEL.76_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r10
	mov r11, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3128
	cmp r9, r12
	bl9 .BB.LABEL.76_1
.BB.LABEL.76_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3134
	dispose 0x00000000, 0x00000200, [r31]
_bn_mul.1:
	.stack _bn_mul.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3144
	prepare 0x00000380, 0x00000000
	mov 0x00000000, r5
	br9 .BB.LABEL.77_2
.BB.LABEL.77_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r10
	shl 0x00000002, r10
	add r6, r10
	st.w r0, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.77_2:	; bb14
	cmp r9, r5
	bl9 .BB.LABEL.77_1
.BB.LABEL.77_3:	; bb14.bb71_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.77_7
.BB.LABEL.77_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3151
	mov r5, r13
	add r12, r13
	mov r5, r14
	shl 0x00000002, r14
	add r7, r14
	ld.w 0x00000000[r14], r14
	mov r12, r25
	shl 0x00000002, r25
	add r8, r25
	ld.w 0x00000000[r25], r25
	mulu r25, r14, r25
	shl 0x00000002, r13
	add r6, r13
	ld.w 0x00000000[r13], r26
	mov 0x00000000, r27
	add r14, r26
	adf 0x00000001, r27, r25, r14
	add r26, r11
	adf 0x00000001, r14, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3152
	st.w r11, 0x00000000[r13]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3153
	add 0x00000001, r12
.BB.LABEL.77_5:	; bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r10, r11
	mov r27, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3150
	cmp r9, r12
	bl9 .BB.LABEL.77_4
.BB.LABEL.77_6:	; bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3155
	mov r9, r10
	add r5, r10
	shl 0x00000002, r10
	add r6, r10
	st.w r11, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.77_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3148
	cmp r9, r5
	bnc9 .BB.LABEL.77_9
.BB.LABEL.77_8:	; bb71.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	mov r10, r27
	mov r10, r12
	br9 .BB.LABEL.77_5
.BB.LABEL.77_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3157
	dispose 0x00000000, 0x00000380, [r31]
_bn_mul_lo.1:
	.stack _bn_mul_lo.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3167
	prepare 0x00000380, 0x00000000
	mov 0x00000000, r5
	br9 .BB.LABEL.78_2
.BB.LABEL.78_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r5, r10
	shl 0x00000002, r10
	add r6, r10
	st.w r0, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.78_2:	; bb14
	cmp r9, r5
	bl9 .BB.LABEL.78_1
.BB.LABEL.78_3:	; bb14.bb66_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.78_7
.BB.LABEL.78_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3174
	mov r5, r13
	add r11, r13
	mov r5, r14
	shl 0x00000002, r14
	add r7, r14
	ld.w 0x00000000[r14], r14
	mov r11, r25
	shl 0x00000002, r25
	add r8, r25
	ld.w 0x00000000[r25], r25
	mulu r25, r14, r25
	shl 0x00000002, r13
	add r6, r13
	ld.w 0x00000000[r13], r26
	mov 0x00000000, r27
	add r14, r26
	adf 0x00000001, r27, r25, r14
	add r26, r10
	adf 0x00000001, r14, r12, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3175
	st.w r10, 0x00000000[r13]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3176
	add 0x00000001, r11
.BB.LABEL.78_5:	; bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r12, r10
	mov r27, r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3173
	mov r9, r27
	sub r5, r27
	cmp r27, r11
	bl9 .BB.LABEL.78_4
.BB.LABEL.78_6:	; bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	add 0x00000001, r5
.BB.LABEL.78_7:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3171
	cmp r9, r5
	bnc9 .BB.LABEL.78_9
.BB.LABEL.78_8:	; bb66.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r12
	mov r12, r27
	mov r12, r11
	br9 .BB.LABEL.78_5
.BB.LABEL.78_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3179
	dispose 0x00000000, 0x00000380, [r31]
_bn_copy.1:
	.stack _bn_copy.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3181
	br9 .BB.LABEL.79_2
.BB.LABEL.79_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	shl 0x00000002, r5
	add 0xFFFFFFFC, r5
	mov r6, r9
	add r5, r9
	add r7, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000000[r9]
.BB.LABEL.79_2:	; bb10
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3183
	addi 0xFFFFFFFF, r5, r8
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.79_1
.BB.LABEL.79_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3184
	jmp [r31]
_bn_set_word.1:
	.stack _bn_set_word.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3186
	st.w r7, 0x00000000[r6]
	br9 .BB.LABEL.80_2
.BB.LABEL.80_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r8, r5
	shl 0x00000002, r5
	add r6, r5
	st.w r0, 0x00000000[r5]
.BB.LABEL.80_2:	; bb9
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3189
	addi 0xFFFFFFFF, r5, r8
	cmp 0x00000001, r5
	bh9 .BB.LABEL.80_1
.BB.LABEL.80_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3190
	jmp [r31]
_bn_mod_sub.1:
	.stack _bn_mod_sub.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3192
	prepare 0x00000387, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r9, r28
	ld.w 0x00000018[r3], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3194
	mov r26, r6
	mov r27, r7
	mov r29, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.81_3
.BB.LABEL.81_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r26, r7
	mov r27, r8
.BB.LABEL.81_2:	; if_then_bb
	mov r25, r6
	mov r29, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3199
	dispose 0x00000000, 0x00000387, [r31]
.BB.LABEL.81_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3196
	mov r25, r6
	mov r27, r7
	mov r26, r8
	mov r29, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3197
	mov r28, r7
	mov r25, r8
	br9 .BB.LABEL.81_2
_bn_mod_add.1:
	.stack _bn_mod_add.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3201
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r9, r26
	ld.w 0x00000010[r3], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3203
	mov r27, r9
	jarl _bn_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3204
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.82_2
.BB.LABEL.82_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3205
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.82_3
.BB.LABEL.82_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r25, r6
	mov r25, r7
	mov r26, r8
	mov r27, r9
	jarl _bn_sub.1, r31
.BB.LABEL.82_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3206
	dispose 0x00000000, 0x00000381, [r31]
_bn_barrett_mod_mul.1:
	.stack _bn_barrett_mod_mul.1 = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3216
	prepare 0x00000B87, 0x00000008
	ld.w 0x0000002C[r3], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3218
	mov r25, r5
	shl 0x00000002, r5
	ld.w 0x00000028[r3], r26
	add r26, r5
	addi 0x00000004, r5, r10
	st.w r10, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3220
	mov r25, r27
	shl 0x00000003, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3219
	mov r10, r28
	add r27, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3220
	add r28, r27
	add 0x00000008, r27
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3222
	st.w r6, 0x00000004[r3]
	br9 .BB.LABEL.83_2
.BB.LABEL.83_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r10, r6
	shl 0x00000002, r6
	mov r26, r11
	add r6, r11
	add r9, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000000[r11]
	add 0x00000001, r10
.BB.LABEL.83_2:	; bb39
	cmp r25, r10
	bl9 .BB.LABEL.83_1
.BB.LABEL.83_3:	; bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3223
	st.w r0, 0x00000000[r5]
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3224
	mov r5, r6
	mov r25, r9
	jarl _bn_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3225
	mov r25, r29
	shl 0x00000002, r29
	ld.w 0x00000000[r3], r5
	mov r5, r7
	add r29, r7
	add 0xFFFFFFFC, r7
	addi 0x00000001, r25, r30
	mov r28, r6
	ld.w 0x00000024[r3], r5
	mov r5, r8
	mov r30, r9
	jarl _bn_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3226
	add r29, r28
	addi 0x00000004, r28, r7
	mov r27, r6
	mov r26, r8
	mov r30, r9
	jarl _bn_mul_lo.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3227
	mov r27, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	mov r27, r8
	mov r30, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3228
	mov r27, r6
	mov r26, r7
	mov r30, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.83_5
.BB.LABEL.83_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	addi 0x00000001, r25, r9
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _bn_sub.1, r31
.BB.LABEL.83_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3229
	mov r27, r6
	mov r26, r7
	mov r25, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.83_7
.BB.LABEL.83_6:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r27, r6
	mov r27, r7
	mov r26, r8
	mov r25, r9
	jarl _bn_sub.1, r31
.BB.LABEL.83_7:	; if_break_bb101
	ld.w 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3230
	mov r5, r6
	mov r27, r7
	mov r25, r8
	jarl _bn_copy.1, r31
	dispose 0x00000008, 0x00000B87, [r31]
_bn_barrett_mod_sqr.1:
	.stack _bn_barrett_mod_sqr.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3233
	prepare 0x00000001, 0x0000000C
	mov r8, r5
	ld.w 0x00000014[r3], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3235
	st.w r8, 0x00000008[r3]
	ld.w 0x00000010[r3], r8
	st.w r8, 0x00000004[r3]
	st.w r9, 0x00000000[r3]
	mov r7, r8
	mov r5, r9
	jarl _bn_barrett_mod_mul.1, r31
	dispose 0x0000000C, 0x00000001, [r31]
_bn_barrett_mod_exp.1:
	.stack _bn_barrett_mod_exp.1 = 56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3238
	prepare 0x00000B87, 0x0000001C
	mov r6, r5
	st.w r5, 0x00000018[r3]
	mov r7, r5
	st.w r5, 0x0000000C[r3]
	mov r8, r5
	st.w r5, 0x00000014[r3]
	mov r9, r25
	ld.w 0x0000003C[r3], r26
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3241
	mov r26, r6
	ld.w 0x00000040[r3], r27
	mov r27, r8
	jarl _bn_set_word.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3240
	mov r27, r28
	shl 0x00000002, r28
	add r26, r28
	ld.w 0x00000038[r3], r29
	mov r27, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3242
	st.w r5, 0x00000010[r3]
	br9 .BB.LABEL.85_6
.BB.LABEL.85_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000010[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3243
	shl 0x00000002, r5
	ld.w 0x00000014[r3], r6
	add r6, r5
	ld.w 0x00000000[r5], r27
	mov 0x00000000, r30
	br9 .BB.LABEL.85_5
.BB.LABEL.85_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000040[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3245
	st.w r5, 0x00000004[r3]
	st.w r28, 0x00000000[r3]
	mov r26, r6
	mov r26, r7
	mov r25, r8
	mov r29, r9
	jarl _bn_barrett_mod_sqr.1, r31
	movhi 0x00008000, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3246
	tst r5, r27
	bz9 .BB.LABEL.85_4
.BB.LABEL.85_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000040[r3], r5
	st.w r5, 0x00000008[r3]
	st.w r28, 0x00000004[r3]
	st.w r29, 0x00000000[r3]
	mov r26, r6
	mov r26, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	mov r25, r9
	jarl _bn_barrett_mod_mul.1, r31
.BB.LABEL.85_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3247
	add 0x00000001, r30
	add r27, r27
.BB.LABEL.85_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3244
	addi 0xFFFFFFE0, r30, r0
	blt9 .BB.LABEL.85_2
.BB.LABEL.85_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000010[r3], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3242
	cmp 0x00000000, r5
	bp9 .BB.LABEL.85_1
.BB.LABEL.85_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	ld.w 0x00000018[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3250
	mov r5, r6
	mov r26, r7
	ld.w 0x00000040[r3], r5
	mov r5, r8
	jarl _bn_copy.1, r31
	dispose 0x0000001C, 0x00000B87, [r31]
_bn_barrett_mod_inv.1:
	.stack _bn_barrett_mod_inv.1 = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3253
	prepare 0x00000B87, 0x0000000C
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r9, r28
	ld.w 0x0000002C[r3], r29
	ld.w 0x00000028[r3], r30
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3256
	mov r30, r6
	mov r29, r8
	jarl _bn_set_word.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3257
	mov r30, r6
	mov r27, r7
	mov r30, r8
	mov r29, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3258
	st.w r29, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3255
	shl 0x00000002, r29
	add r30, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3258
	st.w r29, 0x00000004[r3]
	st.w r28, 0x00000000[r3]
	mov r25, r6
	mov r26, r7
	mov r30, r8
	mov r27, r9
	jarl _bn_barrett_mod_exp.1, r31
	dispose 0x0000000C, 0x00000B87, [r31]
_secp256r1_is_zero.1:
	.stack _secp256r1_is_zero.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3261
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r7
	jarl _bn_is_zero.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_is_one.1:
	.stack _secp256r1_is_one.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3262
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r7
	jarl _bn_is_one.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_cmp.1:
	.stack _secp256r1_cmp.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3263
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	jarl _bn_cmp.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_from_32bytes.1:
	.stack _secp256r1_from_32bytes.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3273
	prepare 0x00000001, 0x00000000
	mov r7, r8
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3275
	jarl _bn_from_bytes.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_copy.1:
	.stack _secp256r1_copy.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3277
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	jarl _bn_copy.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_set_one.1:
	.stack _secp256r1_set_one.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3278
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	mov 0x00000001, r7
	jarl _bn_set_word.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_set_zero.1:
	.stack _secp256r1_set_zero.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3279
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	mov 0x00000000, r7
	jarl _bn_set_word.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_modn.1:
	.stack _secp256r1_modn.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3281
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3283
	mov #_g_secp256r1N.7, r7
	mov r26, r6
	jarl _bn_cmp.1, r31
	mov r25, r6
	mov r26, r7
	cmp 0x00000000, r10
	bn9 .BB.LABEL.94_2
.BB.LABEL.94_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000008, r9
	mov #_g_secp256r1N.7, r8
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3285
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.94_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3284
	jarl _bn_copy.1, r31
	dispose 0x00000000, 0x00000301, [r31]
_secp256r1_modn_inv.1:
	.stack _secp256r1_modn_inv.1 = 284
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3287
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3290
	st.w r5, 0x00000004[r3]
	movea 0x00000008, r3, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1UN.8, r9
	mov #_g_secp256r1N.7, r8
	jarl _bn_barrett_mod_inv.1, r31
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modn_mul.1:
	.stack _secp256r1_modn_mul.1 = 224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3293
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3296
	st.w r5, 0x00000008[r3]
	movea 0x0000000C, r3, r5
	st.w r5, 0x00000004[r3]
	mov #_g_secp256r1UN.8, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1N.7, r9
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_add.1:
	.stack _secp256r1_modp_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3299
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_mod_add.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_sub.1:
	.stack _secp256r1_modp_sub.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3300
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_mod_sub.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_dbl.1:
	.stack _secp256r1_modp_dbl.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3301
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	mov r7, r8
	jarl _bn_mod_add.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_sqr.1:
	.stack _secp256r1_modp_sqr.1 = 224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3302
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3305
	st.w r5, 0x00000008[r3]
	movea 0x0000000C, r3, r5
	st.w r5, 0x00000004[r3]
	mov #_g_secp256r1UP.10, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	mov r7, r8
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_mul.1:
	.stack _secp256r1_modp_mul.1 = 224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3307
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3310
	st.w r5, 0x00000008[r3]
	movea 0x0000000C, r3, r5
	st.w r5, 0x00000004[r3]
	mov #_g_secp256r1UP.10, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_tri.1:
	.stack _secp256r1_modp_tri.1 = 60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3312
	prepare 0x00000387, 0x00000024
	mov r6, r25
	mov r7, r26
	mov 0x00000008, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3315
	st.w r27, 0x00000000[r3]
	mov #_g_secp256r1P.9, r28
	movea 0x00000004, r3, r29
	mov r29, r6
	mov r26, r8
	mov r28, r9
	jarl _bn_mod_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3316
	st.w r27, 0x00000000[r3]
	mov r25, r6
	mov r29, r7
	mov r26, r8
	mov r28, r9
	jarl _bn_mod_add.1, r31
	dispose 0x00000024, 0x00000387, [r31]
_secp256r1_modp_haf.1:
	.stack _secp256r1_modp_haf.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3318
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3321
	ld.w 0x00000000[r7], r5
	andi 0x00000001, r5, r0
	mov r6, r25
	mov r25, r6
	bz9 .BB.LABEL.103_2
.BB.LABEL.103_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000008, r9
	mov #_g_secp256r1P.9, r8
	jarl _bn_add.1, r31
	shl 0x0000001F, r10
	br9 .BB.LABEL.103_3
.BB.LABEL.103_2:	; if_else_bb
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3322
	jarl _bn_copy.1, r31
	mov 0x00000000, r10
.BB.LABEL.103_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3324
	ld.w 0x00000000[r25], r5
	shr 0x00000001, r5
	ld.w 0x00000004[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3325
	ld.w 0x00000004[r25], r5
	shr 0x00000001, r5
	ld.w 0x00000008[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000004[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3326
	ld.w 0x00000008[r25], r5
	shr 0x00000001, r5
	ld.w 0x0000000C[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000008[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3327
	ld.w 0x0000000C[r25], r5
	shr 0x00000001, r5
	ld.w 0x00000010[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x0000000C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3328
	ld.w 0x00000010[r25], r5
	shr 0x00000001, r5
	ld.w 0x00000014[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000010[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3329
	ld.w 0x00000014[r25], r5
	shr 0x00000001, r5
	ld.w 0x00000018[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000014[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3330
	ld.w 0x00000018[r25], r5
	shr 0x00000001, r5
	ld.w 0x0000001C[r25], r6
	shl 0x0000001F, r6
	or r6, r5
	st.w r5, 0x00000018[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3331
	ld.w 0x0000001C[r25], r5
	shr 0x00000001, r5
	or r10, r5
	st.w r5, 0x0000001C[r25]
	dispose 0x00000000, 0x00000201, [r31]
_secp256r1_modp_inv.1:
	.stack _secp256r1_modp_inv.1 = 284
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3333
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3336
	st.w r5, 0x00000004[r3]
	movea 0x00000008, r3, r5
	st.w r5, 0x00000000[r3]
	mov #_g_secp256r1UP.10, r9
	mov #_g_secp256r1P.9, r8
	jarl _bn_barrett_mod_inv.1, r31
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_point_copy.1:
	.stack _secp256r1_point_copy.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3348
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3350
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3351
	movea 0x00000020, r26, r7
	movea 0x00000020, r25, r6
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3352
	movea 0x00000040, r26, r7
	movea 0x00000040, r25, r6
	jarl _secp256r1_copy.1, r31
	dispose 0x00000000, 0x00000301, [r31]
_secp256r1_point_set_infinity.1:
	.stack _secp256r1_point_set_infinity.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3363
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3365
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3366
	movea 0x00000020, r25, r6
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3367
	movea 0x00000040, r25, r6
	jarl _secp256r1_set_zero.1, r31
	dispose 0x00000000, 0x00000201, [r31]
_secp256r1_point_is_at_infinity.1:
	.stack _secp256r1_point_is_at_infinity.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3370
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3372
	movea 0x00000040, r6, r6
	jarl _secp256r1_is_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3373
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_point_get_xy.1:
	.stack _secp256r1_point_get_xy.1 = 52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3375
	prepare 0x00000385, 0x00000020
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3378
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.108_2
.BB.LABEL.108_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3379
	movea 0x00000040, r25, r7
	mov r3, r28
	mov r28, r6
	jarl _secp256r1_modp_inv.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3380
	movea 0x00000020, r25, r7
	mov r27, r6
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3381
	mov r28, r6
	mov r28, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3382
	mov r26, r6
	mov r25, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3383
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3384
	dispose 0x00000020, 0x00000385, [r31]
.BB.LABEL.108_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3385
	dispose 0x00000020, 0x00000385, [r31]
_secp256r1_point_is_on_curve.1:
	.stack _secp256r1_point_is_on_curve.1 = 116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3395
	prepare 0x00000385, 0x00000060
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3398
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.109_2
.BB.LABEL.109_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3400
	movea 0x00000020, r25, r7
	movea 0x00000040, r3, r26
	mov r26, r6
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3401
	movea 0x00000040, r25, r7
	movea 0x00000020, r3, r27
	mov r27, r6
	jarl _secp256r1_modp_sqr.1, r31
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3402
	mov r28, r6
	mov r27, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3403
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3404
	mov #_g_secp256r1B.11, r8
	mov r27, r6
	mov r27, r7
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3405
	mov r28, r6
	mov r28, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3406
	mov r26, r6
	mov r26, r7
	mov r28, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3407
	mov r26, r6
	mov r26, r7
	mov r28, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3408
	mov r26, r6
	mov r26, r7
	mov r28, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3409
	mov r28, r6
	mov r25, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3410
	mov r28, r6
	mov r28, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3411
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3413
	mov r26, r6
	mov r27, r7
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	setf 0x00000002, r10
	dispose 0x00000060, 0x00000385, [r31]
.BB.LABEL.109_2:	; bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3414
	dispose 0x00000060, 0x00000385, [r31]
_secp256r1_point_set_xy.1:
	.stack _secp256r1_point_set_xy.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3424
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3426
	mov #_g_secp256r1P.9, r7
	mov r26, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.110_4
.BB.LABEL.110_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov #_g_secp256r1P.9, r7
	mov r27, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.110_4
.BB.LABEL.110_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3427
	mov r25, r6
	mov r26, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3428
	movea 0x00000020, r25, r6
	mov r27, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3429
	movea 0x00000040, r25, r6
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3430
	mov r25, r6
	jarl _secp256r1_point_is_on_curve.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.110_4
.BB.LABEL.110_3:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3431
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.110_4:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3432
	dispose 0x00000000, 0x00000381, [r31]
_secp256r1_point_from_uncompressed_octets.1:
	.stack _secp256r1_point_from_uncompressed_octets.1 = 80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3434
	prepare 0x00000381, 0x00000040
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3437
	ld.bu 0x00000000[r7], r5
	cmp 0x00000004, r5
	mov r7, r25
	mov r6, r26
	bnz9 .BB.LABEL.111_2
.BB.LABEL.111_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3438
	addi 0x00000001, r25, r7
	movea 0x00000020, r3, r27
	mov r27, r6
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3439
	movea 0x00000021, r25, r7
	mov r3, r25
	mov r25, r6
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3440
	mov r26, r6
	mov r27, r7
	mov r25, r8
	jarl _secp256r1_point_set_xy.1, r31
	dispose 0x00000040, 0x00000381, [r31]
.BB.LABEL.111_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3441
	dispose 0x00000040, 0x00000381, [r31]
_secp256r1_public_key_from_bytes.1:
	.stack _secp256r1_public_key_from_bytes.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3451
	prepare 0x00000381, 0x00000000
	mov r8, r25
	mov r7, r26
	addi 0x00000000, r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3453
	bz9 .BB.LABEL.112_7
.BB.LABEL.112_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	cmp 0x00000000, r26
	bz9 .BB.LABEL.112_7
.BB.LABEL.112_2:	; bb27
	ld.w 0x00000000[r26], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.112_7
.BB.LABEL.112_3:	; bb27
	cmp 0x00000000, r25
	bz9 .BB.LABEL.112_7
.BB.LABEL.112_4:	; bb62
	ld.w 0x00000000[r25], r5
	movea 0x00000041, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.112_7
.BB.LABEL.112_5:	; if_break_bb
	movea 0x00000080, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3454
	mov r27, r6
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3455
	ld.w 0x00000000[r26], r7
	mov r27, r6
	jarl _secp256r1_point_from_uncompressed_octets.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.112_7
.BB.LABEL.112_6:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3456
	ld.w 0x00000000[r26], r5
	movea 0x00000041, r5, r5
	st.w r5, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3457
	ld.w 0x00000000[r25], r5
	movea 0xFFFFFFBF, r5, r5
	st.w r5, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3458
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.112_7:	; bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3459
	dispose 0x00000000, 0x00000381, [r31]
_secp256r1_point_dbl.1:
	.stack _secp256r1_point_dbl.1 = 160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3469
	prepare 0x00000B87, 0x0000007C
	add 0xFFFFFFF8, r3
	mov r6, r5
	st.w r5, 0x00000000[r3]
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3471
	movea 0x00000020, r25, r26
	movea 0x00000064, r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3475
	mov r27, r6
	mov r26, r7
	jarl _secp256r1_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3471
	movea 0x00000040, r25, r28
	movea 0x00000024, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3476
	mov r29, r6
	mov r28, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3477
	mov r27, r6
	mov r27, r7
	jarl _secp256r1_modp_sqr.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3472
	movea 0x00000040, r5, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3478
	mov r30, r6
	mov r28, r7
	mov r26, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3479
	mov r30, r6
	mov r30, r7
	jarl _secp256r1_modp_dbl.1, r31
	movea 0x00000044, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3480
	mov r26, r6
	mov r25, r7
	mov r29, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3481
	mov r29, r6
	mov r25, r7
	mov r29, r8
	jarl _secp256r1_modp_sub.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3472
	movea 0x00000020, r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3482
	mov r28, r6
	mov r27, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3483
	mov r28, r6
	mov r28, r7
	jarl _secp256r1_modp_haf.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3484
	mov r26, r6
	mov r26, r7
	mov r29, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3485
	mov r26, r6
	mov r26, r7
	jarl _secp256r1_modp_tri.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3486
	mov r27, r6
	mov r27, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000004, r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3487
	mov r25, r6
	mov r27, r7
	jarl _secp256r1_modp_dbl.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3488
	mov r5, r6
	mov r26, r7
	jarl _secp256r1_modp_sqr.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3489
	mov r5, r6
	mov r5, r7
	mov r25, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3490
	mov r27, r6
	mov r27, r7
	ld.w 0x00000000[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3491
	mov r27, r6
	mov r27, r7
	mov r26, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3492
	mov r28, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_sub.1, r31
	add 0x00000008, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_secp256r1_point_add.1:
	.stack _secp256r1_point_add.1 = 304
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3503
	prepare 0x00000B87, 0x0000007C
	movea 0xFFFFFF68, r3, r3
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3507
	mov r26, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_5
.BB.LABEL.114_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r26
	add r25, r26
	br9 .BB.LABEL.114_3
.BB.LABEL.114_2:	; if_then_bb
	ld23.dw 0x00000000[r27], r6
	st23.dw r6, 0x00000000[r25]
	add 0x00000008, r27
	add 0x00000008, r25
.BB.LABEL.114_3:	; if_then_bb
	cmp r25, r26
	bnz9 .BB.LABEL.114_2
.BB.LABEL.114_4:	; if_then_bb
	movea 0x00000098, r3, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3548
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.114_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3508
	mov r27, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_10
.BB.LABEL.114_6:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r27
	add r25, r27
	br9 .BB.LABEL.114_8
.BB.LABEL.114_7:	; if_then_bb24
	ld23.dw 0x00000000[r26], r6
	st23.dw r6, 0x00000000[r25]
	add 0x00000008, r26
	add 0x00000008, r25
.BB.LABEL.114_8:	; if_then_bb24
	cmp r25, r27
	bnz9 .BB.LABEL.114_7
.BB.LABEL.114_9:	; if_then_bb24
	movea 0x00000098, r3, r3
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3548
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.114_10:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3510
	movea 0x00000040, r26, r5
	st.w r5, 0x00000010[r3]
	movea 0x000000F4, r3, r28
	mov r28, r6
	mov r5, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3511
	movea 0x00000040, r27, r5
	st.w r5, 0x0000000C[r3]
	movea 0x000000D4, r3, r5
	st.w r5, 0x00000008[r3]
	mov r5, r6
	ld.w 0x0000000C[r3], r5
	mov r5, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x000000B4, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3512
	mov r29, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000094, r3, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3513
	mov r30, r6
	mov r26, r7
	ld.w 0x00000008[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000074, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3514
	mov r29, r7
	mov r30, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3515
	mov r29, r6
	mov r29, r7
	mov r30, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3516
	mov r28, r6
	mov r28, r7
	ld.w 0x00000010[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3517
	movea 0x00000020, r27, r8
	mov r28, r6
	mov r28, r7
	jarl _secp256r1_modp_mul.1, r31
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3518
	mov r5, r6
	mov r5, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3519
	movea 0x00000020, r26, r8
	ld.w 0x00000008[r3], r5
	mov r5, r6
	mov r5, r7
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000054, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3520
	mov r28, r7
	ld.w 0x00000008[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3521
	mov r28, r6
	mov r28, r7
	ld.w 0x00000008[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3523
	mov r28, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_13
.BB.LABEL.114_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x000000B4, r3, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_13
.BB.LABEL.114_12:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3524
	mov r25, r6
	mov r26, r7
	jarl _secp256r1_point_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3525
	movea 0x00000098, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.114_13:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x000000F4, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3527
	jarl _secp256r1_is_one.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_16
.BB.LABEL.114_14:	; bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000054, r3, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.114_16
.BB.LABEL.114_15:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3528
	mov r25, r6
	jarl _secp256r1_point_set_infinity.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3529
	movea 0x00000098, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
.BB.LABEL.114_16:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x000000F4, r3, r26
	movea 0x00000054, r3, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3532
	mov r5, r6
	mov r26, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x000000B4, r3, r27
	movea 0x00000034, r3, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3533
	mov r5, r6
	mov r27, r7
	ld.w 0x00000010[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_mul.1, r31
	ld.w 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3534
	mov r5, r6
	mov r5, r7
	ld.w 0x0000000C[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000014, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3535
	mov r28, r6
	mov r27, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x00000074, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3536
	mov r29, r6
	mov r29, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3537
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000094, r3, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3538
	mov r30, r6
	mov r30, r7
	mov r28, r8
	jarl _secp256r1_modp_mul.1, r31
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3539
	mov r5, r6
	mov r5, r7
	mov r29, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3540
	mov r30, r6
	mov r30, r7
	ld.w 0x00000000[r3], r5
	mov r5, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3541
	mov r26, r6
	mov r26, r7
	mov r30, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x000000D4, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3542
	mov r28, r6
	mov r28, r7
	mov r27, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3543
	mov r26, r6
	mov r26, r7
	mov r28, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3545
	mov r25, r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3546
	movea 0x00000020, r25, r6
	mov r26, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3547
	movea 0x00000040, r25, r6
	ld.w 0x00000004[r3], r5
	mov r5, r7
	jarl _secp256r1_copy.1, r31
	movea 0x00000098, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_secp256r1_point_mul.1:
	.stack _secp256r1_point_mul.1 = 124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3558
	prepare 0x00000B87, 0x00000060
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3563
	jarl _secp256r1_point_set_infinity.1, r31
	mov 0x00000007, r28
	br9 .BB.LABEL.115_7
.BB.LABEL.115_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3566
	mov r28, r5
	shl 0x00000002, r5
	add r26, r5
	ld.w 0x00000000[r5], r29
	movea 0x00000020, r0, r30
	br9 .BB.LABEL.115_5
.BB.LABEL.115_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3569
	mov r6, r7
	jarl _secp256r1_point_dbl.1, r31
	movhi 0x00008000, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3570
	tst r5, r29
	bz9 .BB.LABEL.115_4
.BB.LABEL.115_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3571
	mov r6, r7
	mov r27, r8
	jarl _secp256r1_point_add.1, r31
.BB.LABEL.115_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3573
	add r29, r29
.BB.LABEL.115_5:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3568
	addi 0xFFFFFFFF, r5, r30
	cmp 0x00000000, r5
	bgt9 .BB.LABEL.115_2
.BB.LABEL.115_6:	; bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r28
.BB.LABEL.115_7:	; bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3565
	cmp 0x00000000, r28
	bp9 .BB.LABEL.115_1
.BB.LABEL.115_8:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3576
	mov r25, r6
	jarl _secp256r1_point_copy.1, r31
	dispose 0x00000060, 0x00000B87, [r31]
_secp256r1_point_mul_generator.1:
	.stack _secp256r1_point_mul_generator.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3579
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3581
	mov #_g_secp256r1PointG.12, r8
	jarl _secp256r1_point_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_ecdsa_do_verify.1:
	.stack _ecdsa_do_verify.1 = 504
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3593
	prepare 0x00000387, 0x0000007C
	movea 0xFFFFFE9C, r3, r3
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3598
	mov r27, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.117_7
.BB.LABEL.117_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov #_g_secp256r1N.7, r7
	mov r27, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.117_7
.BB.LABEL.117_2:	; bb30
	movea 0x00000020, r27, r28
	mov r28, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.117_7
.BB.LABEL.117_3:	; bb44
	mov #_g_secp256r1N.7, r7
	mov r28, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.117_7
.BB.LABEL.117_4:	; if_break_bb
	movea 0x000001C0, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3603
	mov r29, r6
	mov r26, r7
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3604
	mov r29, r6
	mov r29, r7
	jarl _secp256r1_modn.1, r31
	movea 0x000001A0, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3606
	mov r26, r6
	mov r28, r7
	jarl _secp256r1_modn_inv.1, r31
	movea 0x00000180, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3607
	mov r28, r6
	mov r29, r7
	mov r26, r8
	jarl _secp256r1_modn_mul.1, r31
	movea 0x00000160, r3, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3608
	mov r29, r6
	mov r27, r7
	mov r26, r8
	jarl _secp256r1_modn_mul.1, r31
	movea 0x000000C0, r3, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3610
	mov r26, r6
	mov r28, r7
	jarl _secp256r1_point_mul_generator.1, r31
	movea 0x00000060, r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3611
	mov r28, r6
	mov r29, r7
	mov r25, r8
	jarl _secp256r1_point_mul.1, r31
	mov r3, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3612
	mov r25, r6
	mov r26, r7
	mov r28, r8
	jarl _secp256r1_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3614
	mov r25, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.117_7
.BB.LABEL.117_5:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	movea 0x00000140, r3, r25
	movea 0x00000120, r3, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3616
	mov r25, r7
	jarl _secp256r1_point_get_xy.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3617
	mov r25, r6
	mov r25, r7
	jarl _secp256r1_modn.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3619
	mov r25, r6
	mov r27, r7
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.117_7
.BB.LABEL.117_6:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3622
	movea 0x00000164, r3, r3
	dispose 0x0000007C, 0x00000387, [r31]
.BB.LABEL.117_7:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/crypto_lib.c", 3623
	movea 0x00000164, r3, r3
	dispose 0x0000007C, 0x00000387, [r31]
	.section .const, const
_SM4_SBOX.1:
	.db 0xD6,0x90,0xE9,0xFE,0xCC,0xE1,0x3D,0xB7,0x16,0xB6,0x14,0xC2,0x28,0xFB,0x2C,0x05
	.db 0x2B,0x67,0x9A,0x76,0x2A,0xBE,0x04,0xC3,0xAA,0x44,0x13,0x26,0x49,0x86,0x06,0x99
	.db 0x9C,0x42,0x50,0xF4,0x91,0xEF,0x98,0x7A,0x33,0x54,0x0B,0x43,0xED,0xCF,0xAC,0x62
	.db 0xE4,0xB3,0x1C,0xA9,0xC9,0x08,0xE8,0x95,0x80,0xDF,0x94,0xFA,0x75,0x8F,0x3F,0xA6
	.db 0x47,0x07,0xA7,0xFC,0xF3,0x73,0x17,0xBA,0x83,0x59,0x3C,0x19,0xE6,0x85,0x4F,0xA8
	.db 0x68,0x6B,0x81,0xB2,0x71,0x64,0xDA,0x8B,0xF8,0xEB,0x0F,0x4B,0x70,0x56,0x9D,0x35
	.db 0x1E,0x24,0x0E,0x5E,0x63,0x58,0xD1,0xA2,0x25,0x22,0x7C,0x3B,0x01,0x21,0x78,0x87
	.db 0xD4
	.ds (1)
	.db 0x46,0x57,0x9F,0xD3,0x27,0x52,0x4C,0x36,0x02,0xE7,0xA0,0xC4,0xC8,0x9E,0xEA,0xBF
	.db 0x8A,0xD2,0x40,0xC7,0x38,0xB5,0xA3,0xF7,0xF2,0xCE,0xF9,0x61,0x15,0xA1,0xE0,0xAE
	.db 0x5D,0xA4,0x9B,0x34,0x1A,0x55,0xAD,0x93,0x32,0x30,0xF5,0x8C,0xB1,0xE3,0x1D,0xF6
	.db 0xE2,0x2E,0x82,0x66,0xCA,0x60,0xC0,0x29,0x23,0xAB,0x0D,0x53,0x4E,0x6F,0xD5,0xDB
	.db 0x37,0x45,0xDE,0xFD,0x8E,0x2F,0x03,0xFF,0x6A,0x72,0x6D,0x6C,0x5B,0x51,0x8D,0x1B
	.db 0xAF,0x92,0xBB,0xDD,0xBC,0x7F,0x11,0xD9,0x5C,0x41,0x1F,0x10,0x5A,0xD8,0x0A,0xC1
	.db 0x31,0x88,0xA5,0xCD,0x7B,0xBD,0x2D,0x74,0xD0,0x12,0xB8,0xE5,0xB4,0xB0,0x89,0x69
	.db 0x97,0x4A,0x0C,0x96,0x77,0x7E,0x65,0xB9,0xF1,0x09,0xC5,0x6E,0xC6,0x84,0x18,0xF0
	.db 0x7D,0xEC,0x3A,0xDC,0x4D,0x20,0x79,0xEE,0x5F,0x3E,0xD7,0xCB,0x39,0x48
	.align 4
_SM4_FK.2:
	.dw 0xA3B1BAC6,0x56AA3350,0x677D9197,0xB27022DC
	.align 4
_SM4_CK.3:
	.dw 0x00070E15,0x1C232A31,0x383F464D,0x545B6269,0x70777E85,0x8C939AA1,0xA8AFB6BD,0xC4CBD2D9
	.dw 0xE0E7EEF5,0xFC030A11,0x181F262D,0x343B4249,0x50575E65,0x6C737A81,0x888F969D,0xA4ABB2B9
	.dw 0xC0C7CED5,0xDCE3EAF1,0xF8FF060D,0x141B2229,0x30373E45,0x4C535A61,0x686F767D,0x848B9299
	.dw 0xA0A7AEB5,0xBCC3CAD1,0xD8DFE6ED,0xF4FB0209,0x10171E25,0x2C333A41,0x484F565D,0x646B7279
	.align 4
_K.4:
	.dw 0x79CC4519,0xF3988A32,0xE7311465,0xCE6228CB,0x9CC45197,0x3988A32F,0x7311465E,0xE6228CBC
	.dw 0xCC451979,0x988A32F3,0x311465E7,0x6228CBCE,0xC451979C,0x88A32F39,0x11465E73,0x228CBCE6
	.dw 0x9D8A7A87,0x3B14F50F,0x7629EA1E,0xEC53D43C,0xD8A7A879,0xB14F50F3,0x629EA1E7,0xC53D43CE
	.dw 0x8A7A879D,0x14F50F3B,0x29EA1E76,0x53D43CEC,0xA7A879D8,0x4F50F3B1,0x9EA1E762,0x3D43CEC5
	.dw 0x7A879D8A,0xF50F3B14,0xEA1E7629,0xD43CEC53,0xA879D8A7,0x50F3B14F,0xA1E7629E,0x43CEC53D
	.dw 0x879D8A7A,0x0F3B14F5,0x1E7629EA,0x3CEC53D4,0x79D8A7A8,0xF3B14F50,0xE7629EA1,0xCEC53D43
	.dw 0x9D8A7A87,0x3B14F50F,0x7629EA1E,0xEC53D43C,0xD8A7A879,0xB14F50F3,0x629EA1E7,0xC53D43CE
	.dw 0x8A7A879D,0x14F50F3B,0x29EA1E76,0x53D43CEC,0xA7A879D8,0x4F50F3B1,0x9EA1E762,0x3D43CEC5
	.align 4
_SHA256_K.5:
	.dw 0x428A2F98,0x71374491,0xB5C0FBCF,0xE9B5DBA5,0x3956C25B,0x59F111F1,0x923F82A4,0xAB1C5ED5
	.dw 0xD807AA98,0x12835B01,0x243185BE,0x550C7DC3,0x72BE5D74,0x80DEB1FE,0x9BDC06A7,0xC19BF174
	.dw 0xE49B69C1,0xEFBE4786,0x0FC19DC6,0x240CA1CC,0x2DE92C6F,0x4A7484AA,0x5CB0A9DC,0x76F988DA
	.dw 0x983E5152,0xA831C66D,0xB00327C8,0xBF597FC7,0xC6E00BF3,0xD5A79147,0x06CA6351,0x14292967
	.dw 0x27B70A85,0x2E1B2138,0x4D2C6DFC,0x53380D13,0x650A7354,0x766A0ABB,0x81C2C92E,0x92722C85
	.dw 0xA2BFE8A1,0xA81A664B,0xC24B8B70,0xC76C51A3,0xD192E819,0xD6990624,0xF40E3585,0x106AA070
	.dw 0x19A4C116,0x1E376C08,0x2748774C,0x34B0BCB5,0x391C0CB3,0x4ED8AA4A,0x5B9CCA4F,0x682E6FF3
	.dw 0x748F82EE,0x78A5636F,0x84C87814,0x8CC70208,0x90BEFFFA,0xA4506CEB,0xBEF9A3F7,0xC67178F2
	.align 4
_SM2_Z256_P:
	.ddw 0xFFFFFFFFFFFFFFFF,0xFFFFFFFF00000000,0xFFFFFFFFFFFFFFFF,0xFFFFFFFEFFFFFFFF
	.align 4
_SM2_Z256_NEG_P:
	.ddw 0x0000000000000001,0x00000000FFFFFFFF
	.ds (8)
	.ddw 0x0000000100000000
	.align 4
_SM2_Z256_2e512modp:
	.ddw 0x0000000200000003,0x00000002FFFFFFFF,0x0000000100000001,0x0000000400000002
	.align 4
_SM2_Z256_P_PRIME:
	.ddw 0x0000000000000001,0xFFFFFFFF00000001,0xFFFFFFFE00000000,0xFFFFFFFC00000001
	.align 4
_SM2_Z256_MODP_MONT_B:
	.ddw 0x90D230632BC0DD42,0x71CF379AE9B537AB,0x527981505EA51C3C,0x240FE188BA20E2C8
	.align 4
_SM2_Z256_N:
	.ddw 0x53BBF40939D54123,0x7203DF6B21C6052B,0xFFFFFFFFFFFFFFFF,0xFFFFFFFEFFFFFFFF
	.align 4
_SM2_Z256_NEG_N:
	.ddw 0xAC440BF6C62ABEDD,0x8DFC2094DE39FAD4
	.ds (8)
	.ddw 0x0000000100000000
	.align 4
_SM2_Z256_ONE:
	.ddw 0x0000000000000001
	.ds (24)
	.align 4
_g_secp256r1N.7:
	.dw 0xFC632551,0xF3B9CAC2,0xA7179E84,0xBCE6FAAD,0xFFFFFFFF,0xFFFFFFFF
	.ds (4)
	.dw 0xFFFFFFFF
	.align 4
_g_secp256r1UN.8:
	.dw 0xEEDF9BFE,0x012FFD85,0xDF1A6C21,0x43190552,0xFFFFFFFF,0xFFFFFFFE,0xFFFFFFFF
	.ds (4)
	.dw 0x00000001
	.align 4
_g_secp256r1P.9:
	.dw 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
	.ds (12)
	.dw 0x00000001,0xFFFFFFFF
	.align 4
_g_secp256r1UP.10:
	.dw 0x00000003
	.ds (4)
	.dw 0xFFFFFFFF,0xFFFFFFFE,0xFFFFFFFE,0xFFFFFFFE,0xFFFFFFFF
	.ds (4)
	.dw 0x00000001
	.align 4
_g_secp256r1B.11:
	.dw 0x27D2604B,0x3BCE3C3E,0xCC53B0F6,0x651D06B0,0x769886BC,0xB3EBBD55,0xAA3A93E7,0x5AC635D8
	.align 4
_g_secp256r1PointG.12:
	.dw 0xD898C296,0xF4A13945,0x2DEB33A0,0x77037D81,0x63A440F2,0xF8BCE6E5,0xE12C4247,0x6B17D1F2
	.dw 0x37BF51F5,0xCBB64068,0x6B315ECE,0x2BCE3357,0x7C0F9E16,0x8EE7EB4A,0xFE1A7F9B,0x4FE342E2
	.dw 0x00000001
	.ds (28)
	.align 2
_crc16_ccitt_false_table.13:
	.ds (2)
	.dhw 0x1021,0x2042,0x3063,0x4084,0x50A5,0x60C6,0x70E7,0x8108,0x9129,0xA14A,0xB16B,0xC18C
	.dhw 0xD1AD,0xE1CE,0xF1EF,0x1231,0x0210,0x3273,0x2252,0x52B5,0x4294,0x72F7,0x62D6,0x9339
	.dhw 0x8318,0xB37B,0xA35A,0xD3BD,0xC39C,0xF3FF,0xE3DE,0x2462,0x3443,0x0420,0x1401,0x64E6
	.dhw 0x74C7,0x44A4,0x5485,0xA56A,0xB54B,0x8528,0x9509,0xE5EE,0xF5CF,0xC5AC,0xD58D,0x3653
	.dhw 0x2672,0x1611,0x0630,0x76D7,0x66F6,0x5695,0x46B4,0xB75B,0xA77A,0x9719,0x8738,0xF7DF
	.dhw 0xE7FE,0xD79D,0xC7BC,0x48C4,0x58E5,0x6886,0x78A7,0x0840,0x1861,0x2802,0x3823,0xC9CC
	.dhw 0xD9ED,0xE98E,0xF9AF,0x8948,0x9969,0xA90A,0xB92B,0x5AF5,0x4AD4,0x7AB7,0x6A96,0x1A71
	.dhw 0x0A50,0x3A33,0x2A12,0xDBFD,0xCBDC,0xFBBF,0xEB9E,0x9B79,0x8B58,0xBB3B,0xAB1A,0x6CA6
	.dhw 0x7C87,0x4CE4,0x5CC5,0x2C22,0x3C03,0x0C60,0x1C41,0xEDAE,0xFD8F,0xCDEC,0xDDCD,0xAD2A
	.dhw 0xBD0B,0x8D68,0x9D49,0x7E97,0x6EB6,0x5ED5,0x4EF4,0x3E13,0x2E32,0x1E51,0x0E70,0xFF9F
	.dhw 0xEFBE,0xDFDD,0xCFFC,0xBF1B,0xAF3A,0x9F59,0x8F78,0x9188,0x81A9,0xB1CA,0xA1EB,0xD10C
	.dhw 0xC12D,0xF14E,0xE16F,0x1080,0x00A1,0x30C2,0x20E3,0x5004,0x4025,0x7046,0x6067,0x83B9
	.dhw 0x9398,0xA3FB,0xB3DA,0xC33D,0xD31C,0xE37F,0xF35E,0x02B1,0x1290,0x22F3,0x32D2,0x4235
	.dhw 0x5214,0x6277,0x7256,0xB5EA,0xA5CB,0x95A8,0x8589,0xF56E,0xE54F,0xD52C,0xC50D,0x34E2
	.dhw 0x24C3,0x14A0,0x0481,0x7466,0x6447,0x5424,0x4405,0xA7DB,0xB7FA,0x8799,0x97B8,0xE75F
	.dhw 0xF77E,0xC71D,0xD73C,0x26D3,0x36F2,0x0691,0x16B0,0x6657,0x7676,0x4615,0x5634,0xD94C
	.dhw 0xC96D,0xF90E,0xE92F,0x99C8,0x89E9,0xB98A,0xA9AB,0x5844,0x4865,0x7806,0x6827,0x18C0
	.dhw 0x08E1,0x3882,0x28A3,0xCB7D,0xDB5C,0xEB3F,0xFB1E,0x8BF9,0x9BD8,0xABBB,0xBB9A,0x4A75
	.dhw 0x5A54,0x6A37,0x7A16,0x0AF1,0x1AD0,0x2AB3,0x3A92,0xFD2E,0xED0F,0xDD6C,0xCD4D,0xBDAA
	.dhw 0xAD8B,0x9DE8,0x8DC9,0x7C26,0x6C07,0x5C64,0x4C45,0x3CA2,0x2C83,0x1CE0,0x0CC1,0xEF1F
	.dhw 0xFF3E,0xCF5D,0xDF7C,0xAF9B,0xBFBA,0x8FD9,0x9FF8,0x6E17,0x7E36,0x4E55,0x5E74,0x2E93
	.dhw 0x3EB2,0x0ED1,0x1EF0
	.align 2
_crc16_ccitt_table.14:
	.ds (2)
	.dhw 0x1189,0x2312,0x329B,0x4624,0x57AD,0x6536,0x74BF,0x8C48,0x9DC1,0xAF5A,0xBED3,0xCA6C
	.dhw 0xDBE5,0xE97E,0xF8F7,0x1081,0x0108,0x3393,0x221A,0x56A5,0x472C,0x75B7,0x643E,0x9CC9
	.dhw 0x8D40,0xBFDB,0xAE52,0xDAED,0xCB64,0xF9FF,0xE876,0x2102,0x308B,0x0210,0x1399,0x6726
	.dhw 0x76AF,0x4434,0x55BD,0xAD4A,0xBCC3,0x8E58,0x9FD1,0xEB6E,0xFAE7,0xC87C,0xD9F5,0x3183
	.dhw 0x200A,0x1291,0x0318,0x77A7,0x662E,0x54B5,0x453C,0xBDCB,0xAC42,0x9ED9,0x8F50,0xFBEF
	.dhw 0xEA66,0xD8FD,0xC974,0x4204,0x538D,0x6116,0x709F,0x0420,0x15A9,0x2732,0x36BB,0xCE4C
	.dhw 0xDFC5,0xED5E,0xFCD7,0x8868,0x99E1,0xAB7A,0xBAF3,0x5285,0x430C,0x7197,0x601E,0x14A1
	.dhw 0x0528,0x37B3,0x263A,0xDECD,0xCF44,0xFDDF,0xEC56,0x98E9,0x8960,0xBBFB,0xAA72,0x6306
	.dhw 0x728F,0x4014,0x519D,0x2522,0x34AB,0x0630,0x17B9,0xEF4E,0xFEC7,0xCC5C,0xDDD5,0xA96A
	.dhw 0xB8E3,0x8A78,0x9BF1,0x7387,0x620E,0x5095,0x411C,0x35A3,0x242A,0x16B1,0x0738,0xFFCF
	.dhw 0xEE46,0xDCDD,0xCD54,0xB9EB,0xA862,0x9AF9,0x8B70,0x8408,0x9581,0xA71A,0xB693,0xC22C
	.dhw 0xD3A5,0xE13E,0xF0B7,0x0840,0x19C9,0x2B52,0x3ADB,0x4E64,0x5FED,0x6D76,0x7CFF,0x9489
	.dhw 0x8500,0xB79B,0xA612,0xD2AD,0xC324,0xF1BF,0xE036,0x18C1,0x0948,0x3BD3,0x2A5A,0x5EE5
	.dhw 0x4F6C,0x7DF7,0x6C7E,0xA50A,0xB483,0x8618,0x9791,0xE32E,0xF2A7,0xC03C,0xD1B5,0x2942
	.dhw 0x38CB,0x0A50,0x1BD9,0x6F66,0x7EEF,0x4C74,0x5DFD,0xB58B,0xA402,0x9699,0x8710,0xF3AF
	.dhw 0xE226,0xD0BD,0xC134,0x39C3,0x284A,0x1AD1,0x0B58,0x7FE7,0x6E6E,0x5CF5,0x4D7C,0xC60C
	.dhw 0xD785,0xE51E,0xF497,0x8028,0x91A1,0xA33A,0xB2B3,0x4A44,0x5BCD,0x6956,0x78DF,0x0C60
	.dhw 0x1DE9,0x2F72,0x3EFB,0xD68D,0xC704,0xF59F,0xE416,0x90A9,0x8120,0xB3BB,0xA232,0x5AC5
	.dhw 0x4B4C,0x79D7,0x685E,0x1CE1,0x0D68,0x3FF3,0x2E7A,0xE70E,0xF687,0xC41C,0xD595,0xA12A
	.dhw 0xB0A3,0x8238,0x93B1,0x6B46,0x7ACF,0x4854,0x59DD,0x2D62,0x3CEB,0x0E70,0x1FF9,0xF78F
	.dhw 0xE606,0xD49D,0xC514,0xB1AB,0xA022,0x92B9,0x8330,0x7BC7,0x6A4E,0x58D5,0x495C,0x3DE3
	.dhw 0x2C6A,0x1EF1,0x0F78
	.section .data, data
	.align 4
_SM2_Z256_MODP_MONT_ONE:
	.dw #_SM2_Z256_NEG_P
	.align 4
_g_pre_comp.6:
	.dw #_sm2_z256_pre_comp
