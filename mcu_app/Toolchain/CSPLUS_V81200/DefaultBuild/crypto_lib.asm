#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\vss\crypto_lib.c -oDefaultBuild\crypto_lib.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_24b70e4c095445f5a50d9222180a4a462n0wf3fk.kgm
#@	compiled at Fri Mar 27 09:49:56 2026

	.file "..\..\Bsw\Crypto\CRYPTO\vss\crypto_lib.c"

	$reg_mode 32
	.dbl_size 8

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
	.public _Crypto_SM4_Challenge_Response
	.public _Crypto_SM3_CALC
	.public _Crypto_SM3_Init
	.public _Crypto_SM3_Update
	.public _Crypto_SM3_Final
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 344
	prepare 0x000007F9, 0x00000060
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 346
	bz17 .BB.LABEL.1_21
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r20
	bz17 .BB.LABEL.1_21
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 351
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.1_21
.BB.LABEL.1_4:	; if_break_bb46
	movea 0x00000010, r0, r24
	mov 0x00000000, r7
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 357
	mov r24, r5
	add r2, r5
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_break_bb46
	st.b r7, 0x00000000[r2]
	add 0x00000001, r2
.BB.LABEL.1_6:	; if_break_bb46
	cmp r2, r5
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_7:	; if_break_bb46
	st.b r0, 0x00000020[r3]
	movea 0x00000030, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 360
	mov r25, r6
	mov r24, r8
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 361
	mov r23, r6
	mov r25, r7
	mov r25, r8
	jarl _SM4_EncryptBlock.1, r31
	movea 0x00000050, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 363
	mov r26, r6
	mov r25, r7
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 366
	tst1 0x00000007, 0x00000050[r3]
	setf 0x0000000A, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 365
	mov r26, r6
	jarl _LeftShiftOneBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 366
	cmp 0x00000000, r24
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000050, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 367
	ld.b 0x0000000F[r2], r2
	xori 0x00000087, r2, r2
	st.b r2, 0x0000005F[r3]
.BB.LABEL.1_9:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r24
	movea 0x00000010, r0, r8
	movea 0x00000050, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 369
	mov r24, r6
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 372
	tst1 0x00000007, 0x00000040[r3]
	setf 0x0000000A, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 371
	mov r24, r6
	jarl _LeftShiftOneBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 372
	cmp 0x00000000, r25
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 374
	ld.b 0x0000000F[r2], r2
	xori 0x00000087, r2, r2
	st.b r2, 0x0000004F[r3]
.BB.LABEL.1_11:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 377
	addi 0x0000000F, r21, r2
	shr 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 378
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 380
	cmov 0x00000002, 0x00000001, r2, r24
	mov 0x00000000, r25
	br9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 385
	mov r25, r8
	shl 0x00000004, r8
	add r22, r8
	movea 0x00000020, r3, r26
	movea 0x00000010, r3, r27
	mov r27, r6
	mov r26, r7
	jarl _Xor128.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 386
	mov r23, r6
	mov r27, r7
	mov r26, r8
	jarl _SM4_EncryptBlock.1, r31
	add 0x00000001, r25
.BB.LABEL.1_13:	; bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 383
	addi 0xFFFFFFFF, r24, r2
	cmp r2, r25
	bl9 .BB.LABEL.1_12
.BB.LABEL.1_14:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 388
	jarl _memset, r31
	mov 0x0FFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 389
	add r24, r25
	shl 0x00000004, r25
	subr r21, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 391
	addi 0xFFFFFFF0, r25, r0
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 393
	shl 0x00000004, r24
	add r22, r24
	addi 0xFFFFFFF0, r24, r7
	movea 0x00000050, r3, r8
	mov r3, r6
	br9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 397
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 399
	shl 0x00000004, r24
	add r22, r24
	addi 0xFFFFFFF0, r24, r7
	mov r3, r6
	mov r25, r8
	jarl _memcpy, r31
.BB.LABEL.1_19:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 401
	add r6, r25
	movea 0xFFFFFF80, r0, r2
	st.b r2, 0x00000000[r25]
	movea 0x00000040, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 402
	mov r6, r7
.BB.LABEL.1_20:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	jarl _Xor128.1, r31
	movea 0x00000010, r3, r21
	mov r3, r8
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 404
	mov r21, r6
	jarl _Xor128.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 405
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _SM4_EncryptBlock.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 407
	dispose 0x00000060, 0x000007F9, [r31]
.BB.LABEL.1_21:	; bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 408
	dispose 0x00000060, 0x000007F9, [r31]
_Crypto_SM4_Challenge_Response:
	.stack _Crypto_SM4_Challenge_Response = 60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 421
	prepare 0x00000679, 0x00000020
	mov r8, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 423
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_2:	; entry
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_3:	; if_break_bb
	mov 0x00000000, r22
	movea 0x00000010, r3, r23
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 428
	mov r2, r5
	add r23, r5
	mov r23, r6
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_break_bb
	st.b r22, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.2_5:	; if_break_bb
	cmp r6, r5
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; if_break_bb
	st.b r0, 0x00000010[r3]
	mov r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 429
	add r24, r2
	mov r24, r5
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_break_bb
	st.b r22, 0x00000000[r5]
	add 0x00000001, r5
.BB.LABEL.2_8:	; if_break_bb
	cmp r5, r2
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_9:	; if_break_bb
	st.b r0, 0x00000000[r3]
	mov 0x00000008, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 431
	mov r23, r6
	mov r25, r8
	jarl _memcpy, r31
	movea 0xFFFFFF80, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 432
	st.b r2, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 433
	mov r21, r6
	mov r23, r7
	mov r24, r8
	jarl _SM4_EncryptBlock.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 434
	mov r20, r6
	mov r24, r7
	mov r25, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 436
	mov r22, r10
	dispose 0x00000020, 0x00000679, [r31]
.BB.LABEL.2_10:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 437
	dispose 0x00000020, 0x00000679, [r31]
_Crypto_SM3_CALC:
	.stack _Crypto_SM3_CALC = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 449
	prepare 0x00000079, 0x00000068
	addi 0x00000000, r8, r20
	mov r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 451
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 456
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_break_bb24
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 462
	mov r23, r6
	jarl _Crypto_SM3_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 463
	mov r23, r6
	mov r22, r7
	mov r21, r8
	jarl _Crypto_SM3_Update, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 464
	mov r23, r6
	mov r20, r7
	jarl _Crypto_SM3_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 465
	dispose 0x00000068, 0x00000079, [r31]
.BB.LABEL.3_4:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 466
	dispose 0x00000068, 0x00000079, [r31]
_Crypto_SM3_Init:
	.stack _Crypto_SM3_Init = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 476
	mov 0x7380166F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 478
	st.w r2, 0x00000000[r6]
	mov 0x4914B2B9, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 479
	st.w r2, 0x00000004[r6]
	mov 0x172442D7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 480
	st.w r2, 0x00000008[r6]
	mov 0xDA8A0600, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 481
	st.w r2, 0x0000000C[r6]
	mov 0xA96F30BC, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 482
	st.w r2, 0x00000010[r6]
	mov 0x163138AA, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 483
	st.w r2, 0x00000014[r6]
	mov 0xE38DEE4D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 484
	st.w r2, 0x00000018[r6]
	mov 0xB0FB0E4E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 485
	st.w r2, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 486
	st.w r0, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 487
	st.w r0, 0x00000024[r6]
	jmp [r31]
_Crypto_SM3_Update:
	.stack _Crypto_SM3_Update = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 500
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 504
	ld.w 0x00000020[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 505
	mov r8, r5
	shl 0x00000003, r5
	mov r2, r9
	add r5, r9
	st.w r9, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 504
	shr 0x00000003, r2
	andi 0x0000003F, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 506
	cmp r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 504
	movea 0x00000020, r6, r5
	mov r8, r20
	mov r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 506
	bnc9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 508
	ld.w 0x00000004[r5], r6
	add 0x00000001, r6
	st.w r6, 0x00000004[r5]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 511
	ld.w 0x00000004[r5], r6
	mov r20, r7
	shr 0x0000001D, r7
	add r7, r6
	st.w r6, 0x00000004[r5]
	movea 0x00000040, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 512
	sub r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 514
	cmp r20, r23
	bnh9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_break_bb.if_break_bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.5_8
.BB.LABEL.5_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 516
	movea 0x00000028, r22, r24
	mov r2, r6
	add r24, r6
	mov r21, r7
	mov r23, r8
	jarl _memcpy, r31
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 517
	mov r22, r6
	mov r24, r7
	jarl _sm3_compress_blocks.1, r31
	br9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 520
	mov r21, r7
	add r23, r7
	mov 0x00000001, r8
	mov r22, r6
	jarl _sm3_compress_blocks.1, r31
	movea 0x00000040, r23, r23
.BB.LABEL.5_6:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 518
	movea 0x0000003F, r23, r2
	cmp r20, r2
	bl9 .BB.LABEL.5_5
.BB.LABEL.5_7:	; bb75.if_break_bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r2
.BB.LABEL.5_8:	; if_break_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 528
	add r2, r22
	movea 0x00000028, r22, r6
	mov r20, r8
	sub r23, r8
	mov r21, r7
	add r23, r7
	jarl _memcpy, r31
	dispose 0x00000000, 0x00000479, [r31]
_Crypto_SM3_Final:
	.stack _Crypto_SM3_Final = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 540
	prepare 0x00000061, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 545
	ld.w 0x00000024[r6], r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 546
	ld.w 0x00000024[r6], r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 547
	ld.w 0x00000024[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 548
	ld.w 0x00000024[r6], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 549
	ld.w 0x00000020[r6], r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 550
	ld.w 0x00000020[r6], r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 551
	ld.w 0x00000020[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 552
	ld.w 0x00000020[r6], r2
	st.b r2, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 554
	ld.w 0x00000020[r6], r2
	shr 0x00000003, r2
	andi 0x0000003F, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 555
	mov r6, r5
	add r2, r5
	movea 0xFFFFFF80, r0, r8
	st.b r8, 0x00000028[r5]
	add 0x00000001, r2
	movea 0x00000038, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 557
	cmp r5, r2
	mov r7, r20
	mov r6, r21
	bh9 .BB.LABEL.6_2
	br9 .BB.LABEL.6_5
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 561
	mov r21, r5
	add r2, r5
	st.b r0, 0x00000028[r5]
	add 0x00000001, r2
.BB.LABEL.6_2:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 559
	cmp r5, r2
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 563
	movea 0x00000028, r21, r7
	mov 0x00000001, r8
	mov r21, r6
	jarl _sm3_compress_blocks.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 569
	mov r21, r5
	add r2, r5
	st.b r0, 0x00000028[r5]
	add 0x00000001, r2
.BB.LABEL.6_5:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000038, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 567
	cmp r5, r2
	bl9 .BB.LABEL.6_4
.BB.LABEL.6_6:	; bb128.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; bb134
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 574
	add r2, r5
	ld.b 0x00000000[r5], r5
	add r2, r6
	st.b r5, 0x00000060[r6]
	add 0x00000001, r2
.BB.LABEL.6_8:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r21, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 572
	cmp 0x00000008, r2
	bl9 .BB.LABEL.6_7
.BB.LABEL.6_9:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 577
	movea 0x00000028, r21, r7
	mov 0x00000001, r8
	jarl _sm3_compress_blocks.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 581
	mov r2, r5
	shl 0x00000002, r5
	mov r20, r6
	add r5, r6
	add r21, r5
	ld.w 0x00000000[r5], r7
	shr 0x00000018, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 582
	ld.w 0x00000000[r5], r7
	shr 0x00000010, r7
	st.b r7, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 583
	ld.w 0x00000000[r5], r7
	shr 0x00000008, r7
	st.b r7, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 584
	ld.w 0x00000000[r5], r5
	st.b r5, 0x00000003[r6]
	add 0x00000001, r2
.BB.LABEL.6_11:	; bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 579
	cmp 0x00000008, r2
	bl9 .BB.LABEL.6_10
.BB.LABEL.6_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 586
	dispose 0x00000008, 0x00000061, [r31]
_Crypto_SHA256_CALC:
	.stack _Crypto_SHA256_CALC = 128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 598
	prepare 0x00000079, 0x0000006C
	addi 0x00000000, r8, r20
	mov r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 600
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 605
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_break_bb24
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 611
	mov r23, r6
	jarl _Crypto_SHA256_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 612
	mov r23, r6
	mov r22, r7
	mov r21, r8
	jarl _Crypto_SHA256_Update, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 613
	mov r23, r6
	mov r20, r7
	jarl _Crypto_SHA256_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 614
	dispose 0x0000006C, 0x00000079, [r31]
.BB.LABEL.7_4:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 615
	dispose 0x0000006C, 0x00000079, [r31]
_Crypto_SHA256_Init:
	.stack _Crypto_SHA256_Init = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 625
	mov 0x6A09E667, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 628
	st.w r2, 0x00000000[r6]
	mov 0xBB67AE85, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 629
	st.w r2, 0x00000004[r6]
	mov 0x3C6EF372, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 630
	st.w r2, 0x00000008[r6]
	mov 0xA54FF53A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 631
	st.w r2, 0x0000000C[r6]
	mov 0x510E527F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 632
	st.w r2, 0x00000010[r6]
	mov 0x9B05688C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 633
	st.w r2, 0x00000014[r6]
	mov 0x1F83D9AB, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 634
	st.w r2, 0x00000018[r6]
	mov 0x5BE0CD19, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 635
	st.w r2, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 637
	st.w r0, 0x00000024[r6]
	st.w r0, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 638
	st.w r0, 0x00000068[r6]
	jmp [r31]
_Crypto_SHA256_Update:
	.stack _Crypto_SHA256_Update = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 651
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 656
	ld.w 0x00000068[r6], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.9_5
.BB.LABEL.9_2:	; if_then_bb
	movea 0x00000040, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 657
	sub r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 658
	cmp r20, r23
	cmov 0x0000000B, r20, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 660
	add r22, r2
	movea 0x00000028, r2, r6
	mov r21, r7
	mov r23, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 661
	ld.w 0x00000068[r22], r2
	add r23, r2
	st.w r2, 0x00000068[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 665
	addi 0xFFFFFFC0, r2, r0
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_3:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 666
	movea 0x00000028, r22, r7
	mov r22, r6
	jarl _sha256_transform.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 667
	ld.w 0x00000024[r22], r2
	ld.w 0x00000020[r22], r5
	mov 0x00000000, r6
	addi 0x00000040, r5, r5
	adf 0x00000001, r6, r2, r2
	st.w r2, 0x00000024[r22]
	st.w r5, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 668
	st.w r0, 0x00000068[r22]
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 674
	mov r21, r7
	add r23, r7
	mov r22, r6
	jarl _sha256_transform.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 675
	ld.w 0x00000024[r22], r2
	ld.w 0x00000020[r22], r5
	mov 0x00000000, r6
	addi 0x00000040, r5, r5
	adf 0x00000001, r6, r2, r2
	st.w r2, 0x00000024[r22]
	st.w r5, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 676
	movea 0x00000040, r23, r23
.BB.LABEL.9_5:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 673
	movea 0x0000003F, r23, r2
	cmp r20, r2
	bl9 .BB.LABEL.9_4
.BB.LABEL.9_6:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 680
	mov r20, r24
	sub r23, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 681
	cmp r20, r23
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 682
	mov r21, r7
	add r23, r7
	movea 0x00000028, r22, r6
	mov r24, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 683
	st.w r24, 0x00000068[r22]
.BB.LABEL.9_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 685
	dispose 0x00000000, 0x00000479, [r31]
_Crypto_SHA256_Final:
	.stack _Crypto_SHA256_Final = 100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 695
	prepare 0x000007F9, 0x00000040
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 697
	ld.w 0x00000068[r20], r22
	ld.w 0x00000024[r20], r23
	ld.w 0x00000020[r20], r24
	movea 0xFFFFFF80, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 710
	st.b r2, 0x00000000[r3]
	movea 0x00000038, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 703
	cmp r25, r22
	movea 0x00000078, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 706
	cmov 0x00000001, r25, r2, r26
	sub r22, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 711
	addi 0xFFFFFFFF, r26, r8
	mov 0x00000000, r27
	movea 0x00000001, r3, r6
	mov r27, r7
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 697
	add r22, r24
	adf 0x00000001, r27, r23, r22
	shl 0x00000003, r22
	mov r24, r2
	shr 0x0000001D, r2
	or r2, r22
	shl 0x00000003, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 714
	ld.w 0x00000068[r20], r2
	mov r20, r5
	add r2, r5
	mov r3, r7
	cmp r25, r2
	movea 0x00000028, r5, r6
	bl9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 716
	sub r2, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 717
	movea 0x00000028, r20, r26
	mov r20, r6
	mov r26, r7
	jarl _sha256_transform.1, r31
	movea 0x00000038, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 720
	mov r26, r6
	jarl _memset, r31
	mov 0x00000007, r26
	br9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 723
	mov r26, r8
	jarl _memcpy, r31
	mov 0x00000007, r26
	br9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 728
	mov r20, r2
	add r26, r2
	st.b r24, 0x00000060[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 729
	shr 0x00000008, r24
	mov r22, r2
	shl 0x00000018, r2
	or r2, r24
	add 0xFFFFFFFF, r26
	shr 0x00000008, r22
.BB.LABEL.10_4:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 727
	cmp 0x00000000, r26
	bp9 .BB.LABEL.10_3
.BB.LABEL.10_5:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 732
	movea 0x00000028, r20, r7
	mov r20, r6
	jarl _sha256_transform.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 736
	mov r2, r5
	shl 0x00000002, r5
	mov r21, r6
	add r5, r6
	add r20, r5
	ld.w 0x00000000[r5], r7
	shr 0x00000018, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 737
	ld.w 0x00000000[r5], r7
	shr 0x00000010, r7
	st.b r7, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 738
	ld.w 0x00000000[r5], r7
	shr 0x00000008, r7
	st.b r7, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 739
	ld.w 0x00000000[r5], r5
	st.b r5, 0x00000003[r6]
	add 0x00000001, r2
.BB.LABEL.10_7:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 735
	cmp 0x00000008, r2
	blt9 .BB.LABEL.10_6
.BB.LABEL.10_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 741
	dispose 0x00000040, 0x000007F9, [r31]
_Crypto_SM2_Verify:
	.stack _Crypto_SM2_Verify = 212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 755
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFFBC, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x00000041, r0, r8
	ld.w 0x000000D4[r3], r23
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 761
	mov r23, r7
	jarl _sm2_z256_point_from_octets.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 774
	addi 0xFFFFFFE0, r21, r0
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_3:	; if_break_bb
	cmp 0x00000000, r22
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_4:	; if_break_bb
	cmp 0x00000000, r23
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_break_bb70
	mov r3, r21
	movea 0x00000040, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 780
	mov r21, r6
	jarl _memset, r31
	movea 0x00000020, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 781
	mov r21, r6
	mov r22, r7
	mov r23, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 782
	movea 0x00000020, r22, r7
	movea 0x00000020, r3, r6
	mov r23, r8
	jarl _memcpy, r31
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 785
	mov r20, r7
	mov r21, r8
	jarl _sm2_do_verify.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 786
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 790
	movea 0x00000044, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
.BB.LABEL.11_7:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 791
	movea 0x00000044, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_Crypto_ECC_Verify:
	.stack _Crypto_ECC_Verify = 252
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 802
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFF94, r3, r3
	ld.w 0x000000FC[r3], r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 807
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_2:	; entry
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_3:	; entry
	cmp 0x00000000, r22
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_4:	; entry
	cmp 0x00000000, r20
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 809
	st.w r2, 0x00000024[r3]
	movea 0x00000041, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 810
	st.w r2, 0x00000020[r3]
	movea 0x00000020, r3, r8
	movea 0x00000024, r3, r7
	movea 0x00000068, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 812
	jarl _secp256r1_public_key_from_bytes.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_9
.BB.LABEL.12_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	addi 0xFFFFFFC0, r20, r0
	bnz9 .BB.LABEL.12_9
.BB.LABEL.12_7:	; if_break_bb91
	movea 0x00000028, r3, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 818
	mov r20, r6
	mov r21, r7
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 819
	movea 0x00000020, r21, r7
	movea 0x00000048, r3, r6
	jarl _secp256r1_from_32bytes.1, r31
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 822
	mov r23, r6
	mov r22, r7
	mov r21, r8
	jarl _Crypto_SHA256_CALC, r31
	movea 0x00000068, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 824
	mov r21, r7
	mov r20, r8
	jarl _ecdsa_do_verify.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_9
.BB.LABEL.12_8:	; if_break_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 827
	movea 0x0000006C, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
.BB.LABEL.12_9:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 828
	movea 0x0000006C, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_Crypto_CcittFalseCrc16:
	.stack _Crypto_CcittFalseCrc16 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 838
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 843
	andi 0x0000FFFF, r6, r2
	shr 0x00000008, r2
	ld.bu 0x00000000[r7], r5
	xor r5, r2
	add r2, r2
	mov #_crc16_ccitt_false_table.13, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	shl 0x00000008, r6
	xor r2, r6
	add 0x00000001, r7
.BB.LABEL.13_2:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 842
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 846
	zxh r6
	mov r6, r10
	jmp [r31]
_Crypto_CcittCrc16:
	.stack _Crypto_CcittCrc16 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 856
	br9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 861
	andi 0x000000FF, r6, r2
	ld.bu 0x00000000[r7], r5
	xor r5, r2
	add r2, r2
	mov #_crc16_ccitt_table.14, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	zxh r6
	shr 0x00000008, r6
	xor r2, r6
	add 0x00000001, r7
.BB.LABEL.14_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 860
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 864
	zxh r6
	mov r6, r10
	jmp [r31]
_Crypto_Crc32Init:
	.stack _Crypto_Crc32Init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 874
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 877
	mov r7, r6
	mov r2, r7
	jarl _ReverseBits.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 882
	andi 0x00000001, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 883
	cmov 0x00000002, 0x00000000, r10, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 882
	shr 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 883
	xor r7, r5
	add 0x00000001, r6
.BB.LABEL.15_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 881
	andi 0x000000FF, r6, r7
	cmp 0x00000008, r7
	blt9 .BB.LABEL.15_1
.BB.LABEL.15_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 888
	mov r2, r6
	shl 0x00000002, r6
	add r20, r6
	st.w r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.15_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x000000FF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 879
	cmp r5, r2
	bh9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; bb37.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r6
	mov r2, r5
	br9 .BB.LABEL.15_2
.BB.LABEL.15_6:	; bb42
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 892
	dispose 0x00000000, 0x00000041, [r31]
_Crypto_Crc32:
	.stack _Crypto_Crc32 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 902
	br9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 908
	andi 0x000000FF, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 907
	ld.bu 0x00000000[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 908
	xor r5, r2
	shl 0x00000002, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	shr 0x00000008, r7
	xor r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 907
	add 0x00000001, r8
.BB.LABEL.16_2:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r9, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 906
	addi 0xFFFFFFFF, r2, r9
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 911
	mov r7, r10
	jmp [r31]
_Crypto_Crc32FinalResult:
	.stack _Crypto_Crc32FinalResult = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 921
	not r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 925
	jmp [r31]
_Crypto_Crc8:
	.stack _Crypto_Crc8 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 935
	br9 .BB.LABEL.18_4
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 942
	ld.bu 0x00000000[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 940
	add 0x00000001, r8
	mov 0x00000000, r5
	br9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 943
	andi 0x00000080, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 944
	cmov 0x00000002, 0x00000000, r7, r2
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 943
	add r6, r6
.BB.LABEL.18_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	xor r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 942
	andi 0x000000FF, r5, r2
	cmp 0x00000008, r2
	blt9 .BB.LABEL.18_2
.BB.LABEL.18_4:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r9, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 939
	addi 0xFFFFFFFF, r2, r9
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_1
.BB.LABEL.18_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 951
	not r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 952
	zxb r10
	jmp [r31]
_ReverseBits.1:
	.stack _ReverseBits.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 962
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 967
	andi 0x00000001, r6, r0
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 968
	addi 0xFFFFFFFF, r7, r5
	andi 0x000000FF, r2, r8
	sub r8, r5
	mov 0x00000001, r8
	shl r5, r8
	or r8, r10
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 970
	add 0x00000001, r2
	shr 0x00000001, r6
.BB.LABEL.19_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 966
	andi 0x000000FF, r2, r5
	cmp r7, r5
	bl9 .BB.LABEL.19_1
.BB.LABEL.19_5:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 973
	jmp [r31]
_sm4_tau.1:
	.stack _sm4_tau.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 983
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 985
	shr 0x00000018, r2
	mov #_SM4_SBOX.1, r5
	add r5, r2
	ld.b 0x00000000[r2], r10
	shl 0x00000018, r10
	mov r6, r2
	shr 0x00000010, r2
	zxb r2
	add r5, r2
	ld.bu 0x00000000[r2], r2
	shl 0x00000010, r2
	or r2, r10
	andi 0x0000FFFF, r6, r2
	shr 0x00000008, r2
	add r5, r2
	ld.bu 0x00000000[r2], r2
	shl 0x00000008, r2
	or r2, r10
	zxb r6
	add r6, r5
	ld.bu 0x00000000[r5], r2
	or r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 987
	jmp [r31]
_sm4_l_cal.1:
	.stack _sm4_l_cal.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 997
	rotl 0x00000002, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 999
	xor r6, r10
	rotl 0x0000000A, r6, r2
	xor r2, r10
	rotl 0x00000012, r6, r2
	xor r2, r10
	rotl 0x00000018, r6, r2
	xor r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1000
	jmp [r31]
_sm4_l_key.1:
	.stack _sm4_l_key.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1010
	rotl 0x0000000D, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1012
	xor r6, r10
	rotl 0x00000017, r6, r2
	xor r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1013
	jmp [r31]
_SM4_EncryptBlock.1:
	.stack _SM4_EncryptBlock.1 = 180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1026
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFFDC, r3, r3
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1030
	ld.b 0x00000000[r6], r2
	shl 0x00000018, r2
	ld.bu 0x00000001[r6], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000002[r6], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000003[r6], r5
	or r5, r2
	st.w r2, 0x00000090[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1031
	ld.b 0x00000004[r6], r2
	shl 0x00000018, r2
	ld.bu 0x00000005[r6], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000006[r6], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000007[r6], r5
	or r5, r2
	st.w r2, 0x00000094[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1032
	ld.b 0x00000008[r6], r2
	shl 0x00000018, r2
	ld.bu 0x00000009[r6], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000A[r6], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000B[r6], r5
	or r5, r2
	st.w r2, 0x00000098[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1033
	ld.b 0x0000000C[r6], r2
	shl 0x00000018, r2
	ld.bu 0x0000000D[r6], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000E[r6], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000F[r6], r5
	or r5, r2
	st.w r2, 0x0000009C[r3]
	mov 0xA3B1BAC6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1034
	ld.w 0x00000090[r3], r5
	xor r2, r5
	st.w r5, 0x00000090[r3]
	mov 0x56AA3350, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1035
	ld.w 0x00000094[r3], r5
	xor r2, r5
	st.w r5, 0x00000094[r3]
	mov 0x677D9197, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1036
	ld.w 0x00000098[r3], r5
	xor r2, r5
	st.w r5, 0x00000098[r3]
	mov 0xB27022DC, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1037
	ld.w 0x0000009C[r3], r5
	xor r2, r5
	mov 0x00000000, r22
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1041
	mov r22, r23
	shl 0x00000002, r23
	mov #_SM4_CK.3, r2
	add r23, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000098[r3], r5
	ld.w 0x00000094[r3], r6
	ld.w 0x0000009C[r3], r7
	xor r5, r6
	xor r7, r6
	xor r2, r6
	jarl _sm4_tau.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1042
	mov r10, r6
	jarl _sm4_l_key.1, r31
	ld.w 0x00000090[r3], r2
	xor r10, r2
	st.w r2, 0x00000090[r3]
	movea 0x00000010, r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1043
	add r23, r5
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1045
	ld.w 0x00000094[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1044
	ld.w 0x00000090[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1045
	st.w r2, 0x00000090[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1046
	ld.w 0x00000098[r3], r2
	st.w r2, 0x00000094[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1047
	ld.w 0x0000009C[r3], r2
	st.w r2, 0x00000098[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1048
	add 0x00000001, r22
.BB.LABEL.23_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	st.w r5, 0x0000009C[r3]
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1039
	cmp r2, r22
	bl9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1051
	ld.b 0x00000000[r20], r2
	shl 0x00000018, r2
	ld.bu 0x00000001[r20], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000002[r20], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000003[r20], r5
	or r5, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1052
	ld.b 0x00000004[r20], r2
	shl 0x00000018, r2
	ld.bu 0x00000005[r20], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000006[r20], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000007[r20], r5
	or r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1053
	ld.b 0x00000008[r20], r2
	shl 0x00000018, r2
	ld.bu 0x00000009[r20], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000A[r20], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000B[r20], r5
	or r5, r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1054
	ld.b 0x0000000C[r20], r2
	shl 0x00000018, r2
	ld.bu 0x0000000D[r20], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000E[r20], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000F[r20], r5
	or r5, r2
	mov 0x00000000, r20
	br9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1058
	mov r20, r2
	shl 0x00000002, r2
	movea 0x00000010, r3, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000008[r3], r5
	ld.w 0x00000004[r3], r6
	ld.w 0x0000000C[r3], r7
	xor r5, r6
	xor r7, r6
	xor r2, r6
	jarl _sm4_tau.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1059
	mov r10, r6
	jarl _sm4_l_cal.1, r31
	ld.w 0x00000000[r3], r2
	xor r10, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1061
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1062
	ld.w 0x00000008[r3], r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1063
	ld.w 0x0000000C[r3], r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1064
	add 0x00000001, r20
.BB.LABEL.23_5:	; bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	st.w r2, 0x0000000C[r3]
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1056
	cmp r2, r20
	bl9 .BB.LABEL.23_4
.BB.LABEL.23_6:	; bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1067
	ld.w 0x0000000C[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r21]
	ld.w 0x0000000C[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r21]
	ld.w 0x0000000C[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r21]
	ld.w 0x0000000C[r3], r2
	st.b r2, 0x00000003[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1068
	ld.w 0x00000008[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r21]
	ld.w 0x00000008[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r21]
	ld.w 0x00000008[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r21]
	ld.w 0x00000008[r3], r2
	st.b r2, 0x00000007[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1069
	ld.w 0x00000004[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000008[r21]
	ld.w 0x00000004[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000009[r21]
	ld.w 0x00000004[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000A[r21]
	ld.w 0x00000004[r3], r2
	st.b r2, 0x0000000B[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1070
	ld.w 0x00000000[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000C[r21]
	ld.w 0x00000000[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000D[r21]
	ld.w 0x00000000[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000E[r21]
	ld.w 0x00000000[r3], r2
	st.b r2, 0x0000000F[r21]
	movea 0x00000024, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_LeftShiftOneBit.1:
	.stack _LeftShiftOneBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1081
	mov 0x00000000, r2
	mov 0x0000000F, r5
	br9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1086
	mov r5, r8
	sxb r8
	add r6, r8
	ld.bu 0x00000000[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1087
	mov r2, r9
	add r9, r9
	or r7, r9
	st.b r9, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1086
	zxb r2
	shr 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1088
	add 0xFFFFFFFF, r5
.BB.LABEL.24_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1084
	mov r5, r2
	sxb r2
	cmp 0x00000000, r2
	bp9 .BB.LABEL.24_1
.BB.LABEL.24_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1090
	jmp [r31]
_Xor128.1:
	.stack _Xor128.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1103
	mov 0x00000000, r2
	br9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1107
	andi 0x000000FF, r2, r5
	mov r7, r9
	add r5, r9
	ld.b 0x00000000[r9], r9
	mov r8, r10
	add r5, r10
	ld.b 0x00000000[r10], r10
	xor r10, r9
	add r6, r5
	st.b r9, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.25_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1105
	andi 0x000000FF, r2, r5
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.25_1
.BB.LABEL.25_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1109
	jmp [r31]
_sm3_compress_blocks.1:
	.stack _sm3_compress_blocks.1 = 704
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1121
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFDEC, r3, r3
	mov r6, r2
	st.w r2, 0x00000004[r3]
	mov r8, r2
	st.w r2, 0x0000017C[r3]
	mov r7, r2
	jr .BB.LABEL.26_5
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	ld.w 0x00000004[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1137
	ld.w 0x0000001C[r2], r5
	st.w r5, 0x00000178[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1136
	ld.w 0x00000018[r2], r5
	st.w r5, 0x00000134[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1135
	ld.w 0x00000014[r2], r5
	st.w r5, 0x0000012C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1134
	ld.w 0x00000010[r2], r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1133
	ld.w 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1132
	ld.w 0x00000008[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1131
	ld.w 0x00000004[r2], r7
	st.w r7, 0x0000013C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1130
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000014[r3]
	mov 0x00000000, r2
	br9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1141
	mov r2, r7
	shl 0x00000002, r7
	ld.w 0x00000124[r3], r8
	add r7, r8
	ld.b 0x00000000[r8], r9
	shl 0x00000018, r9
	ld.bu 0x00000001[r8], r10
	shl 0x00000010, r10
	or r10, r9
	ld.bu 0x00000002[r8], r10
	shl 0x00000008, r10
	or r10, r9
	ld.bu 0x00000003[r8], r8
	or r8, r9
	movea 0x00000180, r3, r8
	add r7, r8
	st.w r9, 0x00000000[r8]
	add 0x00000001, r2
.BB.LABEL.26_3:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1139
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.26_2
.BB.LABEL.26_4:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1144
	ld.w 0x00000180[r3], r2
	ld.w 0x0000019C[r3], r7
	xor r2, r7
	ld.w 0x000001B4[r3], r8
	rotl 0x0000000F, r8, r9
	xor r7, r9
	mov r9, r10
	shl 0x0000000F, r10
	mov r8, r11
	shl 0x0000000F, r11
	xor r7, r11
	shr 0x00000011, r11
	or r11, r10
	xor r9, r10
	shr 0x00000011, r8
	xor r8, r7
	shl 0x00000017, r7
	shr 0x00000009, r9
	or r9, r7
	xor r7, r10
	ld.w 0x0000018C[r3], r7
	rotl 0x00000007, r7, r7
	xor r7, r10
	ld.w 0x000001A8[r3], r7
	xor r7, r10
	ld.w 0x00000190[r3], r7
	st.w r7, 0x00000144[r3]
	st.w r10, 0x000001C0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	ld.w 0x00000184[r3], r7
	ld.w 0x000001A0[r3], r8
	xor r7, r8
	ld.w 0x000001B8[r3], r9
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
	ld.w 0x00000190[r3], r8
	rotl 0x00000007, r8, r8
	xor r8, r11
	ld.w 0x000001AC[r3], r8
	xor r8, r11
	ld.w 0x00000194[r3], r8
	st.w r8, 0x0000014C[r3]
	st.w r11, 0x000001C4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	ld.w 0x00000188[r3], r8
	ld.w 0x000001A4[r3], r9
	xor r8, r9
	ld.w 0x000001BC[r3], r10
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
	ld.w 0x00000194[r3], r9
	rotl 0x00000007, r9, r9
	xor r9, r12
	ld.w 0x000001B0[r3], r9
	xor r9, r12
	ld.w 0x00000198[r3], r9
	st.w r9, 0x00000154[r3]
	st.w r12, 0x000001C8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	ld.w 0x0000018C[r3], r9
	ld.w 0x000001A8[r3], r10
	xor r9, r10
	ld.w 0x000001C0[r3], r11
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
	ld.w 0x00000198[r3], r10
	rotl 0x00000007, r10, r10
	xor r10, r13
	ld.w 0x000001B4[r3], r10
	xor r10, r13
	ld.w 0x0000019C[r3], r10
	st.w r10, 0x0000015C[r3]
	st.w r13, 0x000001CC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	ld.w 0x00000190[r3], r10
	ld.w 0x000001AC[r3], r11
	xor r10, r11
	ld.w 0x000001C4[r3], r12
	rotl 0x0000000F, r12, r13
	xor r11, r13
	mov r13, r14
	shl 0x0000000F, r14
	mov r12, r15
	shl 0x0000000F, r15
	xor r11, r15
	shr 0x00000011, r15
	or r15, r14
	xor r13, r14
	shr 0x00000011, r12
	xor r12, r11
	shl 0x00000017, r11
	shr 0x00000009, r13
	or r13, r11
	xor r11, r14
	ld.w 0x0000019C[r3], r11
	rotl 0x00000007, r11, r11
	xor r11, r14
	ld.w 0x000001B8[r3], r11
	xor r11, r14
	ld.w 0x000001A0[r3], r11
	st.w r11, 0x00000164[r3]
	st.w r14, 0x000001D0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	ld.w 0x00000194[r3], r11
	ld.w 0x000001B0[r3], r12
	xor r11, r12
	ld.w 0x000001C8[r3], r13
	rotl 0x0000000F, r13, r14
	xor r12, r14
	mov r14, r15
	shl 0x0000000F, r15
	mov r13, r16
	shl 0x0000000F, r16
	xor r12, r16
	shr 0x00000011, r16
	or r16, r15
	xor r14, r15
	shr 0x00000011, r13
	xor r13, r12
	shl 0x00000017, r12
	shr 0x00000009, r14
	or r14, r12
	xor r12, r15
	ld.w 0x000001A0[r3], r12
	rotl 0x00000007, r12, r12
	xor r12, r15
	ld.w 0x000001BC[r3], r12
	xor r12, r15
	ld.w 0x000001A4[r3], r12
	st.w r12, 0x0000016C[r3]
	st.w r15, 0x000001D4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	ld.w 0x00000198[r3], r12
	ld.w 0x000001B4[r3], r13
	xor r12, r13
	ld.w 0x000001CC[r3], r14
	rotl 0x0000000F, r14, r15
	xor r13, r15
	mov r15, r16
	shl 0x0000000F, r16
	mov r14, r17
	shl 0x0000000F, r17
	xor r13, r17
	shr 0x00000011, r17
	or r17, r16
	xor r15, r16
	shr 0x00000011, r14
	xor r14, r13
	shl 0x00000017, r13
	shr 0x00000009, r15
	or r15, r13
	xor r13, r16
	ld.w 0x000001A4[r3], r13
	rotl 0x00000007, r13, r13
	xor r13, r16
	ld.w 0x000001C0[r3], r13
	xor r13, r16
	ld.w 0x000001A8[r3], r13
	st.w r13, 0x00000174[r3]
	st.w r16, 0x000001D8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	ld.w 0x0000019C[r3], r13
	ld.w 0x000001B8[r3], r14
	xor r13, r14
	ld.w 0x000001D0[r3], r15
	rotl 0x0000000F, r15, r16
	xor r14, r16
	mov r16, r17
	shl 0x0000000F, r17
	mov r15, r18
	shl 0x0000000F, r18
	xor r14, r18
	shr 0x00000011, r18
	or r18, r17
	xor r16, r17
	shr 0x00000011, r15
	xor r15, r14
	shl 0x00000017, r14
	shr 0x00000009, r16
	or r16, r14
	xor r14, r17
	ld.w 0x000001A8[r3], r14
	rotl 0x00000007, r14, r14
	xor r14, r17
	ld.w 0x000001C4[r3], r14
	xor r14, r17
	ld.w 0x000001AC[r3], r14
	st.w r14, 0x00000170[r3]
	st.w r17, 0x000001DC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	ld.w 0x000001A0[r3], r14
	ld.w 0x000001BC[r3], r15
	xor r14, r15
	ld.w 0x000001D4[r3], r16
	rotl 0x0000000F, r16, r17
	xor r15, r17
	mov r17, r18
	shl 0x0000000F, r18
	mov r16, r19
	shl 0x0000000F, r19
	xor r15, r19
	shr 0x00000011, r19
	or r19, r18
	xor r17, r18
	shr 0x00000011, r16
	xor r16, r15
	shl 0x00000017, r15
	shr 0x00000009, r17
	or r17, r15
	xor r15, r18
	ld.w 0x000001AC[r3], r15
	rotl 0x00000007, r15, r15
	xor r15, r18
	ld.w 0x000001C8[r3], r15
	xor r15, r18
	ld.w 0x000001B0[r3], r15
	st.w r15, 0x00000168[r3]
	st.w r18, 0x000001E0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	ld.w 0x000001A4[r3], r15
	ld.w 0x000001C0[r3], r16
	xor r15, r16
	ld.w 0x000001D8[r3], r17
	rotl 0x0000000F, r17, r18
	xor r16, r18
	mov r18, r19
	shl 0x0000000F, r19
	mov r17, r20
	shl 0x0000000F, r20
	xor r16, r20
	shr 0x00000011, r20
	or r20, r19
	xor r18, r19
	shr 0x00000011, r17
	xor r17, r16
	shl 0x00000017, r16
	shr 0x00000009, r18
	or r18, r16
	xor r16, r19
	ld.w 0x000001B0[r3], r16
	rotl 0x00000007, r16, r16
	xor r16, r19
	ld.w 0x000001CC[r3], r16
	xor r16, r19
	ld.w 0x000001B4[r3], r16
	st.w r16, 0x00000160[r3]
	st.w r19, 0x000001E4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	ld.w 0x000001A8[r3], r16
	ld.w 0x000001C4[r3], r17
	xor r16, r17
	ld.w 0x000001DC[r3], r18
	rotl 0x0000000F, r18, r19
	xor r17, r19
	mov r19, r20
	shl 0x0000000F, r20
	mov r18, r21
	shl 0x0000000F, r21
	xor r17, r21
	shr 0x00000011, r21
	or r21, r20
	xor r19, r20
	shr 0x00000011, r18
	xor r18, r17
	shl 0x00000017, r17
	shr 0x00000009, r19
	or r19, r17
	xor r17, r20
	ld.w 0x000001B4[r3], r17
	rotl 0x00000007, r17, r17
	xor r17, r20
	ld.w 0x000001D0[r3], r17
	xor r17, r20
	ld.w 0x000001B8[r3], r17
	st.w r17, 0x00000158[r3]
	st.w r20, 0x000001E8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	ld.w 0x000001AC[r3], r17
	ld.w 0x000001C8[r3], r18
	xor r17, r18
	ld.w 0x000001E0[r3], r19
	rotl 0x0000000F, r19, r20
	xor r18, r20
	mov r20, r21
	shl 0x0000000F, r21
	mov r19, r22
	shl 0x0000000F, r22
	xor r18, r22
	shr 0x00000011, r22
	or r22, r21
	xor r20, r21
	shr 0x00000011, r19
	xor r19, r18
	shl 0x00000017, r18
	shr 0x00000009, r20
	or r20, r18
	xor r18, r21
	ld.w 0x000001B8[r3], r18
	rotl 0x00000007, r18, r18
	xor r18, r21
	ld.w 0x000001D4[r3], r18
	xor r18, r21
	ld.w 0x000001BC[r3], r18
	st.w r18, 0x00000150[r3]
	st.w r21, 0x000001EC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	ld.w 0x000001B0[r3], r18
	ld.w 0x000001CC[r3], r19
	xor r18, r19
	ld.w 0x000001E4[r3], r20
	rotl 0x0000000F, r20, r21
	xor r19, r21
	mov r21, r22
	shl 0x0000000F, r22
	mov r20, r23
	shl 0x0000000F, r23
	xor r19, r23
	shr 0x00000011, r23
	or r23, r22
	xor r21, r22
	shr 0x00000011, r20
	xor r20, r19
	shl 0x00000017, r19
	shr 0x00000009, r21
	or r21, r19
	xor r19, r22
	ld.w 0x000001BC[r3], r19
	rotl 0x00000007, r19, r19
	xor r19, r22
	ld.w 0x000001D8[r3], r19
	xor r19, r22
	ld.w 0x000001C0[r3], r19
	st.w r19, 0x00000148[r3]
	st.w r22, 0x000001F0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	ld.w 0x000001B4[r3], r19
	ld.w 0x000001D0[r3], r20
	xor r19, r20
	ld.w 0x000001E8[r3], r21
	rotl 0x0000000F, r21, r22
	xor r20, r22
	mov r22, r23
	shl 0x0000000F, r23
	mov r21, r24
	shl 0x0000000F, r24
	xor r20, r24
	shr 0x00000011, r24
	or r24, r23
	xor r22, r23
	shr 0x00000011, r21
	xor r21, r20
	shl 0x00000017, r20
	shr 0x00000009, r22
	or r22, r20
	xor r20, r23
	ld.w 0x000001C0[r3], r20
	rotl 0x00000007, r20, r20
	xor r20, r23
	ld.w 0x000001DC[r3], r20
	xor r20, r23
	ld.w 0x000001C4[r3], r20
	st.w r20, 0x00000140[r3]
	st.w r23, 0x000001F4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	ld.w 0x000001B8[r3], r20
	ld.w 0x000001D4[r3], r21
	xor r20, r21
	ld.w 0x000001EC[r3], r22
	rotl 0x0000000F, r22, r23
	xor r21, r23
	mov r23, r24
	shl 0x0000000F, r24
	mov r22, r25
	shl 0x0000000F, r25
	xor r21, r25
	shr 0x00000011, r25
	or r25, r24
	xor r23, r24
	shr 0x00000011, r22
	xor r22, r21
	shl 0x00000017, r21
	shr 0x00000009, r23
	or r23, r21
	xor r21, r24
	ld.w 0x000001C4[r3], r21
	rotl 0x00000007, r21, r21
	xor r21, r24
	ld.w 0x000001E0[r3], r21
	xor r21, r24
	ld.w 0x000001C8[r3], r21
	st.w r21, 0x00000138[r3]
	st.w r24, 0x000001F8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	ld.w 0x000001BC[r3], r21
	ld.w 0x000001D8[r3], r22
	xor r21, r22
	ld.w 0x000001F0[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001C8[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001E4[r3], r22
	xor r22, r25
	ld.w 0x000001CC[r3], r22
	st.w r22, 0x00000130[r3]
	st.w r25, 0x000001FC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	ld.w 0x000001C0[r3], r22
	st.w r22, 0x00000008[r3]
	ld.w 0x000001DC[r3], r22
	ld.w 0x00000008[r3], r23
	xor r23, r22
	ld.w 0x000001F4[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001CC[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001E8[r3], r22
	xor r22, r25
	ld.w 0x000001D0[r3], r22
	st.w r22, 0x00000128[r3]
	st.w r25, 0x00000200[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	ld.w 0x000001C4[r3], r22
	st.w r22, 0x00000010[r3]
	ld.w 0x000001E0[r3], r22
	ld.w 0x00000010[r3], r23
	xor r23, r22
	ld.w 0x000001F8[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001D0[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001EC[r3], r22
	xor r22, r25
	ld.w 0x000001D4[r3], r22
	st.w r22, 0x00000120[r3]
	st.w r25, 0x00000204[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	ld.w 0x000001C8[r3], r22
	st.w r22, 0x0000011C[r3]
	ld.w 0x000001E4[r3], r22
	ld.w 0x0000011C[r3], r23
	xor r23, r22
	ld.w 0x000001FC[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001D4[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001F0[r3], r22
	xor r22, r25
	ld.w 0x000001D8[r3], r22
	st.w r22, 0x00000118[r3]
	st.w r25, 0x00000208[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	ld.w 0x000001CC[r3], r22
	st.w r22, 0x00000114[r3]
	ld.w 0x000001E8[r3], r22
	ld.w 0x00000114[r3], r23
	xor r23, r22
	ld.w 0x00000200[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001D8[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001F4[r3], r22
	xor r22, r25
	ld.w 0x000001DC[r3], r22
	st.w r22, 0x00000110[r3]
	st.w r25, 0x0000020C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	ld.w 0x000001D0[r3], r22
	st.w r22, 0x0000010C[r3]
	ld.w 0x000001EC[r3], r22
	ld.w 0x0000010C[r3], r23
	xor r23, r22
	ld.w 0x00000204[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001DC[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001F8[r3], r22
	xor r22, r25
	ld.w 0x000001E0[r3], r22
	st.w r22, 0x00000108[r3]
	st.w r25, 0x00000210[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	ld.w 0x000001D4[r3], r22
	st.w r22, 0x00000104[r3]
	ld.w 0x000001F0[r3], r22
	ld.w 0x00000104[r3], r23
	xor r23, r22
	ld.w 0x00000208[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001E0[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x000001FC[r3], r22
	xor r22, r25
	ld.w 0x000001E4[r3], r22
	st.w r22, 0x00000100[r3]
	st.w r25, 0x00000214[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	ld.w 0x000001D8[r3], r22
	st.w r22, 0x000000FC[r3]
	ld.w 0x000001F4[r3], r22
	ld.w 0x000000FC[r3], r23
	xor r23, r22
	ld.w 0x0000020C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001E4[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000200[r3], r22
	xor r22, r25
	ld.w 0x000001E8[r3], r22
	st.w r22, 0x000000F8[r3]
	st.w r25, 0x00000218[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	ld.w 0x000001DC[r3], r22
	st.w r22, 0x000000F4[r3]
	ld.w 0x000001F8[r3], r22
	ld.w 0x000000F4[r3], r23
	xor r23, r22
	ld.w 0x00000210[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001E8[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000204[r3], r22
	xor r22, r25
	ld.w 0x000001EC[r3], r22
	st.w r22, 0x000000F0[r3]
	st.w r25, 0x0000021C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	ld.w 0x000001E0[r3], r22
	st.w r22, 0x000000EC[r3]
	ld.w 0x000001FC[r3], r22
	ld.w 0x000000EC[r3], r23
	xor r23, r22
	ld.w 0x00000214[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001EC[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000208[r3], r22
	xor r22, r25
	ld.w 0x000001F0[r3], r22
	st.w r22, 0x000000E8[r3]
	st.w r25, 0x00000220[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	ld.w 0x000001E4[r3], r22
	st.w r22, 0x000000E4[r3]
	ld.w 0x00000200[r3], r22
	ld.w 0x000000E4[r3], r23
	xor r23, r22
	ld.w 0x00000218[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001F0[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000020C[r3], r22
	xor r22, r25
	ld.w 0x000001F4[r3], r22
	st.w r22, 0x000000E0[r3]
	st.w r25, 0x00000224[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	ld.w 0x000001E8[r3], r22
	st.w r22, 0x000000DC[r3]
	ld.w 0x00000204[r3], r22
	ld.w 0x000000DC[r3], r23
	xor r23, r22
	ld.w 0x0000021C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001F4[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000210[r3], r22
	xor r22, r25
	ld.w 0x000001F8[r3], r22
	st.w r22, 0x000000D8[r3]
	st.w r25, 0x00000228[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	ld.w 0x000001EC[r3], r22
	st.w r22, 0x000000D4[r3]
	ld.w 0x00000208[r3], r22
	ld.w 0x000000D4[r3], r23
	xor r23, r22
	ld.w 0x00000220[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001F8[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000214[r3], r22
	xor r22, r25
	ld.w 0x000001FC[r3], r22
	st.w r22, 0x000000D0[r3]
	st.w r25, 0x0000022C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	ld.w 0x000001F0[r3], r22
	st.w r22, 0x000000CC[r3]
	ld.w 0x0000020C[r3], r22
	ld.w 0x000000CC[r3], r23
	xor r23, r22
	ld.w 0x00000224[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x000001FC[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000218[r3], r22
	xor r22, r25
	ld.w 0x00000200[r3], r22
	st.w r22, 0x000000C8[r3]
	st.w r25, 0x00000230[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	ld.w 0x000001F4[r3], r22
	st.w r22, 0x000000C4[r3]
	ld.w 0x00000210[r3], r22
	ld.w 0x000000C4[r3], r23
	xor r23, r22
	ld.w 0x00000228[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000200[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000021C[r3], r22
	xor r22, r25
	ld.w 0x00000204[r3], r22
	st.w r22, 0x000000C0[r3]
	st.w r25, 0x00000234[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	ld.w 0x000001F8[r3], r22
	st.w r22, 0x000000BC[r3]
	ld.w 0x00000214[r3], r22
	ld.w 0x000000BC[r3], r23
	xor r23, r22
	ld.w 0x0000022C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000204[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000220[r3], r22
	xor r22, r25
	ld.w 0x00000208[r3], r22
	st.w r22, 0x000000B8[r3]
	st.w r25, 0x00000238[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	ld.w 0x000001FC[r3], r22
	st.w r22, 0x000000B4[r3]
	ld.w 0x00000218[r3], r22
	ld.w 0x000000B4[r3], r23
	xor r23, r22
	ld.w 0x00000230[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000208[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000224[r3], r22
	xor r22, r25
	ld.w 0x0000020C[r3], r22
	st.w r22, 0x000000B0[r3]
	st.w r25, 0x0000023C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	ld.w 0x00000200[r3], r22
	st.w r22, 0x000000AC[r3]
	ld.w 0x0000021C[r3], r22
	ld.w 0x000000AC[r3], r23
	xor r23, r22
	ld.w 0x00000234[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x0000020C[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000228[r3], r22
	xor r22, r25
	ld.w 0x00000210[r3], r22
	st.w r22, 0x000000A8[r3]
	st.w r25, 0x00000240[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	ld.w 0x00000204[r3], r22
	st.w r22, 0x000000A4[r3]
	ld.w 0x00000220[r3], r22
	ld.w 0x000000A4[r3], r23
	xor r23, r22
	ld.w 0x00000238[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000210[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000022C[r3], r22
	xor r22, r25
	ld.w 0x00000214[r3], r22
	st.w r22, 0x000000A0[r3]
	st.w r25, 0x00000244[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	ld.w 0x00000208[r3], r22
	st.w r22, 0x0000009C[r3]
	ld.w 0x00000224[r3], r22
	ld.w 0x0000009C[r3], r23
	xor r23, r22
	ld.w 0x0000023C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000214[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000230[r3], r22
	xor r22, r25
	ld.w 0x00000218[r3], r22
	st.w r22, 0x00000098[r3]
	st.w r25, 0x00000248[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	ld.w 0x0000020C[r3], r22
	st.w r22, 0x00000094[r3]
	ld.w 0x00000228[r3], r22
	ld.w 0x00000094[r3], r23
	xor r23, r22
	ld.w 0x00000240[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000218[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000234[r3], r22
	xor r22, r25
	ld.w 0x0000021C[r3], r22
	st.w r22, 0x00000090[r3]
	st.w r25, 0x0000024C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	ld.w 0x00000210[r3], r22
	st.w r22, 0x0000008C[r3]
	ld.w 0x0000022C[r3], r22
	ld.w 0x0000008C[r3], r23
	xor r23, r22
	ld.w 0x00000244[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x0000021C[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000238[r3], r22
	xor r22, r25
	ld.w 0x00000220[r3], r22
	st.w r22, 0x00000088[r3]
	st.w r25, 0x00000250[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	ld.w 0x00000214[r3], r22
	st.w r22, 0x00000084[r3]
	ld.w 0x00000230[r3], r22
	ld.w 0x00000084[r3], r23
	xor r23, r22
	ld.w 0x00000248[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000220[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000023C[r3], r22
	xor r22, r25
	ld.w 0x00000224[r3], r22
	st.w r22, 0x00000080[r3]
	st.w r25, 0x00000254[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	ld.w 0x00000218[r3], r22
	st.w r22, 0x0000007C[r3]
	ld.w 0x00000234[r3], r22
	ld.w 0x0000007C[r3], r23
	xor r23, r22
	ld.w 0x0000024C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000224[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000240[r3], r22
	xor r22, r25
	ld.w 0x00000228[r3], r22
	st.w r22, 0x00000078[r3]
	st.w r25, 0x00000258[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	ld.w 0x0000021C[r3], r22
	st.w r22, 0x00000074[r3]
	ld.w 0x00000238[r3], r22
	ld.w 0x00000074[r3], r23
	xor r23, r22
	ld.w 0x00000250[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000228[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000244[r3], r22
	xor r22, r25
	ld.w 0x0000022C[r3], r22
	st.w r22, 0x00000070[r3]
	st.w r25, 0x0000025C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	ld.w 0x00000220[r3], r22
	st.w r22, 0x0000006C[r3]
	ld.w 0x0000023C[r3], r22
	ld.w 0x0000006C[r3], r23
	xor r23, r22
	ld.w 0x00000254[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x0000022C[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000248[r3], r22
	xor r22, r25
	ld.w 0x00000230[r3], r22
	st.w r22, 0x00000068[r3]
	st.w r25, 0x00000260[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	ld.w 0x00000224[r3], r22
	st.w r22, 0x00000064[r3]
	ld.w 0x00000240[r3], r22
	ld.w 0x00000064[r3], r23
	xor r23, r22
	ld.w 0x00000258[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000230[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000024C[r3], r22
	xor r22, r25
	ld.w 0x00000234[r3], r22
	st.w r22, 0x00000060[r3]
	st.w r25, 0x00000264[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	ld.w 0x00000228[r3], r22
	st.w r22, 0x0000005C[r3]
	ld.w 0x00000244[r3], r22
	ld.w 0x0000005C[r3], r23
	xor r23, r22
	ld.w 0x0000025C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000234[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000250[r3], r22
	xor r22, r25
	ld.w 0x00000238[r3], r22
	st.w r22, 0x00000058[r3]
	st.w r25, 0x00000268[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	ld.w 0x0000022C[r3], r22
	st.w r22, 0x00000054[r3]
	ld.w 0x00000248[r3], r22
	ld.w 0x00000054[r3], r23
	xor r23, r22
	ld.w 0x00000260[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000238[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000254[r3], r22
	xor r22, r25
	ld.w 0x0000023C[r3], r22
	st.w r22, 0x00000050[r3]
	st.w r25, 0x0000026C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	ld.w 0x00000230[r3], r22
	st.w r22, 0x0000004C[r3]
	ld.w 0x0000024C[r3], r22
	ld.w 0x0000004C[r3], r23
	xor r23, r22
	ld.w 0x00000264[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x0000023C[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000258[r3], r22
	xor r22, r25
	ld.w 0x00000240[r3], r22
	st.w r22, 0x00000048[r3]
	st.w r25, 0x00000270[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	ld.w 0x00000234[r3], r22
	st.w r22, 0x00000044[r3]
	ld.w 0x00000250[r3], r22
	ld.w 0x00000044[r3], r23
	xor r23, r22
	ld.w 0x00000268[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000240[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000025C[r3], r22
	xor r22, r25
	ld.w 0x00000244[r3], r22
	st.w r22, 0x00000040[r3]
	st.w r25, 0x00000274[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	ld.w 0x00000238[r3], r22
	st.w r22, 0x0000003C[r3]
	ld.w 0x00000254[r3], r22
	ld.w 0x0000003C[r3], r23
	xor r23, r22
	ld.w 0x0000026C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000244[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000260[r3], r22
	xor r22, r25
	ld.w 0x00000248[r3], r22
	st.w r22, 0x00000038[r3]
	st.w r25, 0x00000278[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	ld.w 0x0000023C[r3], r22
	st.w r22, 0x00000034[r3]
	ld.w 0x00000258[r3], r22
	ld.w 0x00000034[r3], r23
	xor r23, r22
	ld.w 0x00000270[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000248[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000264[r3], r22
	xor r22, r25
	ld.w 0x0000024C[r3], r22
	st.w r22, 0x00000030[r3]
	st.w r25, 0x0000027C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	ld.w 0x00000240[r3], r22
	st.w r22, 0x0000002C[r3]
	ld.w 0x0000025C[r3], r22
	ld.w 0x0000002C[r3], r23
	xor r23, r22
	ld.w 0x00000274[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x0000024C[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000268[r3], r22
	xor r22, r25
	ld.w 0x00000250[r3], r22
	st.w r22, 0x00000028[r3]
	st.w r25, 0x00000280[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	ld.w 0x00000244[r3], r22
	st.w r22, 0x00000024[r3]
	ld.w 0x00000260[r3], r22
	ld.w 0x00000024[r3], r23
	xor r23, r22
	ld.w 0x00000278[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000250[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x0000026C[r3], r22
	xor r22, r25
	ld.w 0x00000254[r3], r22
	st.w r22, 0x00000020[r3]
	st.w r25, 0x00000284[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	ld.w 0x00000248[r3], r22
	st.w r22, 0x0000001C[r3]
	ld.w 0x00000264[r3], r22
	ld.w 0x0000001C[r3], r23
	xor r23, r22
	ld.w 0x0000027C[r3], r23
	rotl 0x0000000F, r23, r24
	xor r22, r24
	mov r24, r25
	shl 0x0000000F, r25
	mov r23, r26
	shl 0x0000000F, r26
	xor r22, r26
	shr 0x00000011, r26
	or r26, r25
	xor r24, r25
	shr 0x00000011, r23
	xor r23, r22
	shl 0x00000017, r22
	shr 0x00000009, r24
	or r24, r22
	xor r22, r25
	ld.w 0x00000254[r3], r22
	rotl 0x00000007, r22, r22
	xor r22, r25
	ld.w 0x00000270[r3], r22
	xor r22, r25
	ld.w 0x00000258[r3], r22
	st.w r22, 0x00000018[r3]
	st.w r25, 0x00000288[r3]
	ld.w 0x00000014[r3], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1144
	rotl 0x0000000C, r22, r23
	mov r23, r24
	ld.w 0x0000000C[r3], r25
	add r25, r24
	mov 0x01CC4519, r26
	add r24, r26
	shl 0x00000007, r26
	mov 0x79CC4519, r27
	add r27, r24
	shr 0x00000019, r24
	or r24, r26
	mov r25, r24
	ld.w 0x0000012C[r3], r27
	xor r27, r24
	ld.w 0x00000134[r3], r28
	xor r28, r24
	ld.w 0x00000178[r3], r29
	add r29, r24
	add r2, r24
	add r26, r24
	rotl 0x00000009, r24, r29
	rotl 0x00000011, r24, r30
	xor r29, r24
	xor r30, r24
	xor r23, r26
	mov r22, r23
	ld.w 0x0000013C[r3], r29
	xor r29, r23
	xor r6, r23
	add r26, r23
	ld.w 0x00000144[r3], r26
	xor r26, r2
	add r2, r23
	add r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	rotl 0x0000000C, r5, r2
	mov r2, r23
	add r24, r23
	mov 0x01988A32, r26
	add r23, r26
	shl 0x00000007, r26
	mov 0xF3988A32, r30
	add r30, r23
	shr 0x00000019, r23
	or r23, r26
	mov r24, r23
	xor r25, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1144
	rotl 0x00000013, r27, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	xor r27, r23
	add r28, r23
	add r7, r23
	add r26, r23
	rotl 0x00000009, r23, r28
	rotl 0x00000011, r23, r30
	xor r28, r23
	xor r30, r23
	xor r2, r26
	mov r5, r2
	xor r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1144
	rotl 0x00000009, r29, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	xor r28, r2
	add r26, r2
	ld.w 0x0000014C[r3], r26
	xor r26, r7
	add r7, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	rotl 0x0000000C, r6, r2
	mov r2, r7
	add r23, r7
	mov 0x01311465, r26
	add r7, r26
	shl 0x00000007, r26
	mov 0xE7311465, r29
	add r29, r7
	shr 0x00000019, r7
	or r7, r26
	mov r23, r7
	xor r24, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	rotl 0x00000013, r25, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	xor r25, r7
	add r27, r7
	add r8, r7
	add r26, r7
	rotl 0x00000009, r7, r27
	rotl 0x00000011, r7, r29
	xor r27, r7
	xor r29, r7
	xor r2, r26
	mov r6, r2
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1145
	rotl 0x00000009, r22, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	xor r22, r2
	add r26, r2
	ld.w 0x00000154[r3], r26
	xor r26, r8
	add r8, r2
	add r2, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	rotl 0x0000000C, r28, r2
	mov r2, r8
	add r7, r8
	mov 0x006228CB, r26
	add r8, r26
	shl 0x00000007, r26
	mov 0xCE6228CB, r27
	add r27, r8
	shr 0x00000019, r8
	or r8, r26
	mov r7, r8
	xor r23, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	rotl 0x00000013, r24, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	xor r24, r8
	add r25, r8
	add r9, r8
	add r26, r8
	rotl 0x00000009, r8, r25
	rotl 0x00000011, r8, r27
	xor r25, r8
	xor r27, r8
	xor r2, r26
	mov r28, r2
	xor r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1146
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	xor r5, r2
	add r26, r2
	ld.w 0x0000015C[r3], r25
	xor r25, r9
	add r9, r2
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	rotl 0x0000000C, r22, r2
	mov r2, r9
	add r8, r9
	mov 0x00C45197, r25
	add r9, r25
	shl 0x00000007, r25
	mov 0x9CC45197, r26
	add r26, r9
	shr 0x00000019, r9
	or r9, r25
	mov r8, r9
	xor r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	rotl 0x00000013, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	xor r23, r9
	add r24, r9
	add r10, r9
	add r25, r9
	rotl 0x00000009, r9, r24
	rotl 0x00000011, r9, r26
	xor r24, r9
	xor r26, r9
	xor r2, r25
	mov r22, r2
	xor r28, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1147
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	xor r6, r2
	add r25, r2
	ld.w 0x00000164[r3], r24
	xor r24, r10
	add r10, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	rotl 0x0000000C, r5, r2
	mov r2, r10
	add r9, r10
	mov 0x0188A32F, r24
	add r10, r24
	shl 0x00000007, r24
	mov 0x3988A32F, r25
	add r25, r10
	shr 0x00000019, r10
	or r10, r24
	mov r9, r10
	xor r8, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	rotl 0x00000013, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	xor r7, r10
	add r23, r10
	add r11, r10
	add r24, r10
	rotl 0x00000009, r10, r23
	rotl 0x00000011, r10, r25
	xor r23, r10
	xor r25, r10
	xor r2, r24
	mov r5, r2
	xor r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1148
	rotl 0x00000009, r28, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	xor r23, r2
	add r24, r2
	ld.w 0x0000016C[r3], r24
	xor r24, r11
	add r11, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	rotl 0x0000000C, r6, r2
	mov r2, r11
	add r10, r11
	mov 0x0111465E, r24
	add r11, r24
	shl 0x00000007, r24
	mov 0x7311465E, r25
	add r25, r11
	shr 0x00000019, r11
	or r11, r24
	mov r10, r11
	xor r9, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	rotl 0x00000013, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	xor r8, r11
	add r7, r11
	add r12, r11
	add r24, r11
	rotl 0x00000009, r11, r7
	rotl 0x00000011, r11, r25
	xor r7, r11
	xor r25, r11
	xor r2, r24
	mov r6, r2
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1149
	rotl 0x00000009, r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	xor r7, r2
	add r24, r2
	ld.w 0x00000174[r3], r22
	xor r22, r12
	add r12, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	rotl 0x0000000C, r23, r2
	mov r2, r12
	add r11, r12
	mov 0x00228CBC, r22
	add r12, r22
	shl 0x00000007, r22
	mov 0xE6228CBC, r24
	add r24, r12
	shr 0x00000019, r12
	or r12, r22
	mov r11, r12
	xor r10, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	rotl 0x00000013, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	xor r9, r12
	add r8, r12
	add r13, r12
	add r22, r12
	rotl 0x00000009, r12, r8
	rotl 0x00000011, r12, r24
	xor r8, r12
	xor r24, r12
	xor r2, r22
	mov r23, r2
	xor r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1150
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	xor r5, r2
	add r22, r2
	ld.w 0x00000170[r3], r8
	xor r8, r13
	add r13, r2
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	rotl 0x0000000C, r7, r2
	mov r2, r8
	add r12, r8
	mov 0x00451979, r13
	add r8, r13
	shl 0x00000007, r13
	mov 0xCC451979, r22
	add r22, r8
	shr 0x00000019, r8
	or r8, r13
	mov r12, r8
	xor r11, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	rotl 0x00000013, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	xor r10, r8
	add r9, r8
	add r14, r8
	add r13, r8
	rotl 0x00000009, r8, r9
	rotl 0x00000011, r8, r22
	xor r9, r8
	xor r22, r8
	xor r2, r13
	mov r7, r2
	xor r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1151
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	xor r6, r2
	add r13, r2
	ld.w 0x00000168[r3], r9
	xor r9, r14
	add r14, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	rotl 0x0000000C, r5, r2
	mov r2, r9
	add r8, r9
	mov 0x008A32F3, r13
	add r9, r13
	shl 0x00000007, r13
	mov 0x988A32F3, r14
	add r14, r9
	shr 0x00000019, r9
	or r9, r13
	mov r8, r9
	xor r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	rotl 0x00000013, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	xor r11, r9
	add r10, r9
	add r15, r9
	add r13, r9
	rotl 0x00000009, r9, r10
	rotl 0x00000011, r9, r14
	xor r10, r9
	xor r14, r9
	xor r2, r13
	mov r5, r2
	xor r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1152
	rotl 0x00000009, r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	xor r10, r2
	add r13, r2
	ld.w 0x00000160[r3], r13
	xor r13, r15
	add r15, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	rotl 0x0000000C, r6, r2
	mov r2, r13
	add r9, r13
	mov 0x011465E7, r14
	add r13, r14
	shl 0x00000007, r14
	mov 0x311465E7, r15
	add r15, r13
	shr 0x00000019, r13
	or r13, r14
	mov r9, r13
	xor r8, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	xor r12, r13
	add r11, r13
	add r16, r13
	add r14, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r15
	xor r11, r13
	xor r15, r13
	xor r2, r14
	mov r6, r2
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1153
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	xor r7, r2
	add r14, r2
	ld.w 0x00000158[r3], r11
	xor r11, r16
	add r16, r2
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	rotl 0x0000000C, r10, r2
	mov r2, r11
	add r13, r11
	mov 0x0028CBCE, r14
	add r11, r14
	shl 0x00000007, r14
	mov 0x6228CBCE, r15
	add r15, r11
	shr 0x00000019, r11
	or r11, r14
	mov r13, r11
	xor r9, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	rotl 0x00000013, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	xor r8, r11
	add r12, r11
	add r17, r11
	add r14, r11
	rotl 0x00000009, r11, r12
	rotl 0x00000011, r11, r15
	xor r12, r11
	xor r15, r11
	xor r2, r14
	mov r10, r2
	xor r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1154
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	xor r5, r2
	add r14, r2
	ld.w 0x00000150[r3], r12
	xor r12, r17
	add r17, r2
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	rotl 0x0000000C, r7, r2
	mov r2, r12
	add r11, r12
	mov 0x0051979C, r14
	add r12, r14
	shl 0x00000007, r14
	mov 0xC451979C, r15
	add r15, r12
	shr 0x00000019, r12
	or r12, r14
	mov r11, r12
	xor r13, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	rotl 0x00000013, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	xor r9, r12
	add r8, r12
	add r18, r12
	add r14, r12
	rotl 0x00000009, r12, r8
	rotl 0x00000011, r12, r15
	xor r8, r12
	xor r15, r12
	xor r2, r14
	mov r7, r2
	xor r10, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1155
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	xor r6, r2
	add r14, r2
	ld.w 0x00000148[r3], r8
	xor r8, r18
	add r18, r2
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	rotl 0x0000000C, r5, r2
	mov r2, r8
	add r12, r8
	mov 0x00A32F39, r14
	add r8, r14
	shl 0x00000007, r14
	mov 0x88A32F39, r15
	add r15, r8
	shr 0x00000019, r8
	or r8, r14
	mov r12, r8
	xor r11, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	rotl 0x00000013, r13, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	xor r13, r8
	add r9, r8
	add r19, r8
	add r14, r8
	rotl 0x00000009, r8, r9
	rotl 0x00000011, r8, r15
	xor r9, r8
	xor r15, r8
	xor r2, r14
	mov r5, r2
	xor r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1156
	rotl 0x00000009, r10, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	xor r9, r2
	add r14, r2
	ld.w 0x00000140[r3], r10
	xor r10, r19
	add r19, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	rotl 0x0000000C, r6, r2
	mov r2, r10
	add r8, r10
	mov 0x01465E73, r14
	add r10, r14
	shl 0x00000007, r14
	mov 0x11465E73, r15
	add r15, r10
	shr 0x00000019, r10
	or r10, r14
	mov r8, r10
	xor r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	rotl 0x00000013, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	xor r11, r10
	add r13, r10
	add r20, r10
	add r14, r10
	rotl 0x00000009, r10, r13
	rotl 0x00000011, r10, r15
	xor r13, r10
	xor r15, r10
	xor r2, r14
	mov r6, r2
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1157
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	xor r7, r2
	add r14, r2
	ld.w 0x00000138[r3], r13
	xor r13, r20
	add r20, r2
	add r2, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	rotl 0x0000000C, r9, r2
	mov r2, r13
	add r10, r13
	mov 0x008CBCE6, r14
	add r13, r14
	shl 0x00000007, r14
	mov 0x228CBCE6, r15
	add r15, r13
	shr 0x00000019, r13
	or r13, r14
	mov r10, r13
	xor r8, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	xor r12, r13
	add r11, r13
	add r21, r13
	add r14, r13
	rotl 0x00000009, r13, r11
	rotl 0x00000011, r13, r15
	xor r11, r13
	xor r15, r13
	xor r2, r14
	mov r9, r2
	xor r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1158
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	xor r5, r2
	add r14, r2
	ld.w 0x00000130[r3], r11
	xor r11, r21
	add r21, r2
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	rotl 0x0000000C, r7, r2
	mov r2, r11
	add r13, r11
	mov 0x018A7A87, r14
	mov r11, r15
	add r14, r15
	shl 0x00000007, r15
	mov 0x9D8A7A87, r16
	add r16, r11
	shr 0x00000019, r11
	or r11, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	rotl 0x00000013, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	mov r10, r11
	xor r8, r11
	and r13, r11
	xor r8, r11
	add r12, r11
	ld.w 0x00000008[r3], r12
	add r12, r11
	add r15, r11
	rotl 0x00000009, r11, r12
	rotl 0x00000011, r11, r16
	xor r12, r11
	xor r16, r11
	xor r2, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1159
	rotl 0x00000009, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	mov r9, r6
	or r2, r6
	and r7, r6
	mov r9, r12
	and r2, r12
	or r12, r6
	add r15, r6
	ld.w 0x00000128[r3], r15
	ld.w 0x00000008[r3], r12
	xor r15, r12
	add r12, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	rotl 0x0000000C, r5, r6
	mov r6, r12
	add r11, r12
	mov 0x0114F50F, r15
	mov r12, r16
	add r15, r16
	shl 0x00000007, r16
	mov 0x3B14F50F, r17
	add r17, r12
	shr 0x00000019, r12
	or r12, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	rotl 0x00000013, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r8, r12
	ld.w 0x00000010[r3], r8
	add r8, r12
	add r16, r12
	rotl 0x00000009, r12, r8
	rotl 0x00000011, r12, r17
	xor r8, r12
	xor r17, r12
	xor r6, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1160
	rotl 0x00000009, r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r16, r8
	ld.w 0x00000120[r3], r9
	ld.w 0x00000010[r3], r16
	xor r9, r16
	add r16, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r12, r9
	mov r9, r16
	mov 0x0029EA1E, r17
	add r17, r16
	shl 0x00000007, r16
	mov 0x7629EA1E, r17
	add r17, r9
	shr 0x00000019, r9
	or r9, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x0000011C[r3], r10
	add r10, r13
	add r16, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r17
	xor r10, r13
	xor r17, r13
	xor r8, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1161
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r16, r8
	ld.w 0x0000011C[r3], r16
	ld.w 0x00000118[r3], r10
	xor r10, r16
	add r16, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r13, r10
	mov 0x0053D43C, r16
	mov r10, r17
	add r16, r17
	shl 0x00000007, r17
	mov 0xEC53D43C, r18
	add r18, r10
	shr 0x00000019, r10
	or r10, r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x00000114[r3], r9
	add r9, r11
	add r17, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r18
	xor r9, r11
	xor r18, r11
	xor r8, r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1162
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r17, r8
	ld.w 0x00000114[r3], r17
	ld.w 0x00000110[r3], r9
	xor r9, r17
	add r17, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r11, r9
	mov 0x00A7A879, r17
	mov r9, r18
	add r17, r18
	shl 0x00000007, r18
	mov 0xD8A7A879, r19
	add r19, r9
	shr 0x00000019, r9
	or r9, r18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x0000010C[r3], r10
	add r10, r12
	add r18, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r19
	xor r10, r12
	xor r19, r12
	xor r8, r18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1163
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r18, r8
	ld.w 0x0000010C[r3], r18
	ld.w 0x00000108[r3], r10
	xor r10, r18
	add r18, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r12, r10
	mov 0x014F50F3, r18
	mov r10, r19
	add r18, r19
	shl 0x00000007, r19
	mov 0xB14F50F3, r20
	add r20, r10
	shr 0x00000019, r10
	or r10, r19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x00000104[r3], r9
	add r9, r13
	add r19, r13
	rotl 0x00000009, r13, r9
	rotl 0x00000011, r13, r20
	xor r9, r13
	xor r20, r13
	xor r8, r19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1164
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r19, r8
	ld.w 0x00000104[r3], r9
	ld.w 0x00000100[r3], r19
	xor r19, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r13, r9
	mov 0x009EA1E7, r19
	mov r9, r20
	add r19, r20
	shl 0x00000007, r20
	mov 0x629EA1E7, r21
	add r21, r9
	shr 0x00000019, r9
	or r9, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x000000FC[r3], r10
	add r10, r11
	add r20, r11
	rotl 0x00000009, r11, r10
	rotl 0x00000011, r11, r21
	xor r10, r11
	xor r21, r11
	xor r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1165
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r20, r8
	ld.w 0x000000FC[r3], r20
	ld.w 0x000000F8[r3], r10
	xor r10, r20
	add r20, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r11, r10
	mov 0x013D43CE, r20
	mov r10, r21
	add r20, r21
	shl 0x00000007, r21
	mov 0xC53D43CE, r22
	add r22, r10
	shr 0x00000019, r10
	or r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x000000F4[r3], r9
	add r9, r12
	add r21, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r22
	xor r9, r12
	xor r22, r12
	xor r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1166
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r21, r8
	ld.w 0x000000F4[r3], r21
	ld.w 0x000000F0[r3], r9
	xor r9, r21
	add r21, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r12, r9
	mov 0x007A879D, r21
	mov r9, r22
	add r21, r22
	shl 0x00000007, r22
	mov 0x8A7A879D, r23
	add r23, r9
	shr 0x00000019, r9
	or r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x000000EC[r3], r10
	add r10, r13
	add r22, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r23
	xor r10, r13
	xor r23, r13
	xor r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1167
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r22, r8
	ld.w 0x000000EC[r3], r22
	ld.w 0x000000E8[r3], r10
	xor r10, r22
	add r22, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r13, r10
	mov 0x00F50F3B, r22
	mov r10, r23
	add r22, r23
	shl 0x00000007, r23
	mov 0x14F50F3B, r24
	add r24, r10
	shr 0x00000019, r10
	or r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x000000E4[r3], r9
	add r9, r11
	add r23, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r24
	xor r9, r11
	xor r24, r11
	xor r8, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1168
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r23, r8
	ld.w 0x000000E4[r3], r9
	ld.w 0x000000E0[r3], r23
	xor r23, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r11, r9
	mov 0x01EA1E76, r23
	mov r9, r24
	add r23, r24
	shl 0x00000007, r24
	mov 0x29EA1E76, r25
	add r25, r9
	shr 0x00000019, r9
	or r9, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x000000DC[r3], r10
	add r10, r12
	add r24, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r25
	xor r10, r12
	xor r25, r12
	xor r8, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1169
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r24, r8
	ld.w 0x000000DC[r3], r10
	ld.w 0x000000D8[r3], r24
	xor r24, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r12, r10
	mov 0x01D43CEC, r24
	mov r10, r25
	add r24, r25
	shl 0x00000007, r25
	mov 0x53D43CEC, r26
	add r26, r10
	shr 0x00000019, r10
	or r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x000000D4[r3], r9
	add r9, r13
	add r25, r13
	rotl 0x00000009, r13, r9
	rotl 0x00000011, r13, r26
	xor r9, r13
	xor r26, r13
	xor r8, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1170
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r25, r8
	ld.w 0x000000D4[r3], r9
	ld.w 0x000000D0[r3], r25
	xor r25, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r13, r9
	mov 0x01A879D8, r25
	mov r9, r26
	add r25, r26
	shl 0x00000007, r26
	mov 0xA7A879D8, r27
	add r27, r9
	shr 0x00000019, r9
	or r9, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x000000CC[r3], r10
	add r10, r11
	add r26, r11
	rotl 0x00000009, r11, r10
	rotl 0x00000011, r11, r27
	xor r10, r11
	xor r27, r11
	xor r8, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1171
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r26, r8
	ld.w 0x000000CC[r3], r10
	ld.w 0x000000C8[r3], r26
	xor r26, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r11, r10
	mov 0x0150F3B1, r26
	mov r10, r27
	add r26, r27
	shl 0x00000007, r27
	mov 0x4F50F3B1, r28
	add r28, r10
	shr 0x00000019, r10
	or r10, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x000000C4[r3], r9
	add r9, r12
	add r27, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r28
	xor r9, r12
	xor r28, r12
	xor r8, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1172
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r27, r8
	ld.w 0x000000C4[r3], r27
	ld.w 0x000000C0[r3], r9
	xor r9, r27
	add r27, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r12, r9
	mov 0x00A1E762, r27
	mov r9, r28
	add r27, r28
	shl 0x00000007, r28
	mov 0x9EA1E762, r29
	add r29, r9
	shr 0x00000019, r9
	or r9, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x000000BC[r3], r10
	add r10, r13
	add r28, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r29
	xor r10, r13
	xor r29, r13
	xor r8, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1173
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r28, r8
	ld.w 0x000000BC[r3], r10
	ld.w 0x000000B8[r3], r28
	xor r28, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r13, r10
	mov 0x0143CEC5, r28
	mov r10, r29
	add r28, r29
	shl 0x00000007, r29
	mov 0x3D43CEC5, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x000000B4[r3], r9
	add r9, r11
	add r29, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r30
	xor r9, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1174
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r29, r8
	ld.w 0x000000B4[r3], r9
	ld.w 0x000000B0[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r11, r9
	mov 0x00879D8A, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0x7A879D8A, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x000000AC[r3], r10
	add r10, r12
	add r29, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r30
	xor r10, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1175
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r29, r8
	ld.w 0x000000AC[r3], r10
	ld.w 0x000000A8[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r12, r10
	mov 0x010F3B14, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0xF50F3B14, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x000000A4[r3], r9
	add r9, r13
	add r29, r13
	rotl 0x00000009, r13, r9
	rotl 0x00000011, r13, r30
	xor r9, r13
	xor r30, r13
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1176
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r29, r8
	ld.w 0x000000A4[r3], r29
	ld.w 0x000000A0[r3], r9
	xor r9, r29
	add r29, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r13, r9
	mov 0x001E7629, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0xEA1E7629, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x0000009C[r3], r10
	add r10, r11
	add r29, r11
	rotl 0x00000009, r11, r10
	rotl 0x00000011, r11, r30
	xor r10, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1177
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000009C[r3], r10
	ld.w 0x00000098[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r11, r10
	mov 0x003CEC53, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0xD43CEC53, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x00000094[r3], r9
	add r9, r12
	add r29, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r30
	xor r9, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1178
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000094[r3], r9
	ld.w 0x00000090[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r12, r9
	mov 0x0079D8A7, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0xA879D8A7, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x0000008C[r3], r10
	add r10, r13
	add r29, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r30
	xor r10, r13
	xor r30, r13
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1179
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000008C[r3], r10
	ld.w 0x00000088[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r13, r10
	mov 0x00F3B14F, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0x50F3B14F, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x00000084[r3], r9
	add r9, r11
	add r29, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r30
	xor r9, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1180
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000084[r3], r9
	ld.w 0x00000080[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r11, r9
	mov 0x01E7629E, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0xA1E7629E, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x0000007C[r3], r10
	add r10, r12
	add r29, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r30
	xor r10, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1181
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000007C[r3], r10
	ld.w 0x00000078[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r12, r10
	mov 0x01CEC53D, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0x43CEC53D, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x00000074[r3], r9
	add r9, r13
	add r29, r13
	rotl 0x00000009, r13, r9
	rotl 0x00000011, r13, r30
	xor r9, r13
	xor r30, r13
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1182
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000074[r3], r29
	ld.w 0x00000070[r3], r9
	xor r9, r29
	add r29, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r13, r9
	mov 0x019D8A7A, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0x879D8A7A, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x0000006C[r3], r10
	add r10, r11
	add r29, r11
	rotl 0x00000009, r11, r10
	rotl 0x00000011, r11, r30
	xor r10, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1183
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000006C[r3], r10
	ld.w 0x00000068[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r11, r10
	mov 0x013B14F5, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0x0F3B14F5, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x00000064[r3], r9
	add r9, r12
	add r29, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r30
	xor r9, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1184
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000064[r3], r9
	ld.w 0x00000060[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r12, r9
	mov 0x007629EA, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0x1E7629EA, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x0000005C[r3], r10
	add r10, r13
	add r29, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r30
	xor r10, r13
	xor r30, r13
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1185
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000005C[r3], r10
	ld.w 0x00000058[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r13, r10
	mov 0x00EC53D4, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0x3CEC53D4, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x00000054[r3], r9
	add r9, r11
	add r29, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r30
	xor r9, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1186
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000054[r3], r9
	ld.w 0x00000050[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r11, r9
	mov 0x01D8A7A8, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0x79D8A7A8, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x0000004C[r3], r10
	add r10, r12
	add r29, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r30
	xor r10, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1187
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000004C[r3], r10
	ld.w 0x00000048[r3], r29
	xor r29, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r12, r10
	mov 0x01B14F50, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0xF3B14F50, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x00000044[r3], r9
	add r9, r13
	add r29, r13
	rotl 0x00000009, r13, r9
	rotl 0x00000011, r13, r30
	xor r9, r13
	xor r30, r13
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1188
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000044[r3], r9
	ld.w 0x00000040[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r13, r9
	mov 0x01629EA1, r29
	add r9, r29
	shl 0x00000007, r29
	mov 0xE7629EA1, r30
	add r30, r9
	shr 0x00000019, r9
	or r9, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x0000003C[r3], r10
	add r10, r11
	add r29, r11
	rotl 0x00000009, r11, r10
	rotl 0x00000011, r11, r30
	xor r10, r11
	xor r30, r11
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1189
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r29, r8
	ld.w 0x0000003C[r3], r29
	ld.w 0x00000038[r3], r10
	xor r10, r29
	add r29, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r11, r10
	mov 0x00C53D43, r29
	add r10, r29
	shl 0x00000007, r29
	mov 0xCEC53D43, r30
	add r30, r10
	shr 0x00000019, r10
	or r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x00000034[r3], r9
	add r9, r12
	add r29, r12
	rotl 0x00000009, r12, r9
	rotl 0x00000011, r12, r30
	xor r9, r12
	xor r30, r12
	xor r8, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1190
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r9
	and r5, r9
	or r9, r8
	add r29, r8
	ld.w 0x00000034[r3], r9
	ld.w 0x00000030[r3], r29
	xor r29, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r12, r9
	add r9, r14
	shl 0x00000007, r14
	mov 0x9D8A7A87, r29
	add r29, r9
	shr 0x00000019, r9
	or r9, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x0000002C[r3], r10
	add r10, r13
	add r14, r13
	rotl 0x00000009, r13, r10
	rotl 0x00000011, r13, r29
	xor r10, r13
	xor r29, r13
	xor r8, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1191
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r14, r8
	ld.w 0x0000002C[r3], r14
	ld.w 0x00000028[r3], r10
	xor r10, r14
	add r14, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r13, r10
	add r10, r15
	shl 0x00000007, r15
	mov 0x3B14F50F, r14
	add r14, r10
	shr 0x00000019, r10
	or r10, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x00000024[r3], r9
	add r9, r11
	add r15, r11
	rotl 0x00000009, r11, r9
	rotl 0x00000011, r11, r14
	xor r9, r11
	xor r14, r11
	xor r8, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1192
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r15, r8
	ld.w 0x00000024[r3], r9
	ld.w 0x00000020[r3], r14
	xor r14, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r11, r9
	mov 0x0029EA1E, r14
	add r9, r14
	shl 0x00000007, r14
	st.w r14, 0x00000000[r3]
	mov 0x7629EA1E, r14
	add r14, r9
	shr 0x00000019, r9
	ld.w 0x00000000[r3], r14
	or r9, r14
	st.w r14, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	ld.w 0x0000001C[r3], r10
	add r10, r12
	add r14, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r14
	xor r10, r12
	xor r14, r12
	rotl 0x00000013, r13, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1195
	mov r11, r13
	xor r10, r13
	and r12, r13
	xor r10, r13
	add r9, r13
	ld.w 0x0000024C[r3], r9
	add r9, r13
	ld.w 0x00000268[r3], r14
	xor r9, r14
	ld.w 0x00000280[r3], r15
	rotl 0x0000000F, r15, r29
	xor r14, r29
	mov r29, r30
	shl 0x0000000F, r30
	mov r15, r31
	shl 0x0000000F, r31
	xor r14, r31
	shr 0x00000011, r31
	or r31, r30
	xor r29, r30
	shr 0x00000011, r15
	xor r15, r14
	shl 0x00000017, r14
	shr 0x00000009, r29
	or r29, r14
	xor r14, r30
	ld.w 0x00000258[r3], r14
	rotl 0x00000007, r14, r14
	xor r14, r30
	ld.w 0x00000274[r3], r14
	xor r14, r30
	ld.w 0x0000025C[r3], r14
	st.w r30, 0x0000028C[r3]
	ld.w 0x00000000[r3], r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	xor r8, r15
	st.w r15, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1193
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r15
	and r7, r15
	or r15, r8
	ld.w 0x00000000[r3], r15
	add r15, r8
	ld.w 0x0000001C[r3], r29
	ld.w 0x00000018[r3], r15
	xor r15, r29
	add r29, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1195
	rotl 0x0000000C, r6, r8
	mov r8, r15
	add r12, r15
	add r15, r16
	shl 0x00000007, r16
	mov 0xEC53D43C, r29
	add r29, r15
	shr 0x00000019, r15
	or r15, r16
	add r16, r13
	rotl 0x00000009, r13, r15
	rotl 0x00000011, r13, r29
	xor r15, r13
	xor r29, r13
	xor r8, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1194
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1195
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r15
	and r5, r15
	or r15, r8
	add r16, r8
	xor r14, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1196
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r13, r9
	add r9, r17
	shl 0x00000007, r17
	mov 0xD8A7A879, r14
	add r14, r9
	shr 0x00000019, r9
	or r9, r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1195
	rotl 0x00000013, r11, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1196
	mov r12, r11
	xor r9, r11
	and r13, r11
	xor r9, r11
	add r10, r11
	ld.w 0x00000250[r3], r10
	add r10, r11
	add r17, r11
	rotl 0x00000009, r11, r14
	rotl 0x00000011, r11, r15
	xor r14, r11
	xor r15, r11
	xor r8, r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1195
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1196
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r14
	and r2, r14
	or r14, r8
	add r17, r8
	ld.w 0x00000260[r3], r14
	xor r14, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1197
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r11, r10
	add r10, r18
	shl 0x00000007, r18
	mov 0xB14F50F3, r15
	add r15, r10
	shr 0x00000019, r10
	or r10, r18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1196
	rotl 0x00000013, r12, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1197
	mov r13, r12
	xor r10, r12
	and r11, r12
	xor r10, r12
	add r9, r12
	ld.w 0x00000254[r3], r9
	add r9, r12
	add r18, r12
	rotl 0x00000009, r12, r15
	rotl 0x00000011, r12, r16
	xor r15, r12
	xor r16, r12
	xor r8, r18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1196
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1197
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r15
	and r6, r15
	or r15, r8
	add r18, r8
	ld.w 0x00000264[r3], r15
	xor r15, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1198
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r12, r9
	add r9, r19
	shl 0x00000007, r19
	mov 0x629EA1E7, r16
	add r16, r9
	shr 0x00000019, r9
	or r9, r19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1197
	rotl 0x00000013, r13, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1198
	mov r11, r13
	xor r9, r13
	and r12, r13
	xor r9, r13
	add r10, r13
	ld.w 0x00000258[r3], r10
	add r10, r13
	add r19, r13
	rotl 0x00000009, r13, r16
	rotl 0x00000011, r13, r17
	xor r16, r13
	xor r17, r13
	xor r8, r19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1197
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1198
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r16
	and r7, r16
	or r16, r8
	add r19, r8
	ld.w 0x00000268[r3], r16
	xor r16, r10
	add r10, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1199
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r13, r10
	add r10, r20
	shl 0x00000007, r20
	mov 0xC53D43CE, r17
	add r17, r10
	shr 0x00000019, r10
	or r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1198
	rotl 0x00000013, r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1199
	mov r12, r11
	xor r10, r11
	and r13, r11
	xor r10, r11
	add r9, r11
	ld.w 0x0000025C[r3], r9
	add r9, r11
	add r20, r11
	rotl 0x00000009, r11, r17
	rotl 0x00000011, r11, r18
	xor r17, r11
	xor r18, r11
	xor r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1198
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1199
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r17
	and r5, r17
	or r17, r8
	add r20, r8
	ld.w 0x0000026C[r3], r17
	xor r17, r9
	add r9, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1200
	rotl 0x0000000C, r7, r8
	mov r8, r9
	add r11, r9
	add r9, r21
	shl 0x00000007, r21
	mov 0x8A7A879D, r18
	add r18, r9
	shr 0x00000019, r9
	or r9, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1199
	rotl 0x00000013, r12, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1200
	mov r13, r12
	xor r9, r12
	and r11, r12
	xor r9, r12
	add r10, r12
	add r14, r12
	add r21, r12
	rotl 0x00000009, r12, r10
	rotl 0x00000011, r12, r18
	xor r10, r12
	xor r18, r12
	xor r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1199
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1200
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r10
	and r2, r10
	or r10, r8
	add r21, r8
	ld.w 0x00000270[r3], r10
	xor r10, r14
	add r14, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1201
	rotl 0x0000000C, r5, r8
	mov r8, r14
	add r12, r14
	add r14, r22
	shl 0x00000007, r22
	mov 0x14F50F3B, r18
	add r18, r14
	shr 0x00000019, r14
	or r14, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1200
	rotl 0x00000013, r13, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1201
	mov r11, r14
	xor r13, r14
	and r12, r14
	xor r13, r14
	add r9, r14
	add r15, r14
	add r22, r14
	rotl 0x00000009, r14, r9
	rotl 0x00000011, r14, r18
	xor r9, r14
	xor r18, r14
	xor r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1200
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1201
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r9
	and r6, r9
	or r9, r8
	add r22, r8
	ld.w 0x00000274[r3], r9
	xor r9, r15
	add r15, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1202
	rotl 0x0000000C, r2, r8
	mov r8, r15
	add r14, r15
	add r15, r23
	shl 0x00000007, r23
	mov 0x29EA1E76, r18
	add r18, r15
	shr 0x00000019, r15
	or r15, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1201
	rotl 0x00000013, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1202
	mov r12, r15
	xor r11, r15
	and r14, r15
	xor r11, r15
	add r13, r15
	add r16, r15
	add r23, r15
	rotl 0x00000009, r15, r13
	rotl 0x00000011, r15, r18
	xor r13, r15
	xor r18, r15
	xor r8, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1201
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1202
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r13
	and r7, r13
	or r13, r8
	add r23, r8
	ld.w 0x00000278[r3], r13
	xor r13, r16
	add r16, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1203
	rotl 0x0000000C, r6, r8
	mov r8, r16
	add r15, r16
	add r16, r24
	shl 0x00000007, r24
	mov 0x53D43CEC, r18
	add r18, r16
	shr 0x00000019, r16
	or r16, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1202
	rotl 0x00000013, r12, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1203
	mov r14, r16
	xor r12, r16
	and r15, r16
	xor r12, r16
	add r11, r16
	add r17, r16
	add r24, r16
	rotl 0x00000009, r16, r11
	rotl 0x00000011, r16, r18
	xor r11, r16
	xor r18, r16
	xor r8, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1202
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1203
	mov r2, r8
	or r5, r8
	and r6, r8
	mov r2, r11
	and r5, r11
	or r11, r8
	add r24, r8
	ld.w 0x0000027C[r3], r11
	xor r11, r17
	add r17, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1204
	rotl 0x0000000C, r7, r8
	mov r8, r17
	add r16, r17
	add r17, r25
	shl 0x00000007, r25
	mov 0xA7A879D8, r18
	add r18, r17
	shr 0x00000019, r17
	or r17, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1203
	rotl 0x00000013, r14, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1204
	mov r15, r17
	xor r14, r17
	and r16, r17
	xor r14, r17
	add r12, r17
	add r10, r17
	add r25, r17
	rotl 0x00000009, r17, r12
	rotl 0x00000011, r17, r18
	xor r12, r17
	xor r18, r17
	xor r8, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1203
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1204
	mov r6, r8
	or r2, r8
	and r7, r8
	mov r6, r12
	and r2, r12
	or r12, r8
	add r25, r8
	ld.w 0x00000280[r3], r12
	xor r12, r10
	add r10, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1205
	rotl 0x0000000C, r5, r8
	mov r8, r10
	add r17, r10
	add r10, r26
	shl 0x00000007, r26
	mov 0x4F50F3B1, r12
	add r12, r10
	shr 0x00000019, r10
	or r10, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1204
	rotl 0x00000013, r15, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1205
	mov r16, r12
	xor r10, r12
	and r17, r12
	xor r10, r12
	add r14, r12
	add r9, r12
	add r26, r12
	rotl 0x00000009, r12, r14
	rotl 0x00000011, r12, r15
	xor r14, r12
	xor r15, r12
	xor r8, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1204
	rotl 0x00000009, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1205
	mov r7, r8
	or r6, r8
	and r5, r8
	mov r7, r14
	and r6, r14
	or r14, r8
	add r26, r8
	ld.w 0x00000284[r3], r14
	xor r14, r9
	add r9, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1206
	rotl 0x0000000C, r2, r8
	mov r8, r9
	add r12, r9
	add r9, r27
	shl 0x00000007, r27
	mov 0x9EA1E762, r14
	add r14, r9
	shr 0x00000019, r9
	or r9, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1205
	rotl 0x00000013, r16, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1206
	mov r17, r14
	xor r9, r14
	and r12, r14
	xor r9, r14
	add r10, r14
	add r13, r14
	add r27, r14
	rotl 0x00000009, r14, r10
	rotl 0x00000011, r14, r15
	xor r10, r14
	xor r15, r14
	xor r8, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1205
	rotl 0x00000009, r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1206
	mov r5, r8
	or r7, r8
	and r2, r8
	mov r5, r10
	and r7, r10
	or r10, r8
	add r27, r8
	ld.w 0x00000288[r3], r10
	xor r10, r13
	add r13, r8
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1207
	rotl 0x0000000C, r6, r8
	mov r8, r10
	add r14, r10
	add r10, r28
	shl 0x00000007, r28
	mov 0x3D43CEC5, r13
	add r13, r10
	shr 0x00000019, r10
	or r10, r28
	xor r28, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1206
	rotl 0x00000009, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1207
	mov r2, r10
	or r5, r10
	and r6, r10
	mov r2, r13
	and r5, r13
	or r13, r10
	add r8, r10
	xor r11, r30
	add r30, r10
	add r10, r7
	ld.w 0x00000004[r3], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1209
	ld.w 0x00000000[r8], r10
	xor r7, r10
	st.w r10, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1210
	ld.w 0x00000004[r8], r7
	xor r6, r7
	st.w r7, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1207
	rotl 0x00000009, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1211
	ld.w 0x00000008[r8], r6
	xor r2, r6
	st.w r6, 0x00000008[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1212
	ld.w 0x0000000C[r8], r2
	xor r5, r2
	st.w r2, 0x0000000C[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1206
	rotl 0x00000013, r17, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1207
	mov r12, r5
	xor r2, r5
	and r14, r5
	xor r2, r5
	add r9, r5
	add r11, r5
	add r5, r28
	rotl 0x00000009, r28, r5
	rotl 0x00000011, r28, r6
	xor r5, r28
	xor r6, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1213
	ld.w 0x00000010[r8], r5
	xor r28, r5
	st.w r5, 0x00000010[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1214
	ld.w 0x00000014[r8], r5
	xor r14, r5
	st.w r5, 0x00000014[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1207
	rotl 0x00000013, r12, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1215
	ld.w 0x00000018[r8], r6
	xor r5, r6
	st.w r6, 0x00000018[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1216
	ld.w 0x0000001C[r8], r5
	xor r2, r5
	st.w r5, 0x0000001C[r8]
	ld.w 0x00000124[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1218
	movea 0x00000040, r2, r2
.BB.LABEL.26_5:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	st.w r2, 0x00000124[r3]
	ld.w 0x0000017C[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1128
	addi 0xFFFFFFFF, r2, r5
	st.w r5, 0x0000017C[r3]
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.26_1
.BB.LABEL.26_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1220
	movea 0x00000214, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
_sha256_transform.1:
	.stack _sha256_transform.1 = 256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1231
	movea 0xFFFFFF00, r3, r3
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1237
	mov r7, r8
	add r5, r8
	ld.b 0x00000000[r8], r9
	shl 0x00000018, r9
	ld.bu 0x00000001[r8], r10
	shl 0x00000010, r10
	or r10, r9
	ld.bu 0x00000002[r8], r10
	shl 0x00000008, r10
	or r10, r9
	ld.bu 0x00000003[r8], r8
	or r8, r9
	mov r2, r8
	shl 0x00000002, r8
	mov r3, r10
	add r8, r10
	st.w r9, 0x00000000[r10]
	add 0x00000004, r5
	add 0x00000001, r2
.BB.LABEL.27_2:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1235
	cmp 0x0000000F, r2
	bnh9 .BB.LABEL.27_1
	br9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1241
	mov r2, r5
	shl 0x00000002, r5
	mov r3, r7
	add r5, r7
	ld.w 0xFFFFFFC4[r7], r5
	rotl 0x00000019, r5, r8
	rotl 0x0000000E, r5, r9
	xor r9, r8
	shr 0x00000003, r5
	xor r5, r8
	ld.w 0xFFFFFFF8[r7], r5
	rotl 0x0000000F, r5, r9
	rotl 0x0000000D, r5, r10
	xor r10, r9
	shr 0x0000000A, r5
	xor r5, r9
	ld.w 0xFFFFFFE4[r7], r5
	add r5, r9
	add r8, r9
	ld.w 0xFFFFFFC0[r7], r5
	add r5, r9
	st.w r9, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.27_4:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1239
	cmp r5, r2
	bl9 .BB.LABEL.27_3
.BB.LABEL.27_5:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1251
	ld.w 0x0000001C[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1250
	ld.w 0x00000018[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1249
	ld.w 0x00000014[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1248
	ld.w 0x00000010[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1247
	ld.w 0x0000000C[r6], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1246
	ld.w 0x00000008[r6], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1245
	ld.w 0x00000004[r6], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1244
	ld.w 0x00000000[r6], r12
	mov 0x00000000, r13
	br9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1256
	mov r10, r12
	xor r9, r12
	and r11, r12
	mov r10, r15
	and r9, r15
	xor r15, r12
	rotl 0x0000001E, r11, r15
	rotl 0x00000013, r11, r16
	xor r16, r15
	rotl 0x0000000A, r11, r16
	xor r16, r15
	add r12, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1255
	not r7, r12
	and r2, r12
	rotl 0x0000001A, r7, r16
	rotl 0x00000015, r7, r17
	rotl 0x00000007, r7, r18
	mov r7, r19
	and r5, r19
	xor r12, r19
	xor r17, r16
	xor r18, r16
	add r16, r14
	add r19, r14
	mov r13, r12
	shl 0x00000002, r12
	mov r3, r16
	add r12, r16
	mov #_SHA256_K.5, r17
	add r17, r12
	ld.w 0x00000000[r12], r12
	add r12, r14
	ld.w 0x00000000[r16], r12
	add r12, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1260
	add r14, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1264
	add r15, r14
	add 0x00000001, r13
	mov r14, r12
.BB.LABEL.27_7:	; bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r14
	mov r5, r2
	mov r7, r5
	mov r8, r7
	mov r9, r8
	mov r10, r9
	mov r11, r10
	mov r12, r11
	movea 0x00000040, r0, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1253
	cmp r12, r13
	bl9 .BB.LABEL.27_6
.BB.LABEL.27_8:	; bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1267
	ld.w 0x00000000[r6], r12
	add r11, r12
	st.w r12, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1268
	ld.w 0x00000004[r6], r11
	add r10, r11
	st.w r11, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1269
	ld.w 0x00000008[r6], r10
	add r9, r10
	st.w r10, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1270
	ld.w 0x0000000C[r6], r9
	add r8, r9
	st.w r9, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1271
	ld.w 0x00000010[r6], r8
	add r7, r8
	st.w r8, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1272
	ld.w 0x00000014[r6], r7
	add r5, r7
	st.w r7, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1273
	ld.w 0x00000018[r6], r5
	add r2, r5
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1274
	ld.w 0x0000001C[r6], r2
	add r14, r2
	st.w r2, 0x0000001C[r6]
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000000, [r31]
_sm2_z256_prime:
	.stack _sm2_z256_prime = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1288
	mov #_SM2_Z256_P, r10
	jmp [r31]
_sm2_z256_cmp.1:
	.stack _sm2_z256_cmp.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1299
	ld.w 0x0000001C[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1302
	ld.w 0x00000018[r7], r5
	ld.w 0x0000001C[r6], r8
	ld.w 0x00000018[r6], r9
	cmp r9, r5
	sbf 0x00000001, r8, r2, r0
	bnc9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; entry.bb99_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.29_11
.BB.LABEL.29_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1304
	cmp r5, r9
	sbf 0x00000001, r2, r8, r0
	bnc9 .BB.LABEL.29_4
.BB.LABEL.29_3:	; if_else_bb.bb99_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	br9 .BB.LABEL.29_11
.BB.LABEL.29_4:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1307
	ld.w 0x00000014[r7], r2
	ld.w 0x00000010[r7], r5
	ld.w 0x00000014[r6], r8
	ld.w 0x00000010[r6], r9
	cmp r9, r5
	sbf 0x00000001, r8, r2, r0
	bl9 .BB.LABEL.29_1
.BB.LABEL.29_5:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1309
	cmp r5, r9
	sbf 0x00000001, r2, r8, r0
	bl9 .BB.LABEL.29_3
.BB.LABEL.29_6:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1312
	ld.w 0x0000000C[r7], r2
	ld.w 0x00000008[r7], r5
	ld.w 0x0000000C[r6], r8
	ld.w 0x00000008[r6], r9
	cmp r9, r5
	sbf 0x00000001, r8, r2, r0
	bl9 .BB.LABEL.29_1
.BB.LABEL.29_7:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1314
	cmp r5, r9
	sbf 0x00000001, r2, r8, r0
	bl9 .BB.LABEL.29_3
.BB.LABEL.29_8:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1317
	ld.w 0x00000004[r7], r2
	ld.w 0x00000000[r7], r5
	ld.w 0x00000004[r6], r7
	ld.w 0x00000000[r6], r6
	cmp r6, r5
	sbf 0x00000001, r7, r2, r0
	bl9 .BB.LABEL.29_1
.BB.LABEL.29_9:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1319
	cmp r5, r6
	sbf 0x00000001, r2, r7, r0
	bl9 .BB.LABEL.29_3
.BB.LABEL.29_10:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
.BB.LABEL.29_11:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1322
	jmp [r31]
_sm2_z256_from_bytes.1:
	.stack _sm2_z256_from_bytes.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1333
	ld.b 0x00000000[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1335
	shl 0x00000018, r2
	ld.bu 0x00000001[r7], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000002[r7], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000003[r7], r5
	or r5, r2
	ld.bu 0x00000005[r7], r5
	ld.bu 0x00000004[r7], r8
	ld.bu 0x00000006[r7], r9
	ld.bu 0x00000007[r7], r10
	st.w r2, 0x0000001C[r6]
	shl 0x00000018, r8
	shl 0x00000010, r5
	or r5, r8
	shl 0x00000008, r9
	or r9, r8
	or r10, r8
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1336
	ld.b 0x00000008[r7], r2
	shl 0x00000018, r2
	ld.bu 0x00000009[r7], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000000A[r7], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000000B[r7], r5
	or r5, r2
	ld.bu 0x0000000D[r7], r5
	ld.bu 0x0000000C[r7], r8
	ld.bu 0x0000000E[r7], r9
	ld.bu 0x0000000F[r7], r10
	st.w r2, 0x00000014[r6]
	shl 0x00000018, r8
	shl 0x00000010, r5
	or r5, r8
	shl 0x00000008, r9
	or r9, r8
	or r10, r8
	st.w r8, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1337
	ld.b 0x00000010[r7], r2
	shl 0x00000018, r2
	ld.bu 0x00000011[r7], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000012[r7], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000013[r7], r5
	or r5, r2
	ld.bu 0x00000015[r7], r5
	ld.bu 0x00000014[r7], r8
	ld.bu 0x00000016[r7], r9
	ld.bu 0x00000017[r7], r10
	st.w r2, 0x0000000C[r6]
	shl 0x00000018, r8
	shl 0x00000010, r5
	or r5, r8
	shl 0x00000008, r9
	or r9, r8
	or r10, r8
	st.w r8, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1338
	ld.b 0x00000018[r7], r2
	shl 0x00000018, r2
	ld.bu 0x00000019[r7], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x0000001A[r7], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x0000001B[r7], r5
	or r5, r2
	ld.bu 0x0000001D[r7], r5
	ld.bu 0x0000001C[r7], r8
	ld.bu 0x0000001E[r7], r9
	ld.bu 0x0000001F[r7], r7
	st.w r2, 0x00000004[r6]
	shl 0x00000018, r8
	shl 0x00000010, r5
	or r5, r8
	shl 0x00000008, r9
	or r9, r8
	or r7, r8
	st.w r8, 0x00000000[r6]
	jmp [r31]
_is_zero.1:
	.stack _is_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1349
	mov 0x00000000, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1351
	subr r11, r6
	sbf 0x00000001, r7, r11, r2
	or r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1353
	shr 0x0000001F, r7
	xori 0x00000001, r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1355
	jmp [r31]
_sm2_z256_is_zero.1:
	.stack _sm2_z256_is_zero.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1365
	prepare 0x00000779, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1368
	ld.w 0x00000004[r20], r7
	ld.w 0x00000000[r20], r6
	jarl _is_zero.1, r31
	mov r10, r21
	mov r11, r22
	ld.w 0x0000000C[r20], r7
	ld.w 0x00000008[r20], r6
	jarl _is_zero.1, r31
	mov r10, r23
	mov r11, r24
	ld.w 0x00000014[r20], r7
	ld.w 0x00000010[r20], r6
	jarl _is_zero.1, r31
	mov r10, r25
	mov r11, r26
	ld.w 0x0000001C[r20], r7
	ld.w 0x00000018[r20], r6
	jarl _is_zero.1, r31
	and r23, r21
	and r25, r21
	and r21, r10
	and r24, r22
	and r26, r22
	and r22, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1372
	dispose 0x00000000, 0x00000779, [r31]
_sm2_z256_copy.1:
	.stack _sm2_z256_copy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1383
	ld.w 0x0000001C[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1385
	ld.w 0x00000018[r7], r5
	st.w r2, 0x0000001C[r6]
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1386
	ld.w 0x00000014[r7], r2
	ld.w 0x00000010[r7], r5
	st.w r2, 0x00000014[r6]
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1387
	ld.w 0x0000000C[r7], r2
	ld.w 0x00000008[r7], r5
	st.w r2, 0x0000000C[r6]
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1388
	ld.w 0x00000004[r7], r2
	ld.w 0x00000000[r7], r5
	st.w r2, 0x00000004[r6]
	st.w r5, 0x00000000[r6]
	jmp [r31]
_sm2_z256_set_zero.1:
	.stack _sm2_z256_set_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1399
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1401
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1402
	st.w r0, 0x0000000C[r6]
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1403
	st.w r0, 0x00000014[r6]
	st.w r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1404
	st.w r0, 0x0000001C[r6]
	st.w r0, 0x00000018[r6]
	jmp [r31]
_sm2_z256_point_set_infinity.1:
	.stack _sm2_z256_point_set_infinity.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1415
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1417
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r21
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r21], r7
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1418
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r21], r7
	movea 0x00000020, r20, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1419
	movea 0x00000040, r20, r6
	jarl _sm2_z256_set_zero.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_sm2_z256_mul.1:
	.stack _sm2_z256_mul.1 = 256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1432
	movea 0xFFFFFF00, r3, r3
	movea 0x00000080, r0, r2
	mov 0x00000000, r5
	mov r3, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1436
	add r9, r2
	br9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; entry
	st.b r5, 0x00000000[r9]
	add 0x00000001, r9
.BB.LABEL.36_2:	; entry
	cmp r9, r2
	bnz9 .BB.LABEL.36_1
.BB.LABEL.36_3:	; entry
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	br9 .BB.LABEL.36_5
.BB.LABEL.36_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1443
	mov r5, r2
	shl 0x00000004, r2
	movea 0x000000C0, r3, r9
	mov r9, r10
	add r2, r10
	mov r5, r11
	shl 0x00000003, r11
	mov r7, r12
	add r11, r12
	ld.w 0x00000000[r12], r13
	st.w r13, 0x00000000[r10]
	st.w r0, 0x00000004[r10]
	movea 0x00000080, r3, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1444
	mov r10, r13
	add r2, r13
	add r8, r11
	ld.w 0x00000000[r11], r14
	st.w r14, 0x00000000[r13]
	st.w r0, 0x00000004[r13]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1445
	ori 0x00000008, r2, r2
	add r2, r9
	ld.w 0x00000004[r12], r12
	st.w r12, 0x00000000[r9]
	st.w r0, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1446
	add r2, r10
	ld.w 0x00000004[r11], r2
	st.w r2, 0x00000000[r10]
	st.w r0, 0x00000004[r10]
	add 0x00000001, r5
.BB.LABEL.36_5:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1441
	cmp 0x00000004, r5
	blt9 .BB.LABEL.36_4
.BB.LABEL.36_6:	; bb51.bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.36_10
.BB.LABEL.36_7:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1456
	mov r8, r9
	shl 0x00000003, r9
	movea 0x00000080, r3, r10
	add r9, r10
	ld.w 0x00000000[r10], r9
	mov r2, r11
	shl 0x00000003, r11
	movea 0x000000C0, r3, r12
	add r11, r12
	ld.w 0x00000004[r12], r11
	mul r9, r11, r0
	ld.w 0x00000000[r12], r12
	ld.w 0x00000004[r10], r10
	mul r12, r10, r0
	add r10, r11
	mulu r9, r12, r9
	add r9, r11
	mov r2, r9
	add r8, r9
	shl 0x00000003, r9
	mov r3, r10
	add r9, r10
	ld.w 0x00000004[r10], r9
	ld.w 0x00000000[r10], r13
	add r12, r13
	adf 0x00000001, r11, r9, r9
	add r5, r13
	adf 0x00000001, r7, r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1457
	st.w r13, 0x00000000[r10]
	st.w r0, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1458
	add 0x00000001, r8
	mov 0x00000000, r7
.BB.LABEL.36_8:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1453
	cmp 0x00000008, r8
	blt9 .BB.LABEL.36_7
.BB.LABEL.36_9:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1460
	mov r2, r8
	shl 0x00000003, r8
	mov r3, r9
	add r9, r8
	st.w r7, 0x00000044[r8]
	st.w r5, 0x00000040[r8]
	add 0x00000001, r2
.BB.LABEL.36_10:	; bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1450
	cmp 0x00000008, r2
	blt9 .BB.LABEL.36_12
.BB.LABEL.36_11:	; bb100.bb125_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.36_14
.BB.LABEL.36_12:	; bb100.bb87_crit_edge
	mov 0x00000000, r5
	mov r5, r7
	mov r5, r8
	br9 .BB.LABEL.36_8
.BB.LABEL.36_13:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1466
	mov r2, r5
	shl 0x00000004, r5
	mov r3, r7
	add r7, r5
	ld.w 0x00000008[r5], r7
	ld.w 0x00000004[r5], r8
	or r8, r7
	mov r2, r8
	shl 0x00000003, r8
	add r6, r8
	ld.w 0x00000000[r5], r5
	st.w r7, 0x00000004[r8]
	st.w r5, 0x00000000[r8]
	add 0x00000001, r2
.BB.LABEL.36_14:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1464
	cmp 0x00000008, r2
	blt9 .BB.LABEL.36_13
.BB.LABEL.36_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1468
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000000, [r31]
_sm2_z512_add.1:
	.stack _sm2_z512_add.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1480
	ld.w 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1485
	ld.w 0x00000000[r7], r5
	ld.w 0x00000004[r8], r9
	ld.w 0x00000000[r8], r10
	add r5, r10
	adf 0x00000001, r9, r2, r9
	st.w r9, 0x00000004[r6]
	st.w r10, 0x00000000[r6]
	cmp r5, r10
	sbf 0x00000001, r2, r9, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1486
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r9
	mov 0x00000000, r11
	add r9, r2
	adf 0x00000001, r11, r5, r10
	ld.w 0x0000000C[r8], r12
	ld.w 0x00000008[r8], r13
	add r2, r13
	adf 0x00000001, r12, r10, r12
	st.w r12, 0x0000000C[r6]
	st.w r13, 0x00000008[r6]
	cmp r2, r13
	sbf 0x00000001, r10, r12, r0
	setf 0x00000001, r12
	cmp r9, r2
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1487
	ld.w 0x00000014[r7], r9
	ld.w 0x00000010[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x00000014[r8], r12
	ld.w 0x00000010[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x00000014[r6]
	st.w r13, 0x00000010[r6]
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1488
	ld.w 0x0000001C[r7], r9
	ld.w 0x00000018[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x0000001C[r8], r12
	ld.w 0x00000018[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x0000001C[r6]
	st.w r13, 0x00000018[r6]
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1489
	ld.w 0x00000024[r7], r9
	ld.w 0x00000020[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x00000024[r8], r12
	ld.w 0x00000020[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x00000024[r6]
	st.w r13, 0x00000020[r6]
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1490
	ld.w 0x0000002C[r7], r9
	ld.w 0x00000028[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x0000002C[r8], r12
	ld.w 0x00000028[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x0000002C[r6]
	st.w r13, 0x00000028[r6]
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1491
	ld.w 0x00000034[r7], r9
	ld.w 0x00000030[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x00000034[r8], r12
	ld.w 0x00000030[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x00000034[r6]
	st.w r13, 0x00000030[r6]
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1492
	ld.w 0x0000003C[r7], r9
	ld.w 0x00000038[r7], r7
	add r7, r2
	adf 0x00000001, r5, r9, r5
	ld.w 0x0000003C[r8], r10
	ld.w 0x00000038[r8], r8
	add r2, r8
	adf 0x00000001, r10, r5, r10
	st.w r10, 0x0000003C[r6]
	st.w r8, 0x00000038[r6]
	cmp r2, r8
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r6
	cmp r7, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r10
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1495
	jmp [r31]
_sm2_z256_add.1:
	.stack _sm2_z256_add.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1507
	ld.w 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1512
	ld.w 0x00000000[r7], r5
	ld.w 0x00000004[r8], r9
	ld.w 0x00000000[r8], r10
	add r5, r10
	adf 0x00000001, r9, r2, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1514
	st.w r9, 0x00000004[r6]
	st.w r10, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1513
	cmp r5, r10
	sbf 0x00000001, r2, r9, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1517
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r9
	mov 0x00000000, r11
	add r9, r2
	adf 0x00000001, r11, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1519
	ld.w 0x0000000C[r8], r12
	ld.w 0x00000008[r8], r13
	add r2, r13
	adf 0x00000001, r12, r10, r12
	st.w r12, 0x0000000C[r6]
	st.w r13, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1520
	cmp r2, r13
	sbf 0x00000001, r10, r12, r0
	setf 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1518
	cmp r9, r2
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1520
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1523
	ld.w 0x00000014[r7], r9
	ld.w 0x00000010[r7], r10
	add r10, r2
	adf 0x00000001, r5, r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1525
	ld.w 0x00000014[r8], r12
	ld.w 0x00000010[r8], r13
	add r2, r13
	adf 0x00000001, r12, r5, r12
	st.w r12, 0x00000014[r6]
	st.w r13, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1526
	cmp r2, r13
	sbf 0x00000001, r5, r12, r0
	setf 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1524
	cmp r10, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1526
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1529
	ld.w 0x0000001C[r7], r9
	ld.w 0x00000018[r7], r7
	add r7, r2
	adf 0x00000001, r5, r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1531
	ld.w 0x0000001C[r8], r10
	ld.w 0x00000018[r8], r8
	add r2, r8
	adf 0x00000001, r10, r5, r10
	st.w r10, 0x0000001C[r6]
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1532
	cmp r2, r8
	sbf 0x00000001, r5, r10, r0
	setf 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1530
	cmp r7, r2
	sbf 0x00000001, r9, r5, r0
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1532
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1535
	jmp [r31]
_sm2_z256_sub.1:
	.stack _sm2_z256_sub.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1547
	ld.w 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1552
	ld.w 0x00000000[r7], r5
	ld.w 0x00000004[r8], r9
	ld.w 0x00000000[r8], r10
	subr r5, r10
	sbf 0x00000001, r9, r2, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1554
	st.w r9, 0x00000004[r6]
	st.w r10, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1553
	cmp r10, r5
	sbf 0x00000001, r9, r2, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1557
	ld.w 0x0000000C[r7], r5
	ld.w 0x00000008[r7], r9
	mov 0x00000000, r11
	subr r9, r2
	sbf 0x00000001, r11, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1559
	ld.w 0x0000000C[r8], r12
	ld.w 0x00000008[r8], r13
	subr r2, r13
	sbf 0x00000001, r12, r10, r12
	st.w r12, 0x0000000C[r6]
	st.w r13, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1560
	cmp r13, r2
	sbf 0x00000001, r12, r10, r0
	setf 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1558
	cmp r2, r9
	sbf 0x00000001, r10, r5, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1560
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1563
	ld.w 0x00000014[r7], r9
	ld.w 0x00000010[r7], r10
	subr r10, r2
	sbf 0x00000001, r5, r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1565
	ld.w 0x00000014[r8], r12
	ld.w 0x00000010[r8], r13
	subr r2, r13
	sbf 0x00000001, r12, r5, r12
	st.w r12, 0x00000014[r6]
	st.w r13, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1566
	cmp r13, r2
	sbf 0x00000001, r12, r5, r0
	setf 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1564
	cmp r2, r10
	sbf 0x00000001, r5, r9, r0
	setf 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1566
	add r12, r2
	adf 0x00000001, r11, r11, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1569
	ld.w 0x0000001C[r7], r9
	ld.w 0x00000018[r7], r7
	subr r7, r2
	sbf 0x00000001, r5, r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1571
	ld.w 0x0000001C[r8], r10
	ld.w 0x00000018[r8], r8
	subr r2, r8
	sbf 0x00000001, r10, r5, r10
	st.w r10, 0x0000001C[r6]
	st.w r8, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1572
	cmp r8, r2
	sbf 0x00000001, r10, r5, r0
	setf 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1570
	cmp r2, r7
	sbf 0x00000001, r5, r9, r0
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1572
	add r6, r10
	adf 0x00000001, r11, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1575
	jmp [r31]
_sm2_z256_modp_mont_mul.1:
	.stack _sm2_z256_modp_mont_mul.1 = 144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1587
	prepare 0x00000071, 0x0000007C
	add 0xFFFFFFFC, r3
	mov r6, r20
	movea 0x00000040, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1594
	mov r21, r6
	jarl _sm2_z256_mul.1, r31
	mov r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1597
	mov #_SM2_Z256_P_PRIME, r8
	mov r22, r6
	mov r21, r7
	jarl _sm2_z256_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1600
	mov #_SM2_Z256_P, r8
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1603
	mov r21, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z512_add.1, r31
	mov r10, r21
	mov r11, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1606
	movea 0x00000060, r3, r7
	mov r20, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1609
	or r22, r21
	mov r20, r6
	cmp 0x00000000, r21
	bz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1611
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r8
	mov r20, r7
	jarl _sm2_z256_add.1, r31
	add 0x00000004, r3
	dispose 0x0000007C, 0x00000071, [r31]
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1613
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.40_4
.BB.LABEL.40_3:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1615
	mov #_SM2_Z256_P, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.40_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0x00000004, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1617
	dispose 0x0000007C, 0x00000071, [r31]
_sm2_z256_modp_to_mont.1:
	.stack _sm2_z256_modp_to_mont.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1628
	prepare 0x00000001, 0x00000000
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1630
	mov #_SM2_Z256_2e512modp, r8
	mov r7, r6
	mov r2, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_mont_sqr.1:
	.stack _sm2_z256_modp_mont_sqr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1642
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1644
	mov r7, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_add.1:
	.stack _sm2_z256_modp_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1657
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1661
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1664
	or r11, r10
	mov r20, r6
	cmp 0x00000000, r10
	bz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1668
	mov #_SM2_Z256_NEG_P, r8
	mov r20, r7
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1669
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.43_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1673
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.43_4
.BB.LABEL.43_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1675
	mov #_SM2_Z256_P, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.43_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1677
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_point_is_on_curve.1:
	.stack _sm2_z256_point_is_on_curve.1 = 116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1687
	prepare 0x00000079, 0x00000060
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1694
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	movea 0x00000040, r20, r21
	mov r21, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	movea 0x00000020, r20, r7
	bnz9 .BB.LABEL.44_2
.BB.LABEL.44_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1697
	mov r21, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1698
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1699
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1700
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_add.1, r31
	movea 0x00000020, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1701
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1702
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1703
	mov #_SM2_Z256_MODP_MONT_B, r8
	mov r21, r6
	mov r21, r7
	br9 .BB.LABEL.44_3
.BB.LABEL.44_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1708
	mov r22, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000020, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1709
	mov r23, r6
	mov r21, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1710
	mov r21, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1711
	mov r23, r6
	mov r23, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1712
	mov #_SM2_Z256_MODP_MONT_B, r8
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1713
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1714
	mov r22, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1715
	mov r22, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1716
	mov r22, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1717
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1718
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1719
	mov r23, r6
	mov r23, r7
	mov r21, r8
.BB.LABEL.44_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	jarl _sm2_z256_modp_add.1, r31
	movea 0x00000020, r3, r7
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1722
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1727
	dispose 0x00000060, 0x00000079, [r31]
_sm2_z256_point_from_bytes.1:
	.stack _sm2_z256_point_from_bytes.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1738
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1740
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1742
	jarl _sm2_z256_prime, r31
	mov r20, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.45_7
.BB.LABEL.45_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1747
	movea 0x00000020, r20, r22
	movea 0x00000020, r21, r7
	mov r22, r6
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1749
	jarl _sm2_z256_prime, r31
	mov r22, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.45_7
.BB.LABEL.45_2:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1756
	mov r20, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_5
.BB.LABEL.45_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r22, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_5
.BB.LABEL.45_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1758
	mov r20, r6
	jarl _sm2_z256_point_set_infinity.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1759
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.45_5:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1763
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_modp_to_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1764
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_to_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1765
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	movea 0x00000040, r20, r6
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1768
	mov r20, r6
	jarl _sm2_z256_point_is_on_curve.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.45_7
.BB.LABEL.45_6:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1773
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.45_7:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1774
	dispose 0x00000000, 0x00000071, [r31]
_sm2_z256_point_from_octets.1:
	.stack _sm2_z256_point_from_octets.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1786
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1788
	ld.bu 0x00000000[r7], r2
	cmp 0x00000004, r2
	mov r6, r20
	bnz9 .BB.LABEL.46_4
.BB.LABEL.46_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	addi 0xFFFFFFBF, r8, r0
	bnz9 .BB.LABEL.46_4
.BB.LABEL.46_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1795
	add 0x00000001, r7
	mov r20, r6
	jarl _sm2_z256_point_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1796
	mov r20, r6
	jarl _sm2_z256_point_is_on_curve.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.46_4
.BB.LABEL.46_3:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1805
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.46_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 1806
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_order.1:
	.stack _sm2_z256_order.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2099
	mov #_SM2_Z256_N, r10
	jmp [r31]
_sm2_z256_modn_add.1:
	.stack _sm2_z256_modn_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2111
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2115
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2117
	or r11, r10
	mov r20, r6
	cmp 0x00000000, r10
	bz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2120
	mov #_SM2_Z256_NEG_N, r8
	mov r20, r7
	jarl _sm2_z256_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2121
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.48_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2124
	mov #_SM2_Z256_N, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.48_4
.BB.LABEL.48_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2126
	mov #_SM2_Z256_N, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.48_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2128
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_get_booth.1:
	.stack _sm2_z256_get_booth.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2140
	prepare 0x00000779, 0x00000000
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2142
	shl r7, r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2147
	cmp 0x00000000, r8
	mov r7, r21
	bnz9 .BB.LABEL.49_2
.BB.LABEL.49_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2150
	ld.w 0x00000000[r6], r21
	mov r21, r22
	add r22, r22
	br9 .BB.LABEL.49_6
.BB.LABEL.49_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2154
	mul r21, r8, r0
	add 0xFFFFFFFF, r8
	movea 0x00000040, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2155
	mov r8, r23
	divh r22, r23, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2159
	mov r23, r2
	shl 0x00000003, r2
	mov r6, r25
	add r2, r25
	ld.w 0x00000004[r25], r7
	ld.w 0x00000000[r25], r6
	mov r24, r8
	jarl __COM_shrl_64_32, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2161
	sub r24, r22
	add 0x00000001, r21
	cmp r21, r22
	mov r11, r26
	mov r10, r22
	bge9 .BB.LABEL.49_5
.BB.LABEL.49_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000003, r23
	bge9 .BB.LABEL.49_5
.BB.LABEL.49_4:	; if_then_bb61
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2163
	sub r24, r8
	ld.w 0x0000000C[r25], r7
	ld.w 0x00000008[r25], r6
	jarl __COM_shll_64_32, r31
	or r11, r26
	or r10, r22
.BB.LABEL.49_5:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2166
	mov r22, r21
	shr 0x00000001, r21
	shl 0x0000001F, r26
	or r26, r21
.BB.LABEL.49_6:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	and r20, r22
	and r20, r21
	mov r22, r10
	sub r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2167
	dispose 0x00000000, 0x00000779, [r31]
_sm2_z256_point_copy_affine.1:
	.stack _sm2_z256_point_copy_affine.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2178
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000040, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2180
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2181
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	movea 0x00000040, r20, r6
	jarl _sm2_z256_copy.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_modp_sub.1:
	.stack _sm2_z256_modp_sub.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2184
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2188
	jarl _sm2_z256_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2191
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2195
	mov #_SM2_Z256_NEG_P, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.51_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2197
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_modp_dbl.1:
	.stack _sm2_z256_modp_dbl.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2200
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2202
	mov r7, r8
	jarl _sm2_z256_modp_add.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_copy_conditional.1:
	.stack _sm2_z256_copy_conditional.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2215
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2218
	mov r2, r5
	sub r8, r5
	sbf 0x00000001, r9, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2223
	ld.w 0x00000004[r7], r10
	and r2, r10
	mov 0xFFFFFFFF, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2220
	add 0xFFFFFFFF, r8
	adf 0x00000001, r11, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2223
	ld.w 0x00000004[r6], r11
	and r9, r11
	xor r11, r10
	ld.w 0x00000000[r6], r11
	ld.w 0x00000000[r7], r12
	st.w r10, 0x00000004[r6]
	and r5, r12
	and r8, r11
	xor r11, r12
	st.w r12, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2224
	ld.w 0x0000000C[r7], r10
	and r2, r10
	ld.w 0x0000000C[r6], r11
	and r9, r11
	xor r11, r10
	ld.w 0x00000008[r6], r11
	ld.w 0x00000008[r7], r12
	st.w r10, 0x0000000C[r6]
	and r5, r12
	and r8, r11
	xor r11, r12
	st.w r12, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2225
	ld.w 0x00000014[r7], r10
	and r2, r10
	ld.w 0x00000014[r6], r11
	and r9, r11
	xor r11, r10
	ld.w 0x00000010[r6], r11
	ld.w 0x00000010[r7], r12
	st.w r10, 0x00000014[r6]
	and r5, r12
	and r8, r11
	xor r11, r12
	st.w r12, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2226
	ld.w 0x0000001C[r7], r10
	and r2, r10
	ld.w 0x0000001C[r6], r2
	and r9, r2
	xor r2, r10
	ld.w 0x00000018[r6], r2
	ld.w 0x00000018[r7], r7
	st.w r10, 0x0000001C[r6]
	and r5, r7
	and r8, r2
	xor r2, r7
	st.w r7, 0x00000018[r6]
	jmp [r31]
_sm2_z256_point_add_affine.1:
	.stack _sm2_z256_point_add_affine.1 = 460
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2239
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFEE0, r3, r3
	mov r6, r2
	st.w r2, 0x00000038[r3]
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2263
	ld.w 0x0000000C[r21], r22
	ld.w 0x00000008[r21], r2
	st.w r2, 0x00000030[r3]
	ld.w 0x00000004[r21], r23
	ld.w 0x00000000[r21], r24
	ld.w 0x00000014[r21], r25
	ld.w 0x00000010[r21], r2
	st.w r2, 0x0000002C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2262
	ld.w 0x0000004C[r20], r2
	ld.w 0x00000048[r20], r5
	ld.w 0x00000044[r20], r7
	ld.w 0x00000040[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2263
	ld.w 0x0000003C[r21], r8
	st.w r8, 0x0000001C[r3]
	ld.w 0x00000038[r21], r8
	st.w r8, 0x00000034[r3]
	ld.w 0x00000034[r21], r26
	ld.w 0x00000030[r21], r8
	st.w r8, 0x00000028[r3]
	ld.w 0x0000002C[r21], r27
	ld.w 0x00000028[r21], r8
	st.w r8, 0x00000024[r3]
	ld.w 0x00000024[r21], r28
	ld.w 0x00000020[r21], r8
	st.w r8, 0x00000020[r3]
	ld.w 0x0000001C[r21], r29
	ld.w 0x00000018[r21], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2262
	ld.w 0x0000005C[r20], r8
	ld.w 0x00000058[r20], r9
	ld.w 0x00000054[r20], r10
	ld.w 0x00000050[r20], r11
	or r2, r7
	or r10, r7
	or r8, r7
	or r5, r6
	or r11, r6
	or r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2266
	jarl _is_zero.1, r31
	mov r10, r2
	st.w r2, 0x00000018[r3]
	mov r11, r2
	st.w r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2263
	or r22, r23
	or r25, r23
	or r29, r23
	or r28, r23
	or r27, r23
	or r26, r23
	mov r23, r7
	ld.w 0x0000001C[r3], r2
	or r2, r7
	ld.w 0x00000030[r3], r2
	or r2, r24
	ld.w 0x0000002C[r3], r2
	or r2, r24
	or r30, r24
	ld.w 0x00000020[r3], r2
	or r2, r24
	ld.w 0x00000024[r3], r2
	or r2, r24
	ld.w 0x00000028[r3], r2
	or r2, r24
	mov r24, r6
	ld.w 0x00000034[r3], r2
	or r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2267
	jarl _is_zero.1, r31
	mov r10, r2
	st.w r2, 0x00000010[r3]
	mov r11, r2
	st.w r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2256
	movea 0x00000040, r20, r2
	st.w r2, 0x00000004[r3]
	movea 0x0000013C, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2270
	mov r22, r6
	mov r2, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x0000017C, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2271
	mov r23, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x0000011C, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2272
	mov r24, r6
	mov r23, r7
	mov r20, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x0000015C, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2273
	mov r25, r6
	mov r22, r7
	ld.w 0x00000004[r3], r2
	mov r2, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x0000003C, r3, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2274
	mov r2, r6
	mov r24, r7
	ld.w 0x00000004[r3], r2
	mov r2, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2259
	movea 0x00000020, r21, r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2275
	mov r25, r6
	mov r25, r7
	mov r2, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2255
	movea 0x00000020, r20, r22
	movea 0x000000FC, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2276
	mov r26, r6
	mov r25, r7
	mov r22, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x000000DC, r3, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2277
	mov r27, r6
	mov r24, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x000000BC, r3, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2278
	mov r28, r6
	mov r26, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x0000009C, r3, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2279
	mov r29, r6
	mov r27, r7
	mov r24, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2280
	mov r23, r6
	mov r20, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2281
	mov r27, r6
	mov r23, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x0000007C, r3, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2282
	mov r30, r6
	mov r28, r7
	mov r27, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2283
	mov r30, r6
	mov r30, r7
	mov r29, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2284
	mov r24, r6
	mov r23, r7
	mov r30, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2285
	mov r25, r6
	mov r22, r7
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2286
	mov r24, r6
	mov r24, r7
	mov r26, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x0000005C, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2287
	mov r23, r6
	mov r24, r7
	mov r25, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2290
	mov r30, r6
	mov r21, r7
	ld.w 0x00000018[r3], r2
	mov r2, r8
	ld.w 0x00000014[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2291
	mov r30, r6
	mov r20, r7
	ld.w 0x00000010[r3], r2
	mov r2, r8
	ld.w 0x0000000C[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2292
	mov r23, r6
	ld.w 0x00000008[r3], r2
	mov r2, r7
	ld.w 0x00000018[r3], r2
	mov r2, r8
	ld.w 0x00000014[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2293
	mov r23, r6
	mov r22, r7
	ld.w 0x00000010[r3], r2
	mov r2, r8
	ld.w 0x0000000C[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2294
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	ld.w 0x00000000[r3], r2
	mov r2, r6
	ld.w 0x00000018[r3], r2
	mov r2, r8
	ld.w 0x00000014[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2295
	mov r2, r6
	ld.w 0x00000004[r3], r2
	mov r2, r7
	ld.w 0x00000010[r3], r2
	mov r2, r8
	ld.w 0x0000000C[r3], r2
	mov r2, r9
	jarl _sm2_z256_copy_conditional.1, r31
	movea 0x00000020, r0, r20
	ld.w 0x00000038[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2297
	mov r2, r6
	mov r30, r7
	mov r20, r8
	jarl _memcpy, r31
	ld.w 0x00000038[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2298
	movea 0x00000020, r2, r6
	mov r23, r7
	mov r20, r8
	jarl _memcpy, r31
	ld.w 0x00000038[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2299
	movea 0x00000040, r2, r6
	ld.w 0x00000000[r3], r2
	mov r2, r7
	mov r20, r8
	jarl _memcpy, r31
	movea 0x00000120, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
_sm2_z256_modp_neg.1:
	.stack _sm2_z256_modp_neg.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2311
	prepare 0x00000001, 0x00000000
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2313
	mov #_SM2_Z256_P, r7
	jarl _sm2_z256_sub.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_point_sub_affine.1:
	.stack _sm2_z256_point_sub_affine.1 = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2326
	prepare 0x00000079, 0x00000040
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2331
	mov r23, r6
	mov r22, r7
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2332
	movea 0x00000020, r22, r7
	movea 0x00000020, r3, r6
	jarl _sm2_z256_modp_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2334
	mov r20, r6
	mov r21, r7
	mov r23, r8
	jarl _sm2_z256_point_add_affine.1, r31
	dispose 0x00000040, 0x00000079, [r31]
_sm2_z256_point_mul_generator.1:
	.stack _sm2_z256_point_mul_generator.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2346
	prepare 0x00000079, 0x00000000
	movea 0x00000024, r0, r20
	mov 0x00000001, r21
	mov r7, r22
	mov r6, r23
	br9 .BB.LABEL.57_9
.BB.LABEL.57_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2355
	mov r22, r6
	mov r20, r8
	jarl _sm2_z256_get_booth.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2357
	cmp 0x00000000, r21
	bz9 .BB.LABEL.57_4
.BB.LABEL.57_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2359
	cmp 0x00000000, r10
	bz9 .BB.LABEL.57_8
.BB.LABEL.57_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2361
	movhi HIGHW1(#_g_pre_comp.6), r0, r21
	ld.w LOWW(#_g_pre_comp.6)[r21], r21
	mov r20, r2
	shl 0x0000000C, r2
	shl 0x00000006, r10
	add r10, r2
	add r21, r2
	movea 0xFFFFFFC0, r2, r7
	mov r23, r6
	jarl _sm2_z256_point_copy_affine.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.57_8
.BB.LABEL.57_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2367
	cmp 0x00000000, r10
	ble9 .BB.LABEL.57_6
.BB.LABEL.57_5:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2369
	movhi HIGHW1(#_g_pre_comp.6), r0, r2
	ld.w LOWW(#_g_pre_comp.6)[r2], r2
	mov r20, r5
	shl 0x0000000C, r5
	shl 0x00000006, r10
	add r10, r5
	add r2, r5
	movea 0xFFFFFFC0, r5, r8
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_point_add_affine.1, r31
	br9 .BB.LABEL.57_8
.BB.LABEL.57_6:	; if_else_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2371
	cmp 0x00000000, r10
	bp9 .BB.LABEL.57_8
.BB.LABEL.57_7:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2373
	movhi HIGHW1(#_g_pre_comp.6), r0, r2
	ld.w LOWW(#_g_pre_comp.6)[r2], r8
	mov r20, r2
	shl 0x0000000C, r2
	add r2, r8
	not r10, r2
	shl 0x00000006, r2
	add r2, r8
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_point_sub_affine.1, r31
.BB.LABEL.57_8:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r20
.BB.LABEL.57_9:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2353
	cmp 0x00000000, r20
	bp9 .BB.LABEL.57_1
.BB.LABEL.57_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2378
	cmp 0x00000000, r21
	bz9 .BB.LABEL.57_12
.BB.LABEL.57_11:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2380
	mov r23, r6
	jarl _sm2_z256_point_set_infinity.1, r31
.BB.LABEL.57_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2382
	dispose 0x00000000, 0x00000079, [r31]
_sm2_z256_equ.1:
	.stack _sm2_z256_equ.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2393
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2398
	ld.w 0x0000000C[r7], r2
	ld.w 0x00000008[r7], r5
	ld.w 0x0000000C[r6], r8
	ld.w 0x00000008[r6], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2397
	ld.w 0x00000004[r7], r10
	ld.w 0x00000000[r7], r11
	ld.w 0x00000004[r6], r12
	ld.w 0x00000000[r6], r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2399
	ld.w 0x00000014[r7], r14
	ld.w 0x00000010[r7], r15
	ld.w 0x00000014[r6], r16
	ld.w 0x00000010[r6], r17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2400
	ld.w 0x0000001C[r7], r18
	ld.w 0x00000018[r7], r19
	ld.w 0x0000001C[r6], r20
	ld.w 0x00000018[r6], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2397
	xor r10, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2398
	xor r2, r8
	or r8, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2399
	xor r14, r16
	or r16, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2400
	xor r18, r20
	mov r12, r7
	or r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2397
	xor r11, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2398
	xor r5, r9
	or r9, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2399
	xor r15, r17
	or r17, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2400
	xor r19, r21
	mov r13, r6
	or r21, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2401
	jarl _is_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2402
	dispose 0x00000000, 0x00000061, [r31]
_sm2_z256_modp_haf:
	.stack _sm2_z256_modp_haf = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2413
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2418
	ld.w 0x00000000[r7], r2
	andi 0x00000001, r2, r0
	ld.w 0x00000004[r7], r5
	mov r6, r20
	bz9 .BB.LABEL.59_2
.BB.LABEL.59_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2420
	mov #_SM2_Z256_P, r8
	mov r20, r6
	jarl _sm2_z256_add.1, r31
	shl 0x0000001F, r10
	mov 0x00000000, r2
	br9 .BB.LABEL.59_3
.BB.LABEL.59_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2425
	st.w r2, 0x00000000[r20]
	st.w r5, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2426
	ld.w 0x0000000C[r7], r2
	ld.w 0x00000008[r7], r5
	st.w r2, 0x0000000C[r20]
	st.w r5, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2427
	ld.w 0x00000014[r7], r2
	ld.w 0x00000010[r7], r5
	st.w r2, 0x00000014[r20]
	st.w r5, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2428
	ld.w 0x0000001C[r7], r2
	ld.w 0x00000018[r7], r5
	st.w r2, 0x0000001C[r20]
	st.w r5, 0x00000018[r20]
	mov 0x00000000, r10
	mov r10, r2
.BB.LABEL.59_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2432
	ld.w 0x00000004[r20], r5
	mov r5, r6
	shr 0x00000001, r6
	ld.w 0x00000008[r20], r7
	shl 0x0000001F, r7
	or r7, r6
	ld.w 0x00000000[r20], r7
	st.w r6, 0x00000004[r20]
	shr 0x00000001, r7
	shl 0x0000001F, r5
	or r5, r7
	st.w r7, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2433
	ld.w 0x0000000C[r20], r5
	mov r5, r6
	shr 0x00000001, r6
	ld.w 0x00000010[r20], r7
	shl 0x0000001F, r7
	or r7, r6
	ld.w 0x00000008[r20], r7
	st.w r6, 0x0000000C[r20]
	shr 0x00000001, r7
	shl 0x0000001F, r5
	or r5, r7
	st.w r7, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2434
	ld.w 0x00000014[r20], r5
	mov r5, r6
	shr 0x00000001, r6
	ld.w 0x00000018[r20], r7
	shl 0x0000001F, r7
	or r7, r6
	ld.w 0x00000010[r20], r7
	st.w r6, 0x00000014[r20]
	shr 0x00000001, r7
	shl 0x0000001F, r5
	or r5, r7
	st.w r7, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2435
	ld.w 0x0000001C[r20], r5
	mov r5, r6
	shr 0x00000001, r6
	or r10, r6
	ld.w 0x00000018[r20], r7
	st.w r6, 0x0000001C[r20]
	shr 0x00000001, r7
	shl 0x0000001F, r5
	or r5, r7
	or r2, r7
	st.w r7, 0x00000018[r20]
	dispose 0x00000000, 0x00000041, [r31]
_sm2_z256_modp_tri:
	.stack _sm2_z256_modp_tri = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2447
	prepare 0x00000071, 0x00000020
	mov r6, r20
	mov r7, r21
	mov r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2450
	mov r22, r6
	mov r21, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2451
	mov r20, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_add.1, r31
	dispose 0x00000020, 0x00000071, [r31]
_sm2_z256_point_dbl:
	.stack _sm2_z256_point_dbl = 160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2463
	prepare 0x00000779, 0x0000007C
	add 0xFFFFFFFC, r3
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2466
	movea 0x00000020, r21, r22
	movea 0x00000060, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2477
	mov r23, r6
	mov r22, r7
	jarl _sm2_z256_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2467
	movea 0x00000040, r21, r24
	movea 0x00000020, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2479
	mov r25, r6
	mov r24, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2481
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2470
	movea 0x00000040, r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2483
	mov r26, r6
	mov r24, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2485
	mov r26, r6
	mov r26, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x00000040, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2487
	mov r22, r6
	mov r21, r7
	mov r25, r8
	jarl _sm2_z256_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2489
	mov r25, r6
	mov r21, r7
	mov r25, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2469
	movea 0x00000020, r20, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2491
	mov r24, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2493
	mov r24, r6
	mov r24, r7
	jarl _sm2_z256_modp_haf, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2495
	mov r22, r6
	mov r22, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2497
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_tri, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2499
	mov r23, r6
	mov r23, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2501
	mov r21, r6
	mov r23, r7
	jarl _sm2_z256_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2503
	mov r20, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2505
	mov r20, r6
	mov r20, r7
	mov r21, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2507
	mov r23, r6
	mov r23, r7
	mov r20, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2509
	mov r23, r6
	mov r23, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2511
	mov r24, r6
	mov r23, r7
	mov r24, r8
	jarl _sm2_z256_modp_sub.1, r31
	add 0x00000004, r3
	dispose 0x0000007C, 0x00000779, [r31]
_sm2_z256_point_add.1:
	.stack _sm2_z256_point_add.1 = 524
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2524
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFEA0, r3, r3
	mov r6, r2
	st.w r2, 0x00000018[r3]
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2550
	ld.w 0x0000004C[r20], r2
	ld.w 0x00000048[r20], r5
	ld.w 0x00000044[r20], r7
	ld.w 0x00000040[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2551
	ld.w 0x0000005C[r21], r22
	ld.w 0x00000058[r21], r23
	ld.w 0x00000054[r21], r24
	ld.w 0x00000050[r21], r25
	ld.w 0x0000004C[r21], r26
	ld.w 0x00000048[r21], r27
	ld.w 0x00000044[r21], r28
	ld.w 0x00000040[r21], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2550
	ld.w 0x0000005C[r20], r8
	ld.w 0x00000058[r20], r9
	ld.w 0x00000054[r20], r10
	ld.w 0x00000050[r20], r11
	or r2, r7
	or r10, r7
	or r8, r7
	or r5, r6
	or r11, r6
	or r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2553
	jarl _is_zero.1, r31
	mov r10, r30
	st.w r30, 0x00000000[r3]
	mov r11, r2
	st.w r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2551
	or r26, r28
	or r24, r28
	mov r28, r7
	or r22, r7
	or r27, r29
	or r25, r29
	mov r29, r6
	or r23, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2554
	jarl _is_zero.1, r31
	mov r10, r2
	st.w r2, 0x00000008[r3]
	mov r11, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2547
	movea 0x00000040, r21, r22
	movea 0x0000011C, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2557
	mov r23, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2543
	movea 0x00000040, r20, r24
	movea 0x0000013C, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2558
	mov r25, r6
	mov r24, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x0000015C, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2561
	mov r26, r6
	mov r23, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x0000019C, r3, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2562
	mov r27, r6
	mov r25, r7
	mov r24, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2542
	movea 0x00000020, r20, r2
	st.w r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2563
	mov r26, r6
	mov r26, r7
	mov r2, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2546
	movea 0x00000020, r21, r2
	st.w r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2564
	mov r27, r6
	mov r27, r7
	mov r2, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000000DC, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2565
	mov r27, r7
	mov r26, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x0000017C, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2568
	mov r26, r6
	mov r20, r7
	mov r23, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000001BC, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2569
	mov r23, r6
	mov r21, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000000FC, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2570
	mov r23, r7
	mov r26, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2573
	mov r26, r6
	mov r23, r7
	jarl _sm2_z256_equ.1, r31
	mov r30, r2
	ld.w 0x00000014[r3], r5
	or r5, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.62_6
.BB.LABEL.62_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_6
.BB.LABEL.62_2:	; entry
	ld.w 0x00000008[r3], r2
	ld.w 0x00000004[r3], r5
	or r5, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.62_6
.BB.LABEL.62_3:	; if_then_bb
	movea 0x0000019C, r3, r7
	movea 0x0000015C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2575
	jarl _sm2_z256_equ.1, r31
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_5
.BB.LABEL.62_4:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	ld.w 0x00000018[r3], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2578
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2579
	movea 0x00000160, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
.BB.LABEL.62_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r8
	mov 0x00000000, r7
	ld.w 0x00000018[r3], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2584
	mov r20, r6
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2585
	movea 0x00000160, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
.BB.LABEL.62_6:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x000000DC, r3, r23
	movea 0x0000009C, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2590
	mov r25, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x0000001C, r3, r26
	movea 0x000000FC, r3, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2591
	mov r26, r6
	mov r27, r7
	mov r24, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000000BC, r3, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2592
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2593
	mov r26, r6
	mov r26, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x0000007C, r3, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2594
	mov r29, r6
	mov r28, r7
	mov r27, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x000001BC, r3, r27
	movea 0x0000017C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2595
	mov r27, r6
	mov r28, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2596
	mov r28, r6
	mov r27, r7
	jarl _sm2_z256_modp_dbl.1, r31
	movea 0x0000005C, r3, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2597
	mov r30, r6
	mov r25, r7
	mov r28, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2598
	mov r30, r6
	mov r30, r7
	mov r29, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x0000003C, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2599
	mov r25, r6
	mov r27, r7
	mov r30, r8
	jarl _sm2_z256_modp_sub.1, r31
	movea 0x0000019C, r3, r27
	movea 0x0000015C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2600
	mov r27, r6
	mov r29, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2601
	mov r25, r6
	mov r23, r7
	mov r25, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2602
	mov r25, r6
	mov r25, r7
	mov r27, r8
	jarl _sm2_z256_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2605
	mov r30, r6
	mov r21, r7
	ld.w 0x00000000[r3], r21
	mov r21, r8
	ld.w 0x00000014[r3], r23
	mov r23, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2606
	mov r25, r6
	ld.w 0x0000000C[r3], r2
	mov r2, r7
	mov r21, r8
	mov r23, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2607
	mov r26, r6
	mov r22, r7
	mov r21, r8
	mov r23, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2609
	mov r30, r6
	mov r20, r7
	ld.w 0x00000008[r3], r20
	mov r20, r8
	ld.w 0x00000004[r3], r21
	mov r21, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2610
	mov r25, r6
	ld.w 0x00000010[r3], r2
	mov r2, r7
	mov r20, r8
	mov r21, r9
	jarl _sm2_z256_copy_conditional.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2611
	mov r26, r6
	mov r24, r7
	mov r20, r8
	mov r21, r9
	jarl _sm2_z256_copy_conditional.1, r31
	movea 0x00000020, r0, r20
	ld.w 0x00000018[r3], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2614
	mov r21, r6
	mov r30, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2615
	movea 0x00000020, r21, r6
	mov r25, r7
	mov r20, r8
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2616
	movea 0x00000040, r21, r6
	mov r26, r7
	mov r20, r8
	jarl _memcpy, r31
	movea 0x00000160, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
_sm2_z256_point_mul_pre_compute.1:
	.stack _sm2_z256_point_mul_pre_compute.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2628
	prepare 0x00000779, 0x00000000
	mov r6, r20
	mov r7, r21
	movea 0x00000060, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2630
	mov r21, r6
	mov r20, r7
	jarl _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2633
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	movea 0x00000040, r20, r6
	jarl _sm2_z256_equ.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	movea 0x00000060, r21, r22
	mov r22, r6
	mov r21, r7
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.63_2
.BB.LABEL.63_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2636
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2637
	mov r22, r7
	movea 0x000000C0, r21, r23
	mov r23, r6
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2638
	movea 0x00000120, r21, r24
	mov r24, r6
	mov r22, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2639
	movea 0x00000180, r21, r22
	mov r22, r6
	mov r24, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2640
	movea 0x000001E0, r21, r25
	mov r25, r6
	mov r23, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2641
	movea 0x00000240, r21, r23
	mov r23, r6
	mov r25, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2642
	movea 0x000002A0, r21, r26
	mov r26, r6
	mov r24, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2643
	movea 0x00000300, r21, r6
	mov r26, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2644
	movea 0x00000360, r21, r24
	mov r24, r6
	mov r22, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2645
	movea 0x000003C0, r21, r6
	mov r24, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2646
	movea 0x00000420, r21, r22
	mov r22, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2647
	movea 0x00000480, r21, r6
	mov r22, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2648
	movea 0x000004E0, r21, r22
	mov r22, r6
	mov r23, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2649
	movea 0x00000540, r21, r6
	mov r22, r7
	mov r20, r8
	jarl _sm2_z256_point_add_affine.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2650
	movea 0x000005A0, r21, r6
	mov r26, r7
	jarl _sm2_z256_point_dbl, r31
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.63_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2655
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2656
	mov r22, r7
	movea 0x00000120, r21, r23
	mov r23, r6
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2657
	movea 0x000002A0, r21, r24
	mov r24, r6
	mov r23, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2658
	movea 0x000005A0, r21, r6
	mov r24, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2659
	movea 0x000000C0, r21, r25
	mov r25, r6
	mov r22, r7
	mov r20, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2660
	movea 0x000001E0, r21, r20
	mov r20, r6
	mov r25, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2661
	movea 0x00000420, r21, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2662
	movea 0x00000180, r21, r26
	mov r26, r6
	mov r25, r7
	mov r22, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2663
	movea 0x00000360, r21, r6
	mov r26, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2664
	movea 0x00000240, r21, r22
	mov r22, r6
	mov r23, r7
	mov r25, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2665
	movea 0x000004E0, r21, r6
	mov r22, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2666
	movea 0x00000300, r21, r6
	mov r23, r7
	mov r26, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2667
	movea 0x000003C0, r21, r6
	mov r20, r7
	mov r26, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2668
	movea 0x00000480, r21, r6
	mov r22, r7
	mov r20, r8
	jarl _sm2_z256_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2669
	movea 0x00000540, r21, r6
	mov r24, r7
	mov r22, r8
	jarl _sm2_z256_point_add.1, r31
	dispose 0x00000000, 0x00000779, [r31]
_sm2_z256_point_neg.1:
	.stack _sm2_z256_point_neg.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2682
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2684
	jarl _sm2_z256_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2685
	movea 0x00000020, r21, r7
	movea 0x00000020, r20, r6
	jarl _sm2_z256_modp_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2686
	movea 0x00000040, r21, r7
	movea 0x00000040, r20, r6
	jarl _sm2_z256_copy.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_sm2_z256_point_sub.1:
	.stack _sm2_z256_point_sub.1 = 112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2699
	prepare 0x00000071, 0x00000060
	mov r6, r20
	mov r7, r21
	mov r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2702
	mov r22, r6
	mov r8, r7
	jarl _sm2_z256_point_neg.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2703
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_point_add.1, r31
	dispose 0x00000060, 0x00000071, [r31]
_sm2_z256_point_mul.1:
	.stack _sm2_z256_point_mul.1 = 1560
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2706
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFA7C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2715
	mov r8, r6
	jarl _sm2_z256_point_mul_pre_compute.1, r31
	movea 0x00000033, r0, r22
	mov 0x00000001, r23
	br9 .BB.LABEL.66_12
.BB.LABEL.66_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2720
	mov r21, r6
	mov r22, r8
	jarl _sm2_z256_get_booth.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2722
	cmp 0x00000000, r23
	mov r10, r24
	bz9 .BB.LABEL.66_7
.BB.LABEL.66_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2725
	cmp 0x00000000, r24
	bz9 .BB.LABEL.66_11
.BB.LABEL.66_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2727
	mul 0x00000060, r24, r0
	mov r3, r23
	add r23, r24
	movea 0xFFFFFFA0, r24, r23
	movea 0x00000060, r0, r24
	add r20, r24
	mov r20, r2
	br9 .BB.LABEL.66_5
.BB.LABEL.66_4:	; if_then_bb29
	ld23.dw 0x00000000[r23], r6
	st23.dw r6, 0x00000000[r2]
	add 0x00000008, r23
	add 0x00000008, r2
.BB.LABEL.66_5:	; if_then_bb29
	cmp r2, r24
	bnz9 .BB.LABEL.66_4
.BB.LABEL.66_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.66_11
.BB.LABEL.66_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2734
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2735
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2736
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2737
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2738
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_dbl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2741
	cmp 0x00000000, r24
	ble9 .BB.LABEL.66_9
.BB.LABEL.66_8:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2743
	mul 0x00000060, r24, r0
	mov r3, r2
	add r2, r24
	movea 0xFFFFFFA0, r24, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_add.1, r31
	br9 .BB.LABEL.66_11
.BB.LABEL.66_9:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2745
	cmp 0x00000000, r24
	bp9 .BB.LABEL.66_11
.BB.LABEL.66_10:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2747
	not r24, r2
	mul 0x00000060, r2, r0
	mov r3, r8
	add r2, r8
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_point_sub.1, r31
.BB.LABEL.66_11:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r22
.BB.LABEL.66_12:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2718
	cmp 0x00000000, r22
	bp9 .BB.LABEL.66_1
.BB.LABEL.66_13:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2753
	cmp 0x00000000, r23
	bz9 .BB.LABEL.66_15
.BB.LABEL.66_14:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2755
	mov r20, r6
	jarl _memset, r31
.BB.LABEL.66_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000584, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2757
	dispose 0x0000007C, 0x00000479, [r31]
_sm2_z256_point_is_at_infinity.1:
	.stack _sm2_z256_point_is_at_infinity.1 = 76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2767
	prepare 0x00000061, 0x00000040
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2769
	movea 0x00000040, r20, r6
	jarl _sm2_z256_is_zero.1, r31
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.67_3
.BB.LABEL.67_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2775
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2776
	mov r21, r6
	mov r21, r7
	mov r20, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2777
	movea 0x00000020, r20, r7
	mov r3, r20
	mov r20, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2779
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.67_3
.BB.LABEL.67_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2785
	dispose 0x00000040, 0x00000061, [r31]
.BB.LABEL.67_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2791
	dispose 0x00000040, 0x00000061, [r31]
_sm2_z256_modp_from_mont.1:
	.stack _sm2_z256_modp_from_mont.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2802
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2804
	mov #_SM2_Z256_ONE, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_sm2_z256_modp_mont_inv.1:
	.stack _sm2_z256_modp_mont_inv.1 = 184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2816
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFFDC, r3, r3
	mov r6, r20
	mov r7, r21
	movea 0x00000080, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2822
	mov r22, r6
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000060, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2823
	mov r23, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000040, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2824
	mov r22, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2825
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2826
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2827
	mov r23, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2828
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2829
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2830
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2831
	mov r23, r6
	mov r23, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2832
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov 0x00000001, r22
	br9 .BB.LABEL.69_2
.BB.LABEL.69_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2837
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r22
.BB.LABEL.69_2:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2835
	cmp 0x00000008, r22
	blt9 .BB.LABEL.69_1
.BB.LABEL.69_3:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2839
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r22
	br9 .BB.LABEL.69_5
.BB.LABEL.69_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2843
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r22
.BB.LABEL.69_5:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2841
	cmp 0x00000008, r22
	blt9 .BB.LABEL.69_4
.BB.LABEL.69_6:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2845
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r22
	br9 .BB.LABEL.69_8
.BB.LABEL.69_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2849
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r22
.BB.LABEL.69_8:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2847
	cmp 0x00000004, r22
	blt9 .BB.LABEL.69_7
.BB.LABEL.69_9:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r22
	movea 0x00000040, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2851
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2852
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2853
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000060, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2854
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2855
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2856
	mov r22, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2857
	mov r24, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	movea 0x00000080, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2858
	mov r23, r6
	mov r24, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2859
	mov r22, r6
	mov r24, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	mov 0x00000001, r22
	br9 .BB.LABEL.69_11
.BB.LABEL.69_10:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2863
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r22
.BB.LABEL.69_11:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2861
	addi 0xFFFFFFE1, r22, r0
	blt9 .BB.LABEL.69_10
.BB.LABEL.69_12:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000020, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2865
	mov r22, r6
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2866
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2867
	mov r22, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000060, r3, r8
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2868
	mov r22, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_14
.BB.LABEL.69_13:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2872
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_14:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2870
	addi 0xFFFFFFDF, r21, r0
	blt9 .BB.LABEL.69_13
.BB.LABEL.69_15:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r21
	movea 0x00000060, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2874
	mov r22, r6
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2875
	mov r21, r6
	mov r22, r7
	mov r21, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_17
.BB.LABEL.69_16:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2879
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_17:	; bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2877
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.69_16
.BB.LABEL.69_18:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r21
	movea 0x00000040, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2881
	mov r21, r6
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2882
	mov r22, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2883
	mov r21, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_20
.BB.LABEL.69_19:	; bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2887
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_20:	; bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2885
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.69_19
.BB.LABEL.69_21:	; bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r21
	movea 0x00000040, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2889
	mov r21, r6
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2890
	mov r22, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2891
	mov r21, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_23
.BB.LABEL.69_22:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2895
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_23:	; bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2893
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.69_22
.BB.LABEL.69_24:	; bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r21
	movea 0x00000040, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2897
	mov r21, r6
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2898
	mov r22, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2899
	mov r21, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_26
.BB.LABEL.69_25:	; bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2903
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_26:	; bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2901
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.69_25
.BB.LABEL.69_27:	; bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r3, r21
	movea 0x00000040, r3, r22
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2905
	mov r21, r6
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2906
	mov r22, r6
	mov r21, r7
	mov r22, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2907
	mov r21, r7
	mov r6, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.69_29
.BB.LABEL.69_28:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2911
	mov r6, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	add 0x00000001, r21
.BB.LABEL.69_29:	; bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2909
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.69_28
.BB.LABEL.69_30:	; bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r8
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2913
	mov r20, r6
	jarl _sm2_z256_modp_mont_mul.1, r31
	movea 0x00000024, r3, r3
	dispose 0x0000007C, 0x00000479, [r31]
_sm2_z256_point_get_xy.1:
	.stack _sm2_z256_point_get_xy.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2927
	prepare 0x00000079, 0x00000020
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2930
	jarl _sm2_z256_point_is_at_infinity.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.70_4
.BB.LABEL.70_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2932
	mov r21, r6
	jarl _sm2_z256_set_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2933
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.70_3
.BB.LABEL.70_2:	; if_then_bb.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.70_7
.BB.LABEL.70_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2935
	mov r22, r6
	jarl _sm2_z256_set_zero.1, r31
	mov 0x00000000, r10
	dispose 0x00000020, 0x00000079, [r31]
.BB.LABEL.70_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2941
	movhi HIGHW1(#_SM2_Z256_MODP_MONT_ONE), r0, r2
	ld.w LOWW(#_SM2_Z256_MODP_MONT_ONE)[r2], r7
	movea 0x00000040, r20, r23
	mov r23, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.70_10
.BB.LABEL.70_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2944
	mov r21, r6
	mov r20, r7
	jarl _sm2_z256_modp_from_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2945
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.70_8
.BB.LABEL.70_6:	; if_then_bb25.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
.BB.LABEL.70_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2976
	dispose 0x00000020, 0x00000079, [r31]
.BB.LABEL.70_8:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2947
	movea 0x00000020, r20, r7
.BB.LABEL.70_9:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r22, r6
	jarl _sm2_z256_modp_from_mont.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2976
	dispose 0x00000020, 0x00000079, [r31]
.BB.LABEL.70_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2956
	mov r23, r7
	jarl _sm2_z256_modp_mont_inv.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2957
	cmp 0x00000000, r22
	bz9 .BB.LABEL.70_12
.BB.LABEL.70_11:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2960
	movea 0x00000020, r20, r7
	mov r3, r8
	mov r22, r6
	jarl _sm2_z256_modp_mont_mul.1, r31
.BB.LABEL.70_12:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2963
	mov r23, r6
	mov r23, r7
	jarl _sm2_z256_modp_mont_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2965
	mov r21, r6
	mov r20, r7
	mov r23, r8
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2966
	mov r21, r6
	mov r21, r7
	jarl _sm2_z256_modp_from_mont.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2967
	cmp 0x00000000, r22
	bz9 .BB.LABEL.70_6
.BB.LABEL.70_13:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2970
	mov r22, r6
	mov r22, r7
	jarl _sm2_z256_modp_mont_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2971
	mov r22, r7
	br9 .BB.LABEL.70_9
_sm2_do_verify.1:
	.stack _sm2_do_verify.1 = 372
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2988
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFF1C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x00000080, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 2999
	mov r23, r6
	mov r22, r7
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3000
	mov r23, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bz17 .BB.LABEL.71_11
.BB.LABEL.71_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3005
	jarl _sm2_z256_order.1, r31
	movea 0x00000080, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.71_11
.BB.LABEL.71_2:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3010
	movea 0x00000020, r22, r7
	movea 0x00000060, r3, r22
	mov r22, r6
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3011
	mov r22, r6
	jarl _sm2_z256_is_zero.1, r31
	add 0xFFFFFFFF, r10
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.71_11
.BB.LABEL.71_3:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3016
	jarl _sm2_z256_order.1, r31
	movea 0x00000060, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.71_11
.BB.LABEL.71_4:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r22
	movea 0x00000060, r3, r8
	movea 0x00000080, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3023
	mov r22, r6
	jarl _sm2_z256_modn_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3024
	mov r22, r6
	jarl _sm2_z256_is_zero.1, r31
	or r11, r10
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.71_11
.BB.LABEL.71_5:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000100, r3, r22
	movea 0x00000060, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3031
	mov r22, r6
	jarl _sm2_z256_point_mul_generator.1, r31
	movea 0x000000A0, r3, r23
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3032
	mov r23, r6
	mov r20, r8
	jarl _sm2_z256_point_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3033
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _sm2_z256_point_add.1, r31
	mov 0x00000000, r8
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3034
	mov r22, r6
	jarl _sm2_z256_point_get_xy.1, r31
	movea 0x00000040, r3, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3037
	mov r20, r6
	mov r21, r7
	jarl _sm2_z256_from_bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3038
	jarl _sm2_z256_order.1, r31
	mov r20, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.71_7
.BB.LABEL.71_6:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3040
	jarl _sm2_z256_order.1, r31
	movea 0x00000040, r3, r6
	mov r6, r7
	mov r10, r8
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.71_7:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3044
	jarl _sm2_z256_order.1, r31
	movea 0x00000020, r3, r6
	mov r10, r7
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.71_9
.BB.LABEL.71_8:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3046
	jarl _sm2_z256_order.1, r31
	movea 0x00000020, r3, r6
	mov r6, r7
	mov r10, r8
	jarl _sm2_z256_sub.1, r31
.BB.LABEL.71_9:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r20
	movea 0x00000020, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3048
	mov r20, r6
	mov r20, r7
	jarl _sm2_z256_modn_add.1, r31
	movea 0x00000080, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3051
	mov r20, r6
	jarl _sm2_z256_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.71_11
.BB.LABEL.71_10:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3056
	movea 0x000000E4, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
.BB.LABEL.71_11:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3057
	movea 0x000000E4, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_bn_is_zero.1:
	.stack _bn_is_zero.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3068
	br9 .BB.LABEL.72_2
.BB.LABEL.72_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r7, r2
	shl 0x00000002, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.72_4
.BB.LABEL.72_2:	; bb10
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3070
	addi 0xFFFFFFFF, r2, r7
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.72_1
.BB.LABEL.72_3:	; bb10.bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.72_5
.BB.LABEL.72_4:	; bb.bb19_crit_edge
	mov 0x00000000, r10
.BB.LABEL.72_5:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3072
	jmp [r31]
_bn_is_one.1:
	.stack _bn_is_one.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3082
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3084
	cmp 0x00000001, r2
	bz9 .BB.LABEL.73_3
.BB.LABEL.73_1:	; entry.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.73_5
.BB.LABEL.73_2:	; bb8
	mov r7, r2
	shl 0x00000002, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.73_1
.BB.LABEL.73_3:	; bb19
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3085
	addi 0xFFFFFFFF, r2, r7
	cmp 0x00000001, r2
	bh9 .BB.LABEL.73_2
.BB.LABEL.73_4:	; bb19.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
.BB.LABEL.73_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3087
	jmp [r31]
_bn_from_bytes.1:
	.stack _bn_from_bytes.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3097
	br9 .BB.LABEL.74_2
.BB.LABEL.74_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3100
	ld.b 0x00000000[r8], r2
	shl 0x00000018, r2
	ld.bu 0x00000001[r8], r5
	shl 0x00000010, r5
	or r5, r2
	ld.bu 0x00000002[r8], r5
	shl 0x00000008, r5
	or r5, r2
	ld.bu 0x00000003[r8], r5
	or r5, r2
	mov r7, r5
	shl 0x00000002, r5
	add r6, r5
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3101
	add 0x00000004, r8
.BB.LABEL.74_2:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3099
	addi 0xFFFFFFFF, r2, r7
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.74_1
.BB.LABEL.74_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3103
	jmp [r31]
_bn_cmp.1:
	.stack _bn_cmp.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3113
	br9 .BB.LABEL.75_3
.BB.LABEL.75_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3116
	shl 0x00000002, r2
	add 0xFFFFFFFC, r2
	mov r6, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	add r7, r2
	ld.w 0x00000000[r2], r2
	cmp r2, r5
	bh9 .BB.LABEL.75_5
.BB.LABEL.75_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3117
	cmp r2, r5
	bl9 .BB.LABEL.75_6
.BB.LABEL.75_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3115
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.75_1
.BB.LABEL.75_4:	; bb29.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.75_7
.BB.LABEL.75_5:	; bb.bb38_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.75_7
.BB.LABEL.75_6:	; if_else_bb.bb38_crit_edge
	mov 0xFFFFFFFF, r10
.BB.LABEL.75_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3120
	jmp [r31]
_bn_sub.1:
	.stack _bn_sub.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3130
	mov 0x00000000, r2
	mov r2, r5
	mov r2, r11
	br9 .BB.LABEL.76_2
.BB.LABEL.76_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3134
	mov r11, r12
	shl 0x00000002, r12
	mov r7, r2
	add r12, r2
	ld.w 0x00000000[r2], r2
	mov r8, r13
	add r12, r13
	ld.w 0x00000000[r13], r13
	mov 0x00000000, r14
	sub r13, r2
	sbf 0x00000001, r14, r14, r13
	add r2, r10
	adf 0x00000001, r13, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3135
	add r6, r12
	st.w r10, 0x00000000[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3136
	mov r2, r5
	sar 0x0000001F, r5
	add 0x00000001, r11
.BB.LABEL.76_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3133
	cmp r9, r11
	bl9 .BB.LABEL.76_1
.BB.LABEL.76_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3139
	jmp [r31]
_bn_add.1:
	.stack _bn_add.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3149
	mov 0x00000000, r2
	mov r2, r5
	mov r2, r11
	br9 .BB.LABEL.77_2
.BB.LABEL.77_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3153
	mov r11, r12
	shl 0x00000002, r12
	mov r7, r5
	add r12, r5
	ld.w 0x00000000[r5], r13
	mov r8, r5
	add r12, r5
	ld.w 0x00000000[r5], r14
	mov 0x00000000, r5
	add r14, r13
	adf 0x00000001, r5, r5, r14
	add r13, r10
	adf 0x00000001, r14, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3154
	add r6, r12
	st.w r10, 0x00000000[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3155
	add 0x00000001, r11
.BB.LABEL.77_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r10
	mov r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3152
	cmp r9, r11
	bl9 .BB.LABEL.77_1
.BB.LABEL.77_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3158
	jmp [r31]
_bn_mul.1:
	.stack _bn_mul.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3168
	mov 0x00000000, r2
	br9 .BB.LABEL.78_2
.BB.LABEL.78_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r5
	shl 0x00000002, r5
	add r6, r5
	st.w r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.78_2:	; bb14
	cmp r9, r2
	bl9 .BB.LABEL.78_1
.BB.LABEL.78_3:	; bb14.bb71_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.78_7
.BB.LABEL.78_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3175
	mov r2, r12
	add r11, r12
	mov r2, r13
	shl 0x00000002, r13
	add r7, r13
	ld.w 0x00000000[r13], r13
	mov r11, r14
	shl 0x00000002, r14
	add r8, r14
	ld.w 0x00000000[r14], r14
	mulu r14, r13, r14
	shl 0x00000002, r12
	add r6, r12
	ld.w 0x00000000[r12], r15
	mov 0x00000000, r16
	add r13, r15
	adf 0x00000001, r16, r14, r13
	add r15, r10
	adf 0x00000001, r13, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3176
	st.w r10, 0x00000000[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3177
	add 0x00000001, r11
.BB.LABEL.78_5:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r5, r10
	mov r16, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3174
	cmp r9, r11
	bl9 .BB.LABEL.78_4
.BB.LABEL.78_6:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3179
	mov r9, r5
	add r2, r5
	shl 0x00000002, r5
	add r6, r5
	st.w r10, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.78_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3172
	cmp r9, r2
	bnc9 .BB.LABEL.78_9
.BB.LABEL.78_8:	; bb71.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r5
	mov r5, r16
	mov r5, r11
	br9 .BB.LABEL.78_5
.BB.LABEL.78_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3181
	jmp [r31]
_bn_mul_lo.1:
	.stack _bn_mul_lo.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3191
	mov 0x00000000, r2
	br9 .BB.LABEL.79_2
.BB.LABEL.79_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r2, r5
	shl 0x00000002, r5
	add r6, r5
	st.w r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.79_2:	; bb14
	cmp r9, r2
	bl9 .BB.LABEL.79_1
.BB.LABEL.79_3:	; bb14.bb66_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.79_7
.BB.LABEL.79_4:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3198
	mov r2, r12
	add r11, r12
	mov r2, r13
	shl 0x00000002, r13
	add r7, r13
	ld.w 0x00000000[r13], r13
	mov r11, r14
	shl 0x00000002, r14
	add r8, r14
	ld.w 0x00000000[r14], r14
	mulu r14, r13, r14
	shl 0x00000002, r12
	add r6, r12
	ld.w 0x00000000[r12], r15
	mov 0x00000000, r16
	add r13, r15
	adf 0x00000001, r16, r14, r13
	add r15, r10
	adf 0x00000001, r13, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3199
	st.w r10, 0x00000000[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3200
	add 0x00000001, r11
.BB.LABEL.79_5:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r5, r10
	mov r16, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3197
	mov r9, r16
	sub r2, r16
	cmp r16, r11
	bl9 .BB.LABEL.79_4
.BB.LABEL.79_6:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0x00000001, r2
.BB.LABEL.79_7:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3195
	cmp r9, r2
	bnc9 .BB.LABEL.79_9
.BB.LABEL.79_8:	; bb66.bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r5
	mov r5, r16
	mov r5, r11
	br9 .BB.LABEL.79_5
.BB.LABEL.79_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3203
	jmp [r31]
_bn_copy.1:
	.stack _bn_copy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3205
	br9 .BB.LABEL.80_2
.BB.LABEL.80_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	shl 0x00000002, r2
	add 0xFFFFFFFC, r2
	mov r6, r5
	add r2, r5
	add r7, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.80_2:	; bb10
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3207
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.80_1
.BB.LABEL.80_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3208
	jmp [r31]
_bn_set_word.1:
	.stack _bn_set_word.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3210
	st.w r7, 0x00000000[r6]
	br9 .BB.LABEL.81_2
.BB.LABEL.81_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r8, r2
	shl 0x00000002, r2
	add r6, r2
	st.w r0, 0x00000000[r2]
.BB.LABEL.81_2:	; bb9
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3213
	addi 0xFFFFFFFF, r2, r8
	cmp 0x00000001, r2
	bh9 .BB.LABEL.81_1
.BB.LABEL.81_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3214
	jmp [r31]
_bn_mod_sub.1:
	.stack _bn_mod_sub.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3216
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	ld.w 0x00000018[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3218
	mov r21, r6
	mov r22, r7
	mov r24, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.82_3
.BB.LABEL.82_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r21, r7
	mov r22, r8
.BB.LABEL.82_2:	; if_then_bb
	mov r20, r6
	mov r24, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3223
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.82_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3220
	mov r20, r6
	mov r22, r7
	mov r21, r8
	mov r24, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3221
	mov r23, r7
	mov r20, r8
	br9 .BB.LABEL.82_2
_bn_mod_add.1:
	.stack _bn_mod_add.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3225
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r9, r21
	ld.w 0x00000010[r3], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3227
	mov r22, r9
	jarl _bn_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3228
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.83_2
.BB.LABEL.83_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3229
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.83_3
.BB.LABEL.83_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r20, r6
	mov r20, r7
	mov r21, r8
	mov r22, r9
	jarl _bn_sub.1, r31
.BB.LABEL.83_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3230
	dispose 0x00000000, 0x00000071, [r31]
_bn_barrett_mod_mul.1:
	.stack _bn_barrett_mod_mul.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3240
	prepare 0x000007FD, 0x00000000
	ld.w 0x00000030[r3], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3242
	mov r20, r2
	shl 0x00000002, r2
	ld.w 0x0000002C[r3], r21
	add r21, r2
	addi 0x00000004, r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3244
	mov r20, r23
	shl 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3243
	mov r22, r24
	add r23, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3244
	add r24, r23
	add 0x00000008, r23
	mov 0x00000000, r5
	ld.w 0x00000028[r3], r25
	mov r6, r26
	br9 .BB.LABEL.84_2
.BB.LABEL.84_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r5, r6
	shl 0x00000002, r6
	mov r21, r10
	add r6, r10
	add r9, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000000[r10]
	add 0x00000001, r5
.BB.LABEL.84_2:	; bb39
	cmp r20, r5
	bl9 .BB.LABEL.84_1
.BB.LABEL.84_3:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3247
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3248
	mov r22, r6
	mov r20, r9
	jarl _bn_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3249
	mov r20, r27
	shl 0x00000002, r27
	mov r22, r7
	add r27, r7
	add 0xFFFFFFFC, r7
	addi 0x00000001, r20, r28
	mov r24, r6
	mov r25, r8
	mov r28, r9
	jarl _bn_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3250
	add r27, r24
	addi 0x00000004, r24, r7
	mov r23, r6
	mov r21, r8
	mov r28, r9
	jarl _bn_mul_lo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3251
	mov r23, r6
	mov r22, r7
	mov r23, r8
	mov r28, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3252
	mov r23, r6
	mov r21, r7
	mov r28, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.84_5
.BB.LABEL.84_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	addi 0x00000001, r20, r9
	mov r23, r6
	mov r23, r7
	mov r21, r8
	jarl _bn_sub.1, r31
.BB.LABEL.84_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3253
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _bn_cmp.1, r31
	cmp 0x00000000, r10
	bn9 .BB.LABEL.84_7
.BB.LABEL.84_6:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r23, r6
	mov r23, r7
	mov r21, r8
	mov r20, r9
	jarl _bn_sub.1, r31
.BB.LABEL.84_7:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3254
	mov r26, r6
	mov r23, r7
	mov r20, r8
	jarl _bn_copy.1, r31
	dispose 0x00000000, 0x000007FD, [r31]
_bn_barrett_mod_sqr.1:
	.stack _bn_barrett_mod_sqr.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3257
	prepare 0x00000001, 0x0000000C
	mov r8, r2
	ld.w 0x00000014[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3259
	st.w r5, 0x00000008[r3]
	ld.w 0x00000010[r3], r5
	st.w r5, 0x00000004[r3]
	st.w r9, 0x00000000[r3]
	mov r7, r8
	mov r2, r9
	jarl _bn_barrett_mod_mul.1, r31
	dispose 0x0000000C, 0x00000001, [r31]
_bn_barrett_mod_exp.1:
	.stack _bn_barrett_mod_exp.1 = 60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3262
	prepare 0x00000FFF, 0x0000000C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	ld.w 0x00000044[r3], r24
	ld.w 0x00000040[r3], r25
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3265
	mov r25, r6
	mov r24, r8
	jarl _bn_set_word.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3264
	mov r24, r26
	shl 0x00000002, r26
	add r25, r26
	ld.w 0x0000003C[r3], r27
	mov r24, r28
	br9 .BB.LABEL.86_6
.BB.LABEL.86_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3267
	mov r28, r2
	shl 0x00000002, r2
	add r22, r2
	ld.w 0x00000000[r2], r29
	mov 0x00000000, r30
	br9 .BB.LABEL.86_5
.BB.LABEL.86_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3269
	st.w r24, 0x00000004[r3]
	st.w r26, 0x00000000[r3]
	mov r25, r6
	mov r25, r7
	mov r23, r8
	mov r27, r9
	jarl _bn_barrett_mod_sqr.1, r31
	movhi 0x00008000, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3270
	tst r2, r29
	bz9 .BB.LABEL.86_4
.BB.LABEL.86_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	st.w r24, 0x00000008[r3]
	st.w r26, 0x00000004[r3]
	st.w r27, 0x00000000[r3]
	mov r25, r6
	mov r25, r7
	mov r21, r8
	mov r23, r9
	jarl _bn_barrett_mod_mul.1, r31
.BB.LABEL.86_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3271
	add 0x00000001, r30
	add r29, r29
.BB.LABEL.86_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3268
	addi 0xFFFFFFE0, r30, r0
	blt9 .BB.LABEL.86_2
.BB.LABEL.86_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3266
	cmp 0x00000000, r28
	bp9 .BB.LABEL.86_1
.BB.LABEL.86_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3274
	mov r20, r6
	mov r25, r7
	mov r24, r8
	jarl _bn_copy.1, r31
	dispose 0x0000000C, 0x00000FFF, [r31]
_bn_barrett_mod_inv.1:
	.stack _bn_barrett_mod_inv.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3277
	prepare 0x00000679, 0x0000000C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	ld.w 0x0000002C[r3], r24
	ld.w 0x00000028[r3], r25
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3280
	mov r25, r6
	mov r24, r8
	jarl _bn_set_word.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3281
	mov r25, r6
	mov r22, r7
	mov r25, r8
	mov r24, r9
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3282
	st.w r24, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3279
	shl 0x00000002, r24
	add r25, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3282
	st.w r24, 0x00000004[r3]
	st.w r23, 0x00000000[r3]
	mov r20, r6
	mov r21, r7
	mov r25, r8
	mov r22, r9
	jarl _bn_barrett_mod_exp.1, r31
	dispose 0x0000000C, 0x00000679, [r31]
_secp256r1_is_zero.1:
	.stack _secp256r1_is_zero.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3285
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r7
	jarl _bn_is_zero.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_is_one.1:
	.stack _secp256r1_is_one.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3286
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r7
	jarl _bn_is_one.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_cmp.1:
	.stack _secp256r1_cmp.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3287
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	jarl _bn_cmp.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_from_32bytes.1:
	.stack _secp256r1_from_32bytes.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3297
	prepare 0x00000001, 0x00000000
	mov r7, r8
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3299
	jarl _bn_from_bytes.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_copy.1:
	.stack _secp256r1_copy.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3301
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	jarl _bn_copy.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_set_one.1:
	.stack _secp256r1_set_one.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3302
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	mov 0x00000001, r7
	jarl _bn_set_word.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_set_zero.1:
	.stack _secp256r1_set_zero.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3303
	prepare 0x00000001, 0x00000000
	mov 0x00000008, r8
	mov 0x00000000, r7
	jarl _bn_set_word.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_modn.1:
	.stack _secp256r1_modn.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3305
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3307
	mov #_g_secp256r1N.7, r7
	mov r21, r6
	jarl _bn_cmp.1, r31
	mov r20, r6
	mov r21, r7
	cmp 0x00000000, r10
	bn9 .BB.LABEL.95_2
.BB.LABEL.95_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000008, r9
	mov #_g_secp256r1N.7, r8
	jarl _bn_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3309
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.95_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3308
	jarl _bn_copy.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_secp256r1_modn_inv.1:
	.stack _secp256r1_modn_inv.1 = 284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3311
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3314
	st.w r2, 0x00000004[r3]
	movea 0x00000008, r3, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1UN.8, r9
	mov #_g_secp256r1N.7, r8
	jarl _bn_barrett_mod_inv.1, r31
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modn_mul.1:
	.stack _secp256r1_modn_mul.1 = 224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3317
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3320
	st.w r2, 0x00000008[r3]
	movea 0x0000000C, r3, r2
	st.w r2, 0x00000004[r3]
	mov #_g_secp256r1UN.8, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1N.7, r9
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_add.1:
	.stack _secp256r1_modp_add.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3323
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_mod_add.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_sub.1:
	.stack _secp256r1_modp_sub.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3324
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_mod_sub.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_dbl.1:
	.stack _secp256r1_modp_dbl.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3325
	prepare 0x00000001, 0x00000004
	mov 0x00000008, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	mov r7, r8
	jarl _bn_mod_add.1, r31
	dispose 0x00000004, 0x00000001, [r31]
_secp256r1_modp_sqr.1:
	.stack _secp256r1_modp_sqr.1 = 224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3326
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3329
	st.w r2, 0x00000008[r3]
	movea 0x0000000C, r3, r2
	st.w r2, 0x00000004[r3]
	mov #_g_secp256r1UP.10, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	mov r7, r8
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_mul.1:
	.stack _secp256r1_modp_mul.1 = 224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3331
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFFA0, r3, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3334
	st.w r2, 0x00000008[r3]
	movea 0x0000000C, r3, r2
	st.w r2, 0x00000004[r3]
	mov #_g_secp256r1UP.10, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1P.9, r9
	jarl _bn_barrett_mod_mul.1, r31
	movea 0x00000060, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_modp_tri.1:
	.stack _secp256r1_modp_tri.1 = 60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3336
	prepare 0x00000479, 0x00000024
	mov r6, r20
	mov r7, r21
	mov 0x00000008, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3339
	st.w r22, 0x00000000[r3]
	mov #_g_secp256r1P.9, r23
	movea 0x00000004, r3, r24
	mov r24, r6
	mov r21, r8
	mov r23, r9
	jarl _bn_mod_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3340
	st.w r22, 0x00000000[r3]
	mov r20, r6
	mov r24, r7
	mov r21, r8
	mov r23, r9
	jarl _bn_mod_add.1, r31
	dispose 0x00000024, 0x00000479, [r31]
_secp256r1_modp_haf.1:
	.stack _secp256r1_modp_haf.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3342
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3345
	ld.w 0x00000000[r7], r2
	andi 0x00000001, r2, r0
	mov r6, r20
	mov r20, r6
	bz9 .BB.LABEL.104_2
.BB.LABEL.104_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000008, r9
	mov #_g_secp256r1P.9, r8
	jarl _bn_add.1, r31
	shl 0x0000001F, r10
	br9 .BB.LABEL.104_3
.BB.LABEL.104_2:	; if_else_bb
	mov 0x00000008, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3346
	jarl _bn_copy.1, r31
	mov 0x00000000, r10
.BB.LABEL.104_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3348
	ld.w 0x00000000[r20], r2
	shr 0x00000001, r2
	ld.w 0x00000004[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3349
	ld.w 0x00000004[r20], r2
	shr 0x00000001, r2
	ld.w 0x00000008[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3350
	ld.w 0x00000008[r20], r2
	shr 0x00000001, r2
	ld.w 0x0000000C[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3351
	ld.w 0x0000000C[r20], r2
	shr 0x00000001, r2
	ld.w 0x00000010[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3352
	ld.w 0x00000010[r20], r2
	shr 0x00000001, r2
	ld.w 0x00000014[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3353
	ld.w 0x00000014[r20], r2
	shr 0x00000001, r2
	ld.w 0x00000018[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000014[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3354
	ld.w 0x00000018[r20], r2
	shr 0x00000001, r2
	ld.w 0x0000001C[r20], r5
	shl 0x0000001F, r5
	or r5, r2
	st.w r2, 0x00000018[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3355
	ld.w 0x0000001C[r20], r2
	shr 0x00000001, r2
	or r10, r2
	st.w r2, 0x0000001C[r20]
	dispose 0x00000000, 0x00000041, [r31]
_secp256r1_modp_inv.1:
	.stack _secp256r1_modp_inv.1 = 284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3357
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3360
	st.w r2, 0x00000004[r3]
	movea 0x00000008, r3, r2
	st.w r2, 0x00000000[r3]
	mov #_g_secp256r1UP.10, r9
	mov #_g_secp256r1P.9, r8
	jarl _bn_barrett_mod_inv.1, r31
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_secp256r1_point_copy.1:
	.stack _secp256r1_point_copy.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3372
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3374
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3375
	movea 0x00000020, r21, r7
	movea 0x00000020, r20, r6
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3376
	movea 0x00000040, r21, r7
	movea 0x00000040, r20, r6
	jarl _secp256r1_copy.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_secp256r1_point_set_infinity.1:
	.stack _secp256r1_point_set_infinity.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3387
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3389
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3390
	movea 0x00000020, r20, r6
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3391
	movea 0x00000040, r20, r6
	jarl _secp256r1_set_zero.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_secp256r1_point_is_at_infinity.1:
	.stack _secp256r1_point_is_at_infinity.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3394
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3396
	movea 0x00000040, r6, r6
	jarl _secp256r1_is_zero.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3397
	dispose 0x00000000, 0x00000001, [r31]
_secp256r1_point_get_xy.1:
	.stack _secp256r1_point_get_xy.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3399
	prepare 0x00000079, 0x00000020
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3402
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.109_2
.BB.LABEL.109_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3403
	movea 0x00000040, r20, r7
	mov r3, r23
	mov r23, r6
	jarl _secp256r1_modp_inv.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3404
	movea 0x00000020, r20, r7
	mov r22, r6
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3405
	mov r23, r6
	mov r23, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3406
	mov r21, r6
	mov r20, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3407
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3408
	dispose 0x00000020, 0x00000079, [r31]
.BB.LABEL.109_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3409
	dispose 0x00000020, 0x00000079, [r31]
_secp256r1_point_is_on_curve.1:
	.stack _secp256r1_point_is_on_curve.1 = 116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3419
	prepare 0x00000079, 0x00000060
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3422
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.110_2
.BB.LABEL.110_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3424
	movea 0x00000020, r20, r7
	movea 0x00000040, r3, r21
	mov r21, r6
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3425
	movea 0x00000040, r20, r7
	movea 0x00000020, r3, r22
	mov r22, r6
	jarl _secp256r1_modp_sqr.1, r31
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3426
	mov r23, r6
	mov r22, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3427
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3428
	mov #_g_secp256r1B.11, r8
	mov r22, r6
	mov r22, r7
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3429
	mov r23, r6
	mov r23, r7
	mov r20, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3430
	mov r21, r6
	mov r21, r7
	mov r23, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3431
	mov r21, r6
	mov r21, r7
	mov r23, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3432
	mov r21, r6
	mov r21, r7
	mov r23, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3433
	mov r23, r6
	mov r20, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3434
	mov r23, r6
	mov r23, r7
	mov r20, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3435
	mov r22, r6
	mov r22, r7
	mov r23, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3437
	mov r21, r6
	mov r22, r7
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	setf 0x00000002, r10
	dispose 0x00000060, 0x00000079, [r31]
.BB.LABEL.110_2:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3438
	dispose 0x00000060, 0x00000079, [r31]
_secp256r1_point_set_xy.1:
	.stack _secp256r1_point_set_xy.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3448
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3450
	mov #_g_secp256r1P.9, r7
	mov r21, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.111_4
.BB.LABEL.111_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov #_g_secp256r1P.9, r7
	mov r22, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.111_4
.BB.LABEL.111_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3451
	mov r20, r6
	mov r21, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3452
	movea 0x00000020, r20, r6
	mov r22, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3453
	movea 0x00000040, r20, r6
	jarl _secp256r1_set_one.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3454
	mov r20, r6
	jarl _secp256r1_point_is_on_curve.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.111_4
.BB.LABEL.111_3:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3455
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.111_4:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3456
	dispose 0x00000000, 0x00000071, [r31]
_secp256r1_point_from_uncompressed_octets.1:
	.stack _secp256r1_point_from_uncompressed_octets.1 = 80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3458
	prepare 0x00000071, 0x00000040
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3461
	ld.bu 0x00000000[r7], r2
	cmp 0x00000004, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.112_2
.BB.LABEL.112_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3462
	addi 0x00000001, r20, r7
	movea 0x00000020, r3, r22
	mov r22, r6
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3463
	movea 0x00000021, r20, r7
	mov r3, r20
	mov r20, r6
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3464
	mov r21, r6
	mov r22, r7
	mov r20, r8
	jarl _secp256r1_point_set_xy.1, r31
	dispose 0x00000040, 0x00000071, [r31]
.BB.LABEL.112_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3465
	dispose 0x00000040, 0x00000071, [r31]
_secp256r1_public_key_from_bytes.1:
	.stack _secp256r1_public_key_from_bytes.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3475
	prepare 0x00000071, 0x00000000
	mov r8, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3477
	bz9 .BB.LABEL.113_7
.BB.LABEL.113_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.113_7
.BB.LABEL.113_2:	; bb27
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.113_7
.BB.LABEL.113_3:	; bb27
	cmp 0x00000000, r20
	bz9 .BB.LABEL.113_7
.BB.LABEL.113_4:	; bb62
	ld.w 0x00000000[r20], r2
	movea 0x00000041, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.113_7
.BB.LABEL.113_5:	; if_break_bb
	movea 0x00000080, r0, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3478
	mov r22, r6
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3479
	ld.w 0x00000000[r21], r7
	mov r22, r6
	jarl _secp256r1_point_from_uncompressed_octets.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.113_7
.BB.LABEL.113_6:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3480
	ld.w 0x00000000[r21], r2
	movea 0x00000041, r2, r2
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3481
	ld.w 0x00000000[r20], r2
	movea 0xFFFFFFBF, r2, r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3482
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.113_7:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3483
	dispose 0x00000000, 0x00000071, [r31]
_secp256r1_point_dbl.1:
	.stack _secp256r1_point_dbl.1 = 160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3493
	prepare 0x00000779, 0x0000007C
	add 0xFFFFFFFC, r3
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3495
	movea 0x00000020, r21, r22
	movea 0x00000060, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3499
	mov r23, r6
	mov r22, r7
	jarl _secp256r1_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3495
	movea 0x00000040, r21, r24
	movea 0x00000020, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3500
	mov r25, r6
	mov r24, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3501
	mov r23, r6
	mov r23, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3496
	movea 0x00000040, r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3502
	mov r26, r6
	mov r24, r7
	mov r22, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3503
	mov r26, r6
	mov r26, r7
	jarl _secp256r1_modp_dbl.1, r31
	movea 0x00000040, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3504
	mov r22, r6
	mov r21, r7
	mov r25, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3505
	mov r25, r6
	mov r21, r7
	mov r25, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3496
	movea 0x00000020, r20, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3506
	mov r24, r6
	mov r23, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3507
	mov r24, r6
	mov r24, r7
	jarl _secp256r1_modp_haf.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3508
	mov r22, r6
	mov r22, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3509
	mov r22, r6
	mov r22, r7
	jarl _secp256r1_modp_tri.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3510
	mov r23, r6
	mov r23, r7
	mov r21, r8
	jarl _secp256r1_modp_mul.1, r31
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3511
	mov r21, r6
	mov r23, r7
	jarl _secp256r1_modp_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3512
	mov r20, r6
	mov r22, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3513
	mov r20, r6
	mov r20, r7
	mov r21, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3514
	mov r23, r6
	mov r23, r7
	mov r20, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3515
	mov r23, r6
	mov r23, r7
	mov r22, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3516
	mov r24, r6
	mov r23, r7
	mov r24, r8
	jarl _secp256r1_modp_sub.1, r31
	add 0x00000004, r3
	dispose 0x0000007C, 0x00000779, [r31]
_secp256r1_point_add.1:
	.stack _secp256r1_point_add.1 = 296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3527
	prepare 0x000007FD, 0x0000007C
	movea 0xFFFFFF7C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3531
	mov r21, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_5
.BB.LABEL.115_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r21
	add r20, r21
	br9 .BB.LABEL.115_3
.BB.LABEL.115_2:	; if_then_bb
	ld23.dw 0x00000000[r22], r6
	st23.dw r6, 0x00000000[r20]
	add 0x00000008, r22
	add 0x00000008, r20
.BB.LABEL.115_3:	; if_then_bb
	cmp r20, r21
	bnz9 .BB.LABEL.115_2
.BB.LABEL.115_4:	; if_then_bb
	movea 0x00000084, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3572
	dispose 0x0000007C, 0x000007FD, [r31]
.BB.LABEL.115_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3532
	mov r22, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_10
.BB.LABEL.115_6:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000060, r0, r22
	add r20, r22
	br9 .BB.LABEL.115_8
.BB.LABEL.115_7:	; if_then_bb24
	ld23.dw 0x00000000[r21], r6
	st23.dw r6, 0x00000000[r20]
	add 0x00000008, r21
	add 0x00000008, r20
.BB.LABEL.115_8:	; if_then_bb24
	cmp r20, r22
	bnz9 .BB.LABEL.115_7
.BB.LABEL.115_9:	; if_then_bb24
	movea 0x00000084, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3572
	dispose 0x0000007C, 0x000007FD, [r31]
.BB.LABEL.115_10:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3534
	movea 0x00000040, r21, r23
	movea 0x000000E0, r3, r24
	mov r24, r6
	mov r23, r7
	jarl _secp256r1_modp_sqr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3535
	movea 0x00000040, r22, r25
	movea 0x000000C0, r3, r26
	mov r26, r6
	mov r25, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x000000A0, r3, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3536
	mov r27, r6
	mov r22, r7
	mov r24, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000080, r3, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3537
	mov r28, r6
	mov r21, r7
	mov r26, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000060, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3538
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3539
	mov r27, r6
	mov r27, r7
	mov r28, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3540
	mov r24, r6
	mov r24, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3541
	movea 0x00000020, r22, r8
	mov r24, r6
	mov r24, r7
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3542
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3543
	movea 0x00000020, r21, r8
	mov r26, r6
	mov r26, r7
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3544
	mov r24, r7
	mov r26, r8
	jarl _secp256r1_modp_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3545
	mov r24, r6
	mov r24, r7
	mov r26, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3547
	mov r24, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_13
.BB.LABEL.115_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x000000A0, r3, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_13
.BB.LABEL.115_12:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3548
	mov r20, r6
	mov r21, r7
	jarl _secp256r1_point_dbl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3549
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x000007FD, [r31]
.BB.LABEL.115_13:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x000000E0, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3551
	jarl _secp256r1_is_one.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_16
.BB.LABEL.115_14:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000040, r3, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.115_16
.BB.LABEL.115_15:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3552
	mov r20, r6
	jarl _secp256r1_point_set_infinity.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3553
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x000007FD, [r31]
.BB.LABEL.115_16:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x000000E0, r3, r21
	movea 0x00000040, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3556
	mov r22, r6
	mov r21, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x000000A0, r3, r24
	movea 0x00000020, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3557
	mov r26, r6
	mov r24, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3558
	mov r26, r6
	mov r26, r7
	mov r25, r8
	jarl _secp256r1_modp_mul.1, r31
	mov r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3559
	mov r23, r6
	mov r24, r7
	jarl _secp256r1_modp_sqr.1, r31
	movea 0x00000060, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3560
	mov r25, r6
	mov r25, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3561
	mov r24, r6
	mov r24, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x00000080, r3, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3562
	mov r27, r6
	mov r27, r7
	mov r23, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3563
	mov r22, r6
	mov r22, r7
	mov r25, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3564
	mov r27, r6
	mov r27, r7
	mov r22, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3565
	mov r21, r6
	mov r21, r7
	mov r27, r8
	jarl _secp256r1_modp_mul.1, r31
	movea 0x000000C0, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3566
	mov r23, r6
	mov r23, r7
	mov r24, r8
	jarl _secp256r1_modp_mul.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3567
	mov r21, r6
	mov r21, r7
	mov r23, r8
	jarl _secp256r1_modp_sub.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3569
	mov r20, r6
	mov r22, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3570
	movea 0x00000020, r20, r6
	mov r21, r7
	jarl _secp256r1_copy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3571
	movea 0x00000040, r20, r6
	mov r26, r7
	jarl _secp256r1_copy.1, r31
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x000007FD, [r31]
_secp256r1_point_mul.1:
	.stack _secp256r1_point_mul.1 = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3582
	prepare 0x00000679, 0x00000060
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3587
	jarl _secp256r1_point_set_infinity.1, r31
	mov 0x00000007, r23
	br9 .BB.LABEL.116_7
.BB.LABEL.116_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3590
	mov r23, r2
	shl 0x00000002, r2
	add r21, r2
	ld.w 0x00000000[r2], r24
	movea 0x00000020, r0, r25
	br9 .BB.LABEL.116_5
.BB.LABEL.116_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3593
	mov r6, r7
	jarl _secp256r1_point_dbl.1, r31
	movhi 0x00008000, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3594
	tst r2, r24
	bz9 .BB.LABEL.116_4
.BB.LABEL.116_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3595
	mov r6, r7
	mov r22, r8
	jarl _secp256r1_point_add.1, r31
.BB.LABEL.116_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3597
	add r24, r24
.BB.LABEL.116_5:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3592
	addi 0xFFFFFFFF, r2, r25
	cmp 0x00000000, r2
	bgt9 .BB.LABEL.116_2
.BB.LABEL.116_6:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	add 0xFFFFFFFF, r23
.BB.LABEL.116_7:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3589
	cmp 0x00000000, r23
	bp9 .BB.LABEL.116_1
.BB.LABEL.116_8:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3600
	mov r20, r6
	jarl _secp256r1_point_copy.1, r31
	dispose 0x00000060, 0x00000679, [r31]
_secp256r1_point_mul_generator.1:
	.stack _secp256r1_point_mul_generator.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3603
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3605
	mov #_g_secp256r1PointG.12, r8
	jarl _secp256r1_point_mul.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_ecdsa_do_verify.1:
	.stack _ecdsa_do_verify.1 = 504
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3617
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFE9C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3622
	mov r22, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.118_7
.BB.LABEL.118_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov #_g_secp256r1N.7, r7
	mov r22, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.118_7
.BB.LABEL.118_2:	; bb30
	movea 0x00000020, r22, r23
	mov r23, r6
	jarl _secp256r1_is_zero.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.118_7
.BB.LABEL.118_3:	; bb44
	mov #_g_secp256r1N.7, r7
	mov r23, r6
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bp9 .BB.LABEL.118_7
.BB.LABEL.118_4:	; if_break_bb
	movea 0x000001C0, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3627
	mov r24, r6
	mov r21, r7
	jarl _secp256r1_from_32bytes.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3628
	mov r24, r6
	mov r24, r7
	jarl _secp256r1_modn.1, r31
	movea 0x000001A0, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3630
	mov r21, r6
	mov r23, r7
	jarl _secp256r1_modn_inv.1, r31
	movea 0x00000180, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3631
	mov r23, r6
	mov r24, r7
	mov r21, r8
	jarl _secp256r1_modn_mul.1, r31
	movea 0x00000160, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3632
	mov r24, r6
	mov r22, r7
	mov r21, r8
	jarl _secp256r1_modn_mul.1, r31
	movea 0x000000C0, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3634
	mov r21, r6
	mov r23, r7
	jarl _secp256r1_point_mul_generator.1, r31
	movea 0x00000060, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3635
	mov r23, r6
	mov r24, r7
	mov r20, r8
	jarl _secp256r1_point_mul.1, r31
	mov r3, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3636
	mov r20, r6
	mov r21, r7
	mov r23, r8
	jarl _secp256r1_point_add.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3638
	mov r20, r6
	jarl _secp256r1_point_is_at_infinity.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.118_7
.BB.LABEL.118_5:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	movea 0x00000140, r3, r20
	movea 0x00000120, r3, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3640
	mov r20, r7
	jarl _secp256r1_point_get_xy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3641
	mov r20, r6
	mov r20, r7
	jarl _secp256r1_modn.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3643
	mov r20, r6
	mov r22, r7
	jarl _secp256r1_cmp.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.118_7
.BB.LABEL.118_6:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3646
	movea 0x00000164, r3, r3
	dispose 0x0000007C, 0x00000479, [r31]
.BB.LABEL.118_7:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/crypto_lib.c", 3647
	movea 0x00000164, r3, r3
	dispose 0x0000007C, 0x00000479, [r31]
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
