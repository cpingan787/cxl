#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\AES\aes.c -oDefaultBuild\aes.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6c61c4e1ee7c487394011aa0ba3fada8s1gsw0ch.gcy
#@	compiled at Fri Mar 27 09:50:51 2026

	.file "..\..\Bsw\Crypto\CRYPTO\AES\aes.c"

	$reg_mode 32
	.dbl_size 8

	.public _Crypto_aes_setkey_enc
	.public _Crypto_aes_setkey_dec
	.extern _Crypto_memset
	.public _internal_aes_encrypt
	.public _internal_aes_decrypt
	.public _Crypto_aes_crypt_ecb
	.public _Crypto_aes_crypt_cbc
	.extern _Crypto_memcpy
	.public _Crypto_aes_crypt_cbc_CMAC
	.public _Crypto_AESEncryptECB
	.public _Crypto_AESDecryptECB
	.public _Crypto_AESEncryptCBC
	.public _Crypto_AESDecryptCBC
	.public _Crypto_AESEncryptCTR
	.public _Crypto_AESDecryptCTR

	.section .text, text
_Crypto_aes_setkey_enc:
	.stack _Crypto_aes_setkey_enc = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 290
	addi 0xFFFFFF00, r8, r0
	mov r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 295
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	addi 0xFFFFFF40, r8, r0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; entry
	addi 0xFFFFFF80, r8, r0
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; switch_clause_bb
	mov 0x0000000A, r5
	br9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; switch_clause_bb10
	mov 0x0000000C, r5
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; switch_clause_bb13
	mov 0x0000000E, r5
.BB.LABEL.1_6:	; switch_clause_bb13
	st.w r5, 0x00000000[r6]
.BB.LABEL.1_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 310
	addi 0x00000008, r6, r5
	st.w r5, 0x00000004[r6]
	mov 0x00000000, r8
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 314
	andi 0x0000FFFF, r8, r9
	shl 0x00000002, r9
	mov r7, r10
	add r9, r10
	ld.bu 0x00000000[r10], r11
	ld.bu 0x00000001[r10], r12
	shl 0x00000008, r12
	or r12, r11
	ld.bu 0x00000002[r10], r12
	shl 0x00000010, r12
	or r12, r11
	ld.b 0x00000003[r10], r10
	shl 0x00000018, r10
	or r10, r11
	add r6, r9
	st.w r11, 0x00000008[r9]
	add 0x00000001, r8
.BB.LABEL.1_9:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 312
	andi 0x0000FFFF, r8, r9
	mov r2, r10
	shr 0x00000005, r10
	cmp r10, r9
	blt9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 317
	ld.w 0x00000000[r6], r2
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_11:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; bb74
	cmp 0x0000000E, r2
	bnz17 .BB.LABEL.1_22
.BB.LABEL.1_13:	; bb74.bb429_crit_edge
	mov 0x00000000, r2
	jr .BB.LABEL.1_21
.BB.LABEL.1_14:	; bb74.bb269_crit_edge
	mov 0x00000000, r2
	jr .BB.LABEL.1_19
.BB.LABEL.1_15:	; bb74.bb161_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 323
	andi 0x0000FFFF, r2, r6
	shl 0x00000002, r6
	mov #_RCON.11, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.w 0x00000000[r5], r7
	xor r6, r7
	ld.w 0x0000000C[r5], r6
	andi 0x0000FFFF, r6, r8
	shr 0x00000008, r8
	mov #_FSb.1, r9
	add r9, r8
	ld.bu 0x00000000[r8], r8
	xor r8, r7
	mov r6, r8
	shr 0x00000010, r8
	zxb r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000008, r8
	xor r8, r7
	mov r6, r8
	shr 0x00000018, r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000010, r8
	xor r8, r7
	zxb r6
	add r6, r9
	ld.b 0x00000000[r9], r6
	shl 0x00000018, r6
	xor r6, r7
	st.w r7, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 326
	ld.w 0x00000004[r5], r6
	xor r7, r6
	st.w r6, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 327
	ld.w 0x00000008[r5], r7
	xor r6, r7
	st.w r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 328
	ld.w 0x0000000C[r5], r6
	xor r7, r6
	st.w r6, 0x0000001C[r5]
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 323
	movea 0x00000010, r5, r5
.BB.LABEL.1_17:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 321
	andi 0x0000FFFF, r2, r6
	cmp 0x0000000A, r6
	blt9 .BB.LABEL.1_16
	jr .BB.LABEL.1_22
.BB.LABEL.1_18:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 336
	andi 0x0000FFFF, r2, r6
	shl 0x00000002, r6
	mov #_RCON.11, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.w 0x00000000[r5], r7
	xor r6, r7
	ld.w 0x00000014[r5], r6
	andi 0x0000FFFF, r6, r8
	shr 0x00000008, r8
	mov #_FSb.1, r9
	add r9, r8
	ld.bu 0x00000000[r8], r8
	xor r8, r7
	mov r6, r8
	shr 0x00000010, r8
	zxb r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000008, r8
	xor r8, r7
	mov r6, r8
	shr 0x00000018, r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000010, r8
	xor r8, r7
	zxb r6
	add r6, r9
	ld.b 0x00000000[r9], r6
	shl 0x00000018, r6
	xor r6, r7
	st.w r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 339
	ld.w 0x00000004[r5], r6
	xor r7, r6
	st.w r6, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 340
	ld.w 0x00000008[r5], r7
	xor r6, r7
	st.w r7, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 341
	ld.w 0x0000000C[r5], r6
	xor r7, r6
	st.w r6, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 342
	ld.w 0x00000010[r5], r7
	xor r6, r7
	st.w r7, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 343
	ld.w 0x00000014[r5], r6
	xor r7, r6
	st.w r6, 0x0000002C[r5]
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 336
	movea 0x00000018, r5, r5
.BB.LABEL.1_19:	; bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 334
	andi 0x0000FFFF, r2, r6
	cmp 0x00000008, r6
	blt9 .BB.LABEL.1_18
	br9 .BB.LABEL.1_22
.BB.LABEL.1_20:	; bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 351
	andi 0x0000FFFF, r2, r6
	shl 0x00000002, r6
	mov #_RCON.11, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.w 0x00000000[r5], r7
	xor r6, r7
	ld.w 0x0000001C[r5], r6
	andi 0x0000FFFF, r6, r8
	shr 0x00000008, r8
	mov #_FSb.1, r9
	add r9, r8
	ld.bu 0x00000000[r8], r8
	xor r8, r7
	mov r6, r8
	shr 0x00000010, r8
	zxb r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000008, r8
	xor r8, r7
	mov r6, r8
	shr 0x00000018, r8
	add r9, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000010, r8
	xor r8, r7
	zxb r6
	add r9, r6
	ld.b 0x00000000[r6], r6
	shl 0x00000018, r6
	xor r6, r7
	st.w r7, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 354
	ld.w 0x00000004[r5], r6
	xor r7, r6
	st.w r6, 0x00000024[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 355
	ld.w 0x00000008[r5], r7
	xor r6, r7
	st.w r7, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 356
	ld.w 0x0000000C[r5], r6
	xor r7, r6
	st.w r6, 0x0000002C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 358
	andi 0x000000FF, r6, r7
	add r9, r7
	ld.bu 0x00000000[r7], r7
	ld.w 0x00000010[r5], r8
	xor r7, r8
	andi 0x0000FFFF, r6, r7
	shr 0x00000008, r7
	add r9, r7
	ld.bu 0x00000000[r7], r7
	shl 0x00000008, r7
	xor r7, r8
	mov r6, r7
	shr 0x00000010, r7
	zxb r7
	add r9, r7
	ld.bu 0x00000000[r7], r7
	shl 0x00000010, r7
	xor r7, r8
	shr 0x00000018, r6
	add r6, r9
	ld.b 0x00000000[r9], r6
	shl 0x00000018, r6
	xor r6, r8
	st.w r8, 0x00000030[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 361
	ld.w 0x00000014[r5], r6
	xor r8, r6
	st.w r6, 0x00000034[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 362
	ld.w 0x00000018[r5], r7
	xor r6, r7
	st.w r7, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 363
	ld.w 0x0000001C[r5], r6
	xor r7, r6
	st.w r6, 0x0000003C[r5]
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 351
	movea 0x00000020, r5, r5
.BB.LABEL.1_21:	; bb429
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 349
	andi 0x0000FFFF, r2, r6
	cmp 0x00000007, r6
	blt9 .BB.LABEL.1_20
.BB.LABEL.1_22:	; switch_break_bb436
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 369
	jmp [r31]
_Crypto_aes_setkey_dec:
	.stack _Crypto_aes_setkey_dec = 304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 376
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	movea 0x00000118, r0, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 383
	mov r23, r6
	mov r24, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 384
	mov r23, r6
	mov r24, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 385
	addi 0x00000008, r20, r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 388
	mov r23, r6
	mov r21, r7
	mov r22, r8
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 389
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 391
	ld.w 0x00000000[r3], r2
	shl 0x00000004, r2
	ld.w 0x00000004[r3], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 393
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 394
	ld.w 0x00000004[r5], r2
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 395
	ld.w 0x00000008[r5], r2
	st.w r2, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 396
	ld.w 0x0000000C[r5], r2
	st.w r2, 0x00000014[r20]
	movea 0x00000010, r5, r2
	movea 0x00000018, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 398
	ld.w 0x00000000[r20], r6
	br9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 402
	ld.w 0x00000000[r2], r8
	andi 0x000000FF, r8, r9
	mov #_FSb.1, r11
	add r11, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000002, r9
	mov #_RT0.7, r12
	add r9, r12
	ld.w 0x00000000[r12], r9
	andi 0x0000FFFF, r8, r12
	shr 0x00000008, r12
	add r11, r12
	ld.bu 0x00000000[r12], r12
	shl 0x00000002, r12
	mov #_RT1.8, r13
	add r12, r13
	ld.w 0x00000000[r13], r12
	xor r12, r9
	mov r8, r12
	shr 0x00000010, r12
	zxb r12
	add r11, r12
	ld.bu 0x00000000[r12], r12
	shl 0x00000002, r12
	mov #_RT2.9, r13
	add r12, r13
	ld.w 0x00000000[r13], r12
	xor r12, r9
	shr 0x00000018, r8
	add r8, r11
	ld.bu 0x00000000[r11], r8
	shl 0x00000002, r8
	mov #_RT3.10, r11
	add r8, r11
	ld.w 0x00000000[r11], r8
	xor r8, r9
	st.w r9, 0x00000000[r5]
	add 0x00000004, r2
	add 0x00000001, r7
	add 0x00000004, r5
.BB.LABEL.2_2:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 400
	cmp 0x00000004, r7
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 398
	cmp 0x00000000, r6
	movea 0xFFFFFFE0, r2, r8
	ble9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb125.bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	mov 0x00000000, r7
	mov r8, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_5:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 407
	ld.w 0xFFFFFFE0[r2], r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 408
	ld.w 0xFFFFFFE4[r2], r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 409
	ld.w 0xFFFFFFE8[r2], r6
	st.w r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 410
	ld.w 0xFFFFFFEC[r2], r2
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 413
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000479, [r31]
_internal_aes_encrypt:
	.stack _internal_aes_encrypt = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 451
	prepare 0x00000041, 0x00000024
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 458
	ld.w 0x00000004[r6], r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 460
	ld.bu 0x00000001[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000000[r7], r5
	or r2, r5
	ld.bu 0x00000002[r7], r2
	shl 0x00000010, r2
	or r2, r5
	ld.b 0x00000003[r7], r2
	shl 0x00000018, r2
	or r2, r5
	st.w r5, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 461
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r5
	st.w r5, 0x0000001C[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 462
	ld.bu 0x00000005[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000004[r7], r9
	or r2, r9
	ld.bu 0x00000006[r7], r2
	shl 0x00000010, r2
	or r2, r9
	ld.b 0x00000007[r7], r2
	shl 0x00000018, r2
	or r2, r9
	st.w r9, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 463
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 464
	ld.bu 0x00000009[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000008[r7], r10
	or r2, r10
	ld.bu 0x0000000A[r7], r2
	shl 0x00000010, r2
	or r2, r10
	ld.b 0x0000000B[r7], r2
	shl 0x00000018, r2
	or r2, r10
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 465
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r10
	st.w r10, 0x00000014[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 466
	ld.bu 0x0000000D[r7], r2
	shl 0x00000008, r2
	ld.bu 0x0000000C[r7], r11
	or r2, r11
	ld.bu 0x0000000E[r7], r2
	shl 0x00000010, r2
	or r2, r11
	ld.b 0x0000000F[r7], r2
	shl 0x00000018, r2
	or r2, r11
	st.w r11, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 467
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r11
	st.w r11, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 469
	ld.w 0x00000000[r6], r6
	sar 0x00000001, r6
	jr .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 472
	shl 0x00000002, r9
	mov #_FT0.2, r13
	add r13, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	mov r2, r9
	shr 0x00000006, r9
	andi 0x000003FC, r9, r9
	mov #_FT1.3, r14
	add r14, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	mov r12, r9
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r9
	mov #_FT2.4, r15
	add r15, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	movhi 0x0000FF00, r0, r16
	mov r11, r9
	and r16, r9
	shr 0x00000016, r9
	mov #_FT3.5, r17
	add r17, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	st.w r5, 0x0000001C[r3]
	addi 0x00000008, r10, r9
	st.w r9, 0x00000020[r3]
	andi 0x000000FF, r2, r9
	shl 0x00000002, r9
	add r13, r9
	ld.w 0x00000000[r9], r18
	ld.w 0x00000008[r10], r9
	xor r18, r9
	mov r12, r10
	shr 0x00000006, r10
	andi 0x000003FC, r10, r10
	add r14, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	mov r11, r10
	shr 0x0000000E, r10
	andi 0x000003FC, r10, r10
	add r15, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	mov r7, r10
	and r16, r10
	shr 0x00000016, r10
	add r17, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r10
	addi 0x00000004, r10, r18
	st.w r18, 0x00000020[r3]
	andi 0x000000FF, r12, r18
	shl 0x00000002, r18
	add r13, r18
	ld.w 0x00000000[r18], r18
	ld.w 0x00000004[r10], r10
	xor r18, r10
	mov r11, r18
	shr 0x00000006, r18
	andi 0x000003FC, r18, r18
	add r14, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	mov r7, r18
	shr 0x0000000E, r18
	andi 0x000003FC, r18, r18
	add r15, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	mov r2, r18
	and r16, r18
	shr 0x00000016, r18
	add r17, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	st.w r10, 0x00000014[r3]
	ld.w 0x00000020[r3], r18
	addi 0x00000004, r18, r19
	st.w r19, 0x00000020[r3]
	zxb r11
	shl 0x00000002, r11
	add r11, r13
	ld.w 0x00000000[r13], r13
	ld.w 0x00000004[r18], r11
	xor r13, r11
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	add r7, r14
	ld.w 0x00000000[r14], r7
	xor r7, r11
	shr 0x0000000E, r2
	andi 0x000003FC, r2, r2
	add r2, r15
	ld.w 0x00000000[r15], r2
	xor r2, r11
	and r16, r12
	shr 0x00000016, r12
	add r12, r17
	ld.w 0x00000000[r17], r2
	xor r2, r11
	st.w r11, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
.BB.LABEL.3_2:	; bb356
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 469
	andi 0x000000FF, r5, r7
	shl 0x00000002, r7
	mov #_FT0.2, r13
	add r13, r7
	ld.w 0x00000000[r7], r7
	ld.w 0x00000000[r2], r12
	xor r7, r12
	mov r9, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	mov #_FT1.3, r14
	add r14, r7
	ld.w 0x00000000[r7], r7
	xor r7, r12
	mov r10, r7
	shr 0x0000000E, r7
	andi 0x000003FC, r7, r7
	mov #_FT2.4, r15
	add r15, r7
	ld.w 0x00000000[r7], r7
	xor r7, r12
	movhi 0x0000FF00, r0, r7
	mov r11, r16
	and r7, r16
	shr 0x00000016, r16
	mov #_FT3.5, r17
	add r17, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	st.w r12, 0x0000000C[r3]
	addi 0x00000004, r2, r12
	st.w r12, 0x00000020[r3]
	andi 0x000000FF, r9, r12
	shl 0x00000002, r12
	add r13, r12
	ld.w 0x00000000[r12], r12
	ld.w 0x00000004[r2], r2
	xor r12, r2
	mov r10, r12
	shr 0x00000006, r12
	andi 0x000003FC, r12, r12
	add r14, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	mov r11, r12
	shr 0x0000000E, r12
	andi 0x000003FC, r12, r12
	add r15, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	mov r5, r12
	and r7, r12
	shr 0x00000016, r12
	add r17, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	st.w r2, 0x00000008[r3]
	ld.w 0x00000020[r3], r12
	addi 0x00000004, r12, r16
	st.w r16, 0x00000020[r3]
	andi 0x000000FF, r10, r16
	shl 0x00000002, r16
	add r13, r16
	ld.w 0x00000000[r16], r16
	ld.w 0x00000004[r12], r12
	xor r16, r12
	mov r11, r16
	shr 0x00000006, r16
	andi 0x000003FC, r16, r16
	add r14, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	mov r5, r16
	shr 0x0000000E, r16
	andi 0x000003FC, r16, r16
	add r15, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	mov r9, r16
	and r7, r16
	shr 0x00000016, r16
	add r17, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	st.w r12, 0x00000004[r3]
	ld.w 0x00000020[r3], r16
	addi 0x00000004, r16, r18
	st.w r18, 0x00000020[r3]
	zxb r11
	shl 0x00000002, r11
	add r11, r13
	ld.w 0x00000000[r13], r13
	ld.w 0x00000004[r16], r11
	xor r13, r11
	shr 0x00000006, r5
	andi 0x000003FC, r5, r5
	add r5, r14
	ld.w 0x00000000[r14], r5
	xor r5, r11
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r5
	add r5, r15
	ld.w 0x00000000[r15], r5
	xor r5, r11
	and r7, r10
	shr 0x00000016, r10
	add r10, r17
	ld.w 0x00000000[r17], r5
	xor r5, r11
	st.w r11, 0x00000000[r3]
	ld.w 0x00000020[r3], r10
	addi 0x00000004, r10, r5
	st.w r5, 0x00000020[r3]
	add 0xFFFFFFFF, r6
	cmp 0x00000000, r6
	ld.w 0x00000004[r10], r5
	ld.w 0x0000000C[r3], r7
	mov r7, r9
	zxb r9
	bgt17 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb361
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 477
	mov #_FSb.1, r6
	add r6, r9
	ld.bu 0x00000000[r9], r9
	xor r9, r5
	andi 0x0000FFFF, r2, r9
	shr 0x00000008, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000008, r9
	xor r9, r5
	mov r12, r9
	shr 0x00000010, r9
	zxb r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000010, r9
	xor r9, r5
	mov r11, r9
	shr 0x00000018, r9
	add r6, r9
	ld.b 0x00000000[r9], r9
	shl 0x00000018, r9
	xor r9, r5
	st.w r5, 0x0000001C[r3]
	addi 0x00000008, r10, r5
	st.w r5, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 480
	andi 0x000000FF, r2, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	ld.w 0x00000008[r10], r9
	xor r5, r9
	andi 0x0000FFFF, r12, r5
	shr 0x00000008, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000008, r5
	xor r5, r9
	mov r11, r5
	shr 0x00000010, r5
	zxb r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000010, r5
	xor r5, r9
	mov r7, r5
	shr 0x00000018, r5
	add r6, r5
	ld.b 0x00000000[r5], r5
	shl 0x00000018, r5
	xor r5, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r5
	addi 0x00000004, r5, r9
	st.w r9, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 483
	andi 0x000000FF, r12, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	ld.w 0x00000004[r5], r5
	xor r9, r5
	andi 0x0000FFFF, r11, r9
	shr 0x00000008, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000008, r9
	xor r9, r5
	mov r7, r9
	shr 0x00000010, r9
	zxb r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000010, r9
	xor r9, r5
	mov r2, r9
	shr 0x00000018, r9
	add r6, r9
	ld.b 0x00000000[r9], r9
	shl 0x00000018, r9
	xor r9, r5
	st.w r5, 0x00000014[r3]
	ld.w 0x00000020[r3], r5
	addi 0x00000004, r5, r9
	st.w r9, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 486
	zxb r11
	add r6, r11
	ld.bu 0x00000000[r11], r9
	ld.w 0x00000004[r5], r5
	xor r9, r5
	zxh r7
	shr 0x00000008, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	shl 0x00000008, r7
	xor r7, r5
	shr 0x00000010, r2
	zxb r2
	add r6, r2
	ld.bu 0x00000000[r2], r2
	shl 0x00000010, r2
	xor r2, r5
	shr 0x00000018, r12
	add r12, r6
	ld.b 0x00000000[r6], r2
	shl 0x00000018, r2
	xor r2, r5
	st.w r5, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 489
	ld.w 0x0000001C[r3], r2
	st.b r2, 0x00000000[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000002[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000003[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 490
	ld.w 0x00000018[r3], r2
	st.b r2, 0x00000004[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000005[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000006[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000007[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 491
	ld.w 0x00000014[r3], r2
	st.b r2, 0x00000008[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000009[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000A[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000B[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 492
	ld.w 0x00000010[r3], r2
	st.b r2, 0x0000000C[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000D[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000E[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000F[r8]
	mov 0x00000004, r20
	movea 0x0000001C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 494
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000018, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 495
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000014, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 496
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 497
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 499
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 500
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 501
	mov r20, r7
	jarl _Crypto_memset, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 502
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 504
	mov r20, r7
	jarl _Crypto_memset, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 507
	dispose 0x00000024, 0x00000041, [r31]
_internal_aes_decrypt:
	.stack _internal_aes_decrypt = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 512
	prepare 0x00000041, 0x00000024
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 518
	ld.w 0x00000004[r6], r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 520
	ld.bu 0x00000001[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000000[r7], r5
	or r2, r5
	ld.bu 0x00000002[r7], r2
	shl 0x00000010, r2
	or r2, r5
	ld.b 0x00000003[r7], r2
	shl 0x00000018, r2
	or r2, r5
	st.w r5, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 521
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r5
	st.w r5, 0x0000001C[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 522
	ld.bu 0x00000005[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000004[r7], r9
	or r2, r9
	ld.bu 0x00000006[r7], r2
	shl 0x00000010, r2
	or r2, r9
	ld.b 0x00000007[r7], r2
	shl 0x00000018, r2
	or r2, r9
	st.w r9, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 523
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 524
	ld.bu 0x00000009[r7], r2
	shl 0x00000008, r2
	ld.bu 0x00000008[r7], r10
	or r2, r10
	ld.bu 0x0000000A[r7], r2
	shl 0x00000010, r2
	or r2, r10
	ld.b 0x0000000B[r7], r2
	shl 0x00000018, r2
	or r2, r10
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 525
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r10
	st.w r10, 0x00000014[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 526
	ld.bu 0x0000000D[r7], r2
	shl 0x00000008, r2
	ld.bu 0x0000000C[r7], r11
	or r2, r11
	ld.bu 0x0000000E[r7], r2
	shl 0x00000010, r2
	or r2, r11
	ld.b 0x0000000F[r7], r2
	shl 0x00000018, r2
	or r2, r11
	st.w r11, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 527
	ld.w 0x00000020[r3], r2
	ld.w 0x00000000[r2], r2
	xor r2, r11
	st.w r11, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 529
	ld.w 0x00000000[r6], r6
	sar 0x00000001, r6
	jr .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 532
	shl 0x00000002, r9
	mov #_RT0.7, r13
	add r13, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	mov r11, r9
	shr 0x00000006, r9
	andi 0x000003FC, r9, r9
	mov #_RT1.8, r14
	add r14, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	mov r12, r9
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r9
	mov #_RT2.9, r15
	add r15, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	movhi 0x0000FF00, r0, r16
	mov r2, r9
	and r16, r9
	shr 0x00000016, r9
	mov #_RT3.10, r17
	add r17, r9
	ld.w 0x00000000[r9], r9
	xor r9, r5
	st.w r5, 0x0000001C[r3]
	addi 0x00000008, r10, r9
	st.w r9, 0x00000020[r3]
	andi 0x000000FF, r2, r9
	shl 0x00000002, r9
	add r13, r9
	ld.w 0x00000000[r9], r18
	ld.w 0x00000008[r10], r9
	xor r18, r9
	mov r7, r10
	shr 0x00000006, r10
	andi 0x000003FC, r10, r10
	add r14, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	mov r11, r10
	shr 0x0000000E, r10
	andi 0x000003FC, r10, r10
	add r15, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	mov r12, r10
	and r16, r10
	shr 0x00000016, r10
	add r17, r10
	ld.w 0x00000000[r10], r10
	xor r10, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r10
	addi 0x00000004, r10, r18
	st.w r18, 0x00000020[r3]
	andi 0x000000FF, r12, r18
	shl 0x00000002, r18
	add r13, r18
	ld.w 0x00000000[r18], r18
	ld.w 0x00000004[r10], r10
	xor r18, r10
	mov r2, r18
	shr 0x00000006, r18
	andi 0x000003FC, r18, r18
	add r14, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	mov r7, r18
	shr 0x0000000E, r18
	andi 0x000003FC, r18, r18
	add r15, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	mov r11, r18
	and r16, r18
	shr 0x00000016, r18
	add r17, r18
	ld.w 0x00000000[r18], r18
	xor r18, r10
	st.w r10, 0x00000014[r3]
	ld.w 0x00000020[r3], r18
	addi 0x00000004, r18, r19
	st.w r19, 0x00000020[r3]
	zxb r11
	shl 0x00000002, r11
	add r11, r13
	ld.w 0x00000000[r13], r13
	ld.w 0x00000004[r18], r11
	xor r13, r11
	shr 0x00000006, r12
	andi 0x000003FC, r12, r12
	add r12, r14
	ld.w 0x00000000[r14], r12
	xor r12, r11
	shr 0x0000000E, r2
	andi 0x000003FC, r2, r2
	add r2, r15
	ld.w 0x00000000[r15], r2
	xor r2, r11
	and r16, r7
	shr 0x00000016, r7
	add r7, r17
	ld.w 0x00000000[r17], r2
	xor r2, r11
	st.w r11, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
.BB.LABEL.4_2:	; bb356
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 529
	andi 0x000000FF, r5, r7
	shl 0x00000002, r7
	mov #_RT0.7, r13
	add r13, r7
	ld.w 0x00000000[r7], r7
	ld.w 0x00000000[r2], r12
	xor r7, r12
	mov r11, r7
	shr 0x00000006, r7
	andi 0x000003FC, r7, r7
	mov #_RT1.8, r14
	add r14, r7
	ld.w 0x00000000[r7], r7
	xor r7, r12
	mov r10, r7
	shr 0x0000000E, r7
	andi 0x000003FC, r7, r7
	mov #_RT2.9, r15
	add r15, r7
	ld.w 0x00000000[r7], r7
	xor r7, r12
	movhi 0x0000FF00, r0, r7
	mov r9, r16
	and r7, r16
	shr 0x00000016, r16
	mov #_RT3.10, r17
	add r17, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	st.w r12, 0x0000000C[r3]
	addi 0x00000004, r2, r12
	st.w r12, 0x00000020[r3]
	andi 0x000000FF, r9, r12
	shl 0x00000002, r12
	add r13, r12
	ld.w 0x00000000[r12], r12
	ld.w 0x00000004[r2], r2
	xor r12, r2
	mov r5, r12
	shr 0x00000006, r12
	andi 0x000003FC, r12, r12
	add r14, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	mov r11, r12
	shr 0x0000000E, r12
	andi 0x000003FC, r12, r12
	add r15, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	mov r10, r12
	and r7, r12
	shr 0x00000016, r12
	add r17, r12
	ld.w 0x00000000[r12], r12
	xor r12, r2
	st.w r2, 0x00000008[r3]
	ld.w 0x00000020[r3], r12
	addi 0x00000004, r12, r16
	st.w r16, 0x00000020[r3]
	andi 0x000000FF, r10, r16
	shl 0x00000002, r16
	add r13, r16
	ld.w 0x00000000[r16], r16
	ld.w 0x00000004[r12], r12
	xor r16, r12
	mov r9, r16
	shr 0x00000006, r16
	andi 0x000003FC, r16, r16
	add r14, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	mov r5, r16
	shr 0x0000000E, r16
	andi 0x000003FC, r16, r16
	add r15, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	mov r11, r16
	and r7, r16
	shr 0x00000016, r16
	add r17, r16
	ld.w 0x00000000[r16], r16
	xor r16, r12
	st.w r12, 0x00000004[r3]
	ld.w 0x00000020[r3], r16
	addi 0x00000004, r16, r18
	st.w r18, 0x00000020[r3]
	zxb r11
	shl 0x00000002, r11
	add r11, r13
	ld.w 0x00000000[r13], r13
	ld.w 0x00000004[r16], r11
	xor r13, r11
	shr 0x00000006, r10
	andi 0x000003FC, r10, r10
	add r10, r14
	ld.w 0x00000000[r14], r10
	xor r10, r11
	shr 0x0000000E, r9
	andi 0x000003FC, r9, r9
	add r9, r15
	ld.w 0x00000000[r15], r9
	xor r9, r11
	and r7, r5
	shr 0x00000016, r5
	add r5, r17
	ld.w 0x00000000[r17], r5
	xor r5, r11
	st.w r11, 0x00000000[r3]
	ld.w 0x00000020[r3], r10
	addi 0x00000004, r10, r5
	st.w r5, 0x00000020[r3]
	add 0xFFFFFFFF, r6
	cmp 0x00000000, r6
	ld.w 0x00000004[r10], r5
	ld.w 0x0000000C[r3], r7
	mov r7, r9
	zxb r9
	bgt17 .BB.LABEL.4_1
.BB.LABEL.4_3:	; bb361
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 537
	mov #_RSb.6, r6
	add r6, r9
	ld.bu 0x00000000[r9], r9
	xor r9, r5
	andi 0x0000FFFF, r11, r9
	shr 0x00000008, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000008, r9
	xor r9, r5
	mov r12, r9
	shr 0x00000010, r9
	zxb r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000010, r9
	xor r9, r5
	mov r2, r9
	shr 0x00000018, r9
	add r6, r9
	ld.b 0x00000000[r9], r9
	shl 0x00000018, r9
	xor r9, r5
	st.w r5, 0x0000001C[r3]
	addi 0x00000008, r10, r5
	st.w r5, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 540
	andi 0x000000FF, r2, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	ld.w 0x00000008[r10], r9
	xor r5, r9
	andi 0x0000FFFF, r7, r5
	shr 0x00000008, r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000008, r5
	xor r5, r9
	mov r11, r5
	shr 0x00000010, r5
	zxb r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	shl 0x00000010, r5
	xor r5, r9
	mov r12, r5
	shr 0x00000018, r5
	add r6, r5
	ld.b 0x00000000[r5], r5
	shl 0x00000018, r5
	xor r5, r9
	st.w r9, 0x00000018[r3]
	ld.w 0x00000020[r3], r5
	addi 0x00000004, r5, r9
	st.w r9, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 543
	andi 0x000000FF, r12, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	ld.w 0x00000004[r5], r5
	xor r9, r5
	andi 0x0000FFFF, r2, r9
	shr 0x00000008, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000008, r9
	xor r9, r5
	mov r7, r9
	shr 0x00000010, r9
	zxb r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	shl 0x00000010, r9
	xor r9, r5
	mov r11, r9
	shr 0x00000018, r9
	add r6, r9
	ld.b 0x00000000[r9], r9
	shl 0x00000018, r9
	xor r9, r5
	st.w r5, 0x00000014[r3]
	ld.w 0x00000020[r3], r5
	addi 0x00000004, r5, r9
	st.w r9, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 546
	zxb r11
	add r6, r11
	ld.bu 0x00000000[r11], r9
	ld.w 0x00000004[r5], r5
	xor r9, r5
	zxh r12
	shr 0x00000008, r12
	add r6, r12
	ld.bu 0x00000000[r12], r9
	shl 0x00000008, r9
	xor r9, r5
	shr 0x00000010, r2
	zxb r2
	add r6, r2
	ld.bu 0x00000000[r2], r2
	shl 0x00000010, r2
	xor r2, r5
	shr 0x00000018, r7
	add r7, r6
	ld.b 0x00000000[r6], r2
	shl 0x00000018, r2
	xor r2, r5
	st.w r5, 0x00000010[r3]
	ld.w 0x00000020[r3], r2
	add 0x00000004, r2
	st.w r2, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 549
	ld.w 0x0000001C[r3], r2
	st.b r2, 0x00000000[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000002[r8]
	ld.w 0x0000001C[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000003[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 550
	ld.w 0x00000018[r3], r2
	st.b r2, 0x00000004[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000005[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x00000006[r8]
	ld.w 0x00000018[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x00000007[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 551
	ld.w 0x00000014[r3], r2
	st.b r2, 0x00000008[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000009[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000A[r8]
	ld.w 0x00000014[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000B[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 552
	ld.w 0x00000010[r3], r2
	st.b r2, 0x0000000C[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000D[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000E[r8]
	ld.w 0x00000010[r3], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000F[r8]
	mov 0x00000004, r20
	movea 0x0000001C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 554
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000018, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 555
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000014, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 556
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 557
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 559
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 560
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 561
	mov r20, r7
	jarl _Crypto_memset, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 562
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000020, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 564
	mov r20, r7
	jarl _Crypto_memset, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 567
	dispose 0x00000024, 0x00000041, [r31]
_Crypto_aes_crypt_ecb:
	.stack _Crypto_aes_crypt_ecb = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 573
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 575
	cmp 0x00000001, r7
	mov r8, r7
	mov r9, r8
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 576
	jarl _internal_aes_encrypt, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 578
	jarl _internal_aes_decrypt, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_aes_crypt_cbc:
	.stack _Crypto_aes_crypt_cbc = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 585
	prepare 0x00000679, 0x00000010
	mov 0x00000001, r24
	mov r8, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 597
	cmp 0x00000000, r7
	ld.w 0x00000030[r3], r20
	ld.w 0x0000002C[r3], r21
	mov r9, r22
	mov r6, r23
	bz9 .BB.LABEL.6_4
	br9 .BB.LABEL.6_9
.BB.LABEL.6_1:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 605
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	add r2, r6
	ld.b 0x00000000[r6], r6
	xor r6, r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.6_2:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	mov r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 604
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	movea 0x00000010, r0, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 607
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 611
	addi 0xFFFFFFF0, r25, r2
	zxb r25
	cmp 0x0000000F, r25
	cmov 0x00000007, 0x00000000, r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 610
	movea 0x00000010, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 609
	movea 0x00000010, r21, r21
.BB.LABEL.6_4:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 599
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.6_11
.BB.LABEL.6_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	movea 0x00000010, r0, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 601
	mov r21, r7
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 602
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _internal_aes_decrypt, r31
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 604
	mov r10, r24
	br9 .BB.LABEL.6_2
.BB.LABEL.6_6:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 619
	mov r21, r2
	add r24, r2
	ld.b 0x00000000[r2], r2
	mov r22, r5
	add r24, r5
	ld.b 0x00000000[r5], r5
	xor r5, r2
	mov r20, r5
	add r24, r5
	st.b r2, 0x00000000[r5]
	add 0x00000001, r24
.BB.LABEL.6_7:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 618
	cmp 0x0000000F, r24
	ble9 .BB.LABEL.6_6
.BB.LABEL.6_8:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 621
	mov r23, r6
	mov r20, r7
	mov r20, r8
	jarl _internal_aes_encrypt, r31
	mov r10, r24
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 623
	mov r22, r6
	mov r20, r7
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 627
	addi 0xFFFFFFF0, r25, r2
	zxb r25
	cmp 0x0000000F, r25
	cmov 0x00000007, 0x00000000, r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 626
	movea 0x00000010, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 625
	movea 0x00000010, r21, r21
.BB.LABEL.6_9:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 616
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; bb118.bb88_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.6_7
.BB.LABEL.6_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 631
	andi 0x000000FF, r24, r10
	dispose 0x00000010, 0x00000679, [r31]
_Crypto_aes_crypt_cbc_CMAC:
	.stack _Crypto_aes_crypt_cbc_CMAC = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 634
	prepare 0x00000079, 0x00000010
	mov 0x00000001, r10
	mov r8, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 646
	cmp 0x00000000, r7
	ld.w 0x00000028[r3], r20
	ld.w 0x00000024[r3], r21
	mov r6, r22
	bz9 .BB.LABEL.7_4
	br9 .BB.LABEL.7_9
.BB.LABEL.7_1:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 654
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.7_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 653
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 660
	addi 0xFFFFFFF0, r23, r2
	zxb r23
	cmp 0x0000000F, r23
	cmov 0x00000007, 0x00000000, r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 659
	movea 0x00000010, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 658
	movea 0x00000010, r21, r21
.BB.LABEL.7_4:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 648
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.7_11
.BB.LABEL.7_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	movea 0x00000010, r0, r8
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 650
	mov r21, r7
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 651
	mov r22, r6
	mov r21, r7
	mov r20, r8
	jarl _internal_aes_decrypt, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.7_2
.BB.LABEL.7_6:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 668
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.7_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 667
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.7_6
.BB.LABEL.7_8:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 670
	mov r22, r6
	mov r20, r7
	mov r20, r8
	jarl _internal_aes_encrypt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 676
	addi 0xFFFFFFF0, r23, r2
	zxb r23
	cmp 0x0000000F, r23
	cmov 0x00000007, 0x00000000, r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 675
	movea 0x00000010, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 674
	movea 0x00000010, r21, r21
.BB.LABEL.7_9:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 665
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; bb98.bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.7_7
.BB.LABEL.7_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 680
	zxb r10
	dispose 0x00000010, 0x00000079, [r31]
_Crypto_AESEncryptECB:
	.stack _Crypto_AESEncryptECB = 296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 686
	prepare 0x00000071, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r3, r22
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 690
	mov r22, r6
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 691
	mov r22, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 693
	mov r22, r6
	mov r21, r7
	mov r21, r8
	jarl _internal_aes_encrypt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 695
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000071, [r31]
_Crypto_AESDecryptECB:
	.stack _Crypto_AESDecryptECB = 296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 697
	prepare 0x00000071, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r3, r22
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 701
	mov r22, r6
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 703
	mov r22, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_dec, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 705
	mov r22, r6
	mov r21, r7
	mov r21, r8
	jarl _internal_aes_decrypt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 707
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000071, [r31]
_Crypto_AESEncryptCBC:
	.stack _Crypto_AESEncryptCBC = 348
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 710
	prepare 0x00000679, 0x0000007C
	movea 0xFFFFFF3C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000028, r3, r24
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 716
	mov r24, r6
	jarl _Crypto_memset, r31
	movea 0x00000010, r0, r25
	movea 0x00000018, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 717
	mov r25, r7
	jarl _Crypto_memset, r31
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 718
	mov r25, r7
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 720
	mov r24, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 722
	st.w r21, 0x00000004[r3]
	st.w r21, 0x00000000[r3]
	mov 0x00000001, r7
	mov r24, r6
	mov r23, r8
	mov r22, r9
	jarl _Crypto_aes_crypt_cbc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 724
	movea 0x000000C4, r3, r3
	dispose 0x0000007C, 0x00000679, [r31]
_Crypto_AESDecryptCBC:
	.stack _Crypto_AESDecryptCBC = 328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 727
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFF4C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000018, r3, r24
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 732
	mov r24, r6
	jarl _Crypto_memset, r31
	movea 0x00000010, r0, r7
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 733
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 735
	mov r24, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_dec, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 736
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 738
	st.w r21, 0x00000004[r3]
	st.w r21, 0x00000000[r3]
	mov 0x00000000, r7
	movea 0x00000018, r3, r6
	mov r23, r8
	mov r22, r9
	jarl _Crypto_aes_crypt_cbc, r31
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 0
	movea 0x000000B4, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 742
	dispose 0x0000007C, 0x00000479, [r31]
_Crypto_AESEncryptCTR:
	.stack _Crypto_AESEncryptCTR = 300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 745
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 751
	mov r23, r6
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 753
	mov r23, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_dec, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 755
	mov r23, r6
	mov r22, r7
	mov r22, r8
	jarl _internal_aes_encrypt, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 759
	andi 0x000000FF, r2, r5
	mov r21, r6
	add r5, r6
	ld.b 0x00000000[r6], r7
	add r22, r5
	ld.b 0x00000000[r5], r5
	xor r5, r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.12_2:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 757
	andi 0x000000FF, r2, r5
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 763
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_Crypto_AESDecryptCTR:
	.stack _Crypto_AESDecryptCTR = 300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 766
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFF64, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	movea 0x00000118, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 772
	mov r23, r6
	jarl _Crypto_memset, r31
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 774
	mov r23, r6
	mov r20, r7
	jarl _Crypto_aes_setkey_dec, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 776
	mov r23, r6
	mov r22, r7
	mov r22, r8
	jarl _internal_aes_encrypt, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 780
	andi 0x000000FF, r2, r5
	mov r21, r6
	add r5, r6
	ld.b 0x00000000[r6], r7
	add r22, r5
	ld.b 0x00000000[r5], r5
	xor r5, r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.13_2:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 778
	andi 0x000000FF, r2, r5
	cmp 0x0000000F, r5
	ble9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/AES/aes.c", 784
	movea 0x0000009C, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
	.section .const, const
_FSb.1:
	.db 0x63,0x7C,0x77,0x7B,0xF2,0x6B,0x6F,0xC5,0x30,0x01,0x67,0x2B,0xFE,0xD7,0xAB,0x76
	.db 0xCA,0x82,0xC9,0x7D,0xFA,0x59,0x47,0xF0,0xAD,0xD4,0xA2,0xAF,0x9C,0xA4,0x72,0xC0
	.db 0xB7,0xFD,0x93,0x26,0x36,0x3F,0xF7,0xCC,0x34,0xA5,0xE5,0xF1,0x71,0xD8,0x31,0x15
	.db 0x04,0xC7,0x23,0xC3,0x18,0x96,0x05,0x9A,0x07,0x12,0x80,0xE2,0xEB,0x27,0xB2,0x75
	.db 0x09,0x83,0x2C,0x1A,0x1B,0x6E,0x5A,0xA0,0x52,0x3B,0xD6,0xB3,0x29,0xE3,0x2F,0x84
	.db 0x53,0xD1
	.ds (1)
	.db 0xED,0x20,0xFC,0xB1,0x5B,0x6A,0xCB,0xBE,0x39,0x4A,0x4C,0x58,0xCF,0xD0,0xEF,0xAA
	.db 0xFB,0x43,0x4D,0x33,0x85,0x45,0xF9,0x02,0x7F,0x50,0x3C,0x9F,0xA8,0x51,0xA3,0x40
	.db 0x8F,0x92,0x9D,0x38,0xF5,0xBC,0xB6,0xDA,0x21,0x10,0xFF,0xF3,0xD2,0xCD,0x0C,0x13
	.db 0xEC,0x5F,0x97,0x44,0x17,0xC4,0xA7,0x7E,0x3D,0x64,0x5D,0x19,0x73,0x60,0x81,0x4F
	.db 0xDC,0x22,0x2A,0x90,0x88,0x46,0xEE,0xB8,0x14,0xDE,0x5E,0x0B,0xDB,0xE0,0x32,0x3A
	.db 0x0A,0x49,0x06,0x24,0x5C,0xC2,0xD3,0xAC,0x62,0x91,0x95,0xE4,0x79,0xE7,0xC8,0x37
	.db 0x6D,0x8D,0xD5,0x4E,0xA9,0x6C,0x56,0xF4,0xEA,0x65,0x7A,0xAE,0x08,0xBA,0x78,0x25
	.db 0x2E,0x1C,0xA6,0xB4,0xC6,0xE8,0xDD,0x74,0x1F,0x4B,0xBD,0x8B,0x8A,0x70,0x3E,0xB5
	.db 0x66,0x48,0x03,0xF6,0x0E,0x61,0x35,0x57,0xB9,0x86,0xC1,0x1D,0x9E,0xE1,0xF8,0x98
	.db 0x11,0x69,0xD9,0x8E,0x94,0x9B,0x1E,0x87,0xE9,0xCE,0x55,0x28,0xDF,0x8C,0xA1,0x89
	.db 0x0D,0xBF,0xE6,0x42,0x68,0x41,0x99,0x2D,0x0F,0xB0,0x54,0xBB,0x16
	.align 4
_FT0.2:
	.dw 0xA56363C6,0x847C7CF8,0x997777EE,0x8D7B7BF6,0x0DF2F2FF,0xBD6B6BD6,0xB16F6FDE,0x54C5C591
	.dw 0x50303060,0x03010102,0xA96767CE,0x7D2B2B56,0x19FEFEE7,0x62D7D7B5,0xE6ABAB4D,0x9A7676EC
	.dw 0x45CACA8F,0x9D82821F,0x40C9C989,0x877D7DFA,0x15FAFAEF,0xEB5959B2,0xC947478E,0x0BF0F0FB
	.dw 0xECADAD41,0x67D4D4B3,0xFDA2A25F,0xEAAFAF45,0xBF9C9C23,0xF7A4A453,0x967272E4,0x5BC0C09B
	.dw 0xC2B7B775,0x1CFDFDE1,0xAE93933D,0x6A26264C,0x5A36366C,0x413F3F7E,0x02F7F7F5,0x4FCCCC83
	.dw 0x5C343468,0xF4A5A551,0x34E5E5D1,0x08F1F1F9,0x937171E2,0x73D8D8AB,0x53313162,0x3F15152A
	.dw 0x0C040408,0x52C7C795,0x65232346,0x5EC3C39D,0x28181830,0xA1969637,0x0F05050A,0xB59A9A2F
	.dw 0x0907070E,0x36121224,0x9B80801B,0x3DE2E2DF,0x26EBEBCD,0x6927274E,0xCDB2B27F,0x9F7575EA
	.dw 0x1B090912,0x9E83831D,0x742C2C58,0x2E1A1A34,0x2D1B1B36,0xB26E6EDC,0xEE5A5AB4,0xFBA0A05B
	.dw 0xF65252A4,0x4D3B3B76,0x61D6D6B7,0xCEB3B37D,0x7B292952,0x3EE3E3DD,0x712F2F5E,0x97848413
	.dw 0xF55353A6,0x68D1D1B9
	.ds (4)
	.dw 0x2CEDEDC1,0x60202040,0x1FFCFCE3,0xC8B1B179,0xED5B5BB6,0xBE6A6AD4,0x46CBCB8D,0xD9BEBE67
	.dw 0x4B393972,0xDE4A4A94,0xD44C4C98,0xE85858B0,0x4ACFCF85,0x6BD0D0BB,0x2AEFEFC5,0xE5AAAA4F
	.dw 0x16FBFBED,0xC5434386,0xD74D4D9A,0x55333366,0x94858511,0xCF45458A,0x10F9F9E9,0x06020204
	.dw 0x817F7FFE,0xF05050A0,0x443C3C78,0xBA9F9F25,0xE3A8A84B,0xF35151A2,0xFEA3A35D,0xC0404080
	.dw 0x8A8F8F05,0xAD92923F,0xBC9D9D21,0x48383870,0x04F5F5F1,0xDFBCBC63,0xC1B6B677,0x75DADAAF
	.dw 0x63212142,0x30101020,0x1AFFFFE5,0x0EF3F3FD,0x6DD2D2BF,0x4CCDCD81,0x140C0C18,0x35131326
	.dw 0x2FECECC3,0xE15F5FBE,0xA2979735,0xCC444488,0x3917172E,0x57C4C493,0xF2A7A755,0x827E7EFC
	.dw 0x473D3D7A,0xAC6464C8,0xE75D5DBA,0x2B191932,0x957373E6,0xA06060C0,0x98818119,0xD14F4F9E
	.dw 0x7FDCDCA3,0x66222244,0x7E2A2A54,0xAB90903B,0x8388880B,0xCA46468C,0x29EEEEC7,0xD3B8B86B
	.dw 0x3C141428,0x79DEDEA7,0xE25E5EBC,0x1D0B0B16,0x76DBDBAD,0x3BE0E0DB,0x56323264,0x4E3A3A74
	.dw 0x1E0A0A14,0xDB494992,0x0A06060C,0x6C242448,0xE45C5CB8,0x5DC2C29F,0x6ED3D3BD,0xEFACAC43
	.dw 0xA66262C4,0xA8919139,0xA4959531,0x37E4E4D3,0x8B7979F2,0x32E7E7D5,0x43C8C88B,0x5937376E
	.dw 0xB76D6DDA,0x8C8D8D01,0x64D5D5B1,0xD24E4E9C,0xE0A9A949,0xB46C6CD8,0xFA5656AC,0x07F4F4F3
	.dw 0x25EAEACF,0xAF6565CA,0x8E7A7AF4,0xE9AEAE47,0x18080810,0xD5BABA6F,0x887878F0,0x6F25254A
	.dw 0x722E2E5C,0x241C1C38,0xF1A6A657,0xC7B4B473,0x51C6C697,0x23E8E8CB,0x7CDDDDA1,0x9C7474E8
	.dw 0x211F1F3E,0xDD4B4B96,0xDCBDBD61,0x868B8B0D,0x858A8A0F,0x907070E0,0x423E3E7C,0xC4B5B571
	.dw 0xAA6666CC,0xD8484890,0x05030306,0x01F6F6F7,0x120E0E1C,0xA36161C2,0x5F35356A,0xF95757AE
	.dw 0xD0B9B969,0x91868617,0x58C1C199,0x271D1D3A,0xB99E9E27,0x38E1E1D9,0x13F8F8EB,0xB398982B
	.dw 0x33111122,0xBB6969D2,0x70D9D9A9,0x898E8E07,0xA7949433,0xB69B9B2D,0x221E1E3C,0x92878715
	.dw 0x20E9E9C9,0x49CECE87,0xFF5555AA,0x78282850,0x7ADFDFA5,0x8F8C8C03,0xF8A1A159,0x80898909
	.dw 0x170D0D1A,0xDABFBF65,0x31E6E6D7,0xC6424284,0xB86868D0,0xC3414182,0xB0999929,0x772D2D5A
	.dw 0x110F0F1E,0xCBB0B07B,0xFC5454A8,0xD6BBBB6D,0x3A16162C
	.align 4
_FT1.3:
	.dw 0x6363C6A5,0x7C7CF884,0x7777EE99,0x7B7BF68D,0xF2F2FF0D,0x6B6BD6BD,0x6F6FDEB1,0xC5C59154
	.dw 0x30306050,0x01010203,0x6767CEA9,0x2B2B567D,0xFEFEE719,0xD7D7B562,0xABAB4DE6,0x7676EC9A
	.dw 0xCACA8F45,0x82821F9D,0xC9C98940,0x7D7DFA87,0xFAFAEF15,0x5959B2EB,0x47478EC9,0xF0F0FB0B
	.dw 0xADAD41EC,0xD4D4B367,0xA2A25FFD,0xAFAF45EA,0x9C9C23BF,0xA4A453F7,0x7272E496,0xC0C09B5B
	.dw 0xB7B775C2,0xFDFDE11C,0x93933DAE,0x26264C6A,0x36366C5A,0x3F3F7E41,0xF7F7F502,0xCCCC834F
	.dw 0x3434685C,0xA5A551F4,0xE5E5D134,0xF1F1F908,0x7171E293,0xD8D8AB73,0x31316253,0x15152A3F
	.dw 0x0404080C,0xC7C79552,0x23234665,0xC3C39D5E,0x18183028,0x969637A1,0x05050A0F,0x9A9A2FB5
	.dw 0x07070E09,0x12122436,0x80801B9B,0xE2E2DF3D,0xEBEBCD26,0x27274E69,0xB2B27FCD,0x7575EA9F
	.dw 0x0909121B,0x83831D9E,0x2C2C5874,0x1A1A342E,0x1B1B362D,0x6E6EDCB2,0x5A5AB4EE,0xA0A05BFB
	.dw 0x5252A4F6,0x3B3B764D,0xD6D6B761,0xB3B37DCE,0x2929527B,0xE3E3DD3E,0x2F2F5E71,0x84841397
	.dw 0x5353A6F5,0xD1D1B968
	.ds (4)
	.dw 0xEDEDC12C,0x20204060,0xFCFCE31F,0xB1B179C8,0x5B5BB6ED,0x6A6AD4BE,0xCBCB8D46,0xBEBE67D9
	.dw 0x3939724B,0x4A4A94DE,0x4C4C98D4,0x5858B0E8,0xCFCF854A,0xD0D0BB6B,0xEFEFC52A,0xAAAA4FE5
	.dw 0xFBFBED16,0x434386C5,0x4D4D9AD7,0x33336655,0x85851194,0x45458ACF,0xF9F9E910,0x02020406
	.dw 0x7F7FFE81,0x5050A0F0,0x3C3C7844,0x9F9F25BA,0xA8A84BE3,0x5151A2F3,0xA3A35DFE,0x404080C0
	.dw 0x8F8F058A,0x92923FAD,0x9D9D21BC,0x38387048,0xF5F5F104,0xBCBC63DF,0xB6B677C1,0xDADAAF75
	.dw 0x21214263,0x10102030,0xFFFFE51A,0xF3F3FD0E,0xD2D2BF6D,0xCDCD814C,0x0C0C1814,0x13132635
	.dw 0xECECC32F,0x5F5FBEE1,0x979735A2,0x444488CC,0x17172E39,0xC4C49357,0xA7A755F2,0x7E7EFC82
	.dw 0x3D3D7A47,0x6464C8AC,0x5D5DBAE7,0x1919322B,0x7373E695,0x6060C0A0,0x81811998,0x4F4F9ED1
	.dw 0xDCDCA37F,0x22224466,0x2A2A547E,0x90903BAB,0x88880B83,0x46468CCA,0xEEEEC729,0xB8B86BD3
	.dw 0x1414283C,0xDEDEA779,0x5E5EBCE2,0x0B0B161D,0xDBDBAD76,0xE0E0DB3B,0x32326456,0x3A3A744E
	.dw 0x0A0A141E,0x494992DB,0x06060C0A,0x2424486C,0x5C5CB8E4,0xC2C29F5D,0xD3D3BD6E,0xACAC43EF
	.dw 0x6262C4A6,0x919139A8,0x959531A4,0xE4E4D337,0x7979F28B,0xE7E7D532,0xC8C88B43,0x37376E59
	.dw 0x6D6DDAB7,0x8D8D018C,0xD5D5B164,0x4E4E9CD2,0xA9A949E0,0x6C6CD8B4,0x5656ACFA,0xF4F4F307
	.dw 0xEAEACF25,0x6565CAAF,0x7A7AF48E,0xAEAE47E9,0x08081018,0xBABA6FD5,0x7878F088,0x25254A6F
	.dw 0x2E2E5C72,0x1C1C3824,0xA6A657F1,0xB4B473C7,0xC6C69751,0xE8E8CB23,0xDDDDA17C,0x7474E89C
	.dw 0x1F1F3E21,0x4B4B96DD,0xBDBD61DC,0x8B8B0D86,0x8A8A0F85,0x7070E090,0x3E3E7C42,0xB5B571C4
	.dw 0x6666CCAA,0x484890D8,0x03030605,0xF6F6F701,0x0E0E1C12,0x6161C2A3,0x35356A5F,0x5757AEF9
	.dw 0xB9B969D0,0x86861791,0xC1C19958,0x1D1D3A27,0x9E9E27B9,0xE1E1D938,0xF8F8EB13,0x98982BB3
	.dw 0x11112233,0x6969D2BB,0xD9D9A970,0x8E8E0789,0x949433A7,0x9B9B2DB6,0x1E1E3C22,0x87871592
	.dw 0xE9E9C920,0xCECE8749,0x5555AAFF,0x28285078,0xDFDFA57A,0x8C8C038F,0xA1A159F8,0x89890980
	.dw 0x0D0D1A17,0xBFBF65DA,0xE6E6D731,0x424284C6,0x6868D0B8,0x414182C3,0x999929B0,0x2D2D5A77
	.dw 0x0F0F1E11,0xB0B07BCB,0x5454A8FC,0xBBBB6DD6,0x16162C3A
	.align 4
_FT2.4:
	.dw 0x63C6A563,0x7CF8847C,0x77EE9977,0x7BF68D7B,0xF2FF0DF2,0x6BD6BD6B,0x6FDEB16F,0xC59154C5
	.dw 0x30605030,0x01020301,0x67CEA967,0x2B567D2B,0xFEE719FE,0xD7B562D7,0xAB4DE6AB,0x76EC9A76
	.dw 0xCA8F45CA,0x821F9D82,0xC98940C9,0x7DFA877D,0xFAEF15FA,0x59B2EB59,0x478EC947,0xF0FB0BF0
	.dw 0xAD41ECAD,0xD4B367D4,0xA25FFDA2,0xAF45EAAF,0x9C23BF9C,0xA453F7A4,0x72E49672,0xC09B5BC0
	.dw 0xB775C2B7,0xFDE11CFD,0x933DAE93,0x264C6A26,0x366C5A36,0x3F7E413F,0xF7F502F7,0xCC834FCC
	.dw 0x34685C34,0xA551F4A5,0xE5D134E5,0xF1F908F1,0x71E29371,0xD8AB73D8,0x31625331,0x152A3F15
	.dw 0x04080C04,0xC79552C7,0x23466523,0xC39D5EC3,0x18302818,0x9637A196,0x050A0F05,0x9A2FB59A
	.dw 0x070E0907,0x12243612,0x801B9B80,0xE2DF3DE2,0xEBCD26EB,0x274E6927,0xB27FCDB2,0x75EA9F75
	.dw 0x09121B09,0x831D9E83,0x2C58742C,0x1A342E1A,0x1B362D1B,0x6EDCB26E,0x5AB4EE5A,0xA05BFBA0
	.dw 0x52A4F652,0x3B764D3B,0xD6B761D6,0xB37DCEB3,0x29527B29,0xE3DD3EE3,0x2F5E712F,0x84139784
	.dw 0x53A6F553,0xD1B968D1
	.ds (4)
	.dw 0xEDC12CED,0x20406020,0xFCE31FFC,0xB179C8B1,0x5BB6ED5B,0x6AD4BE6A,0xCB8D46CB,0xBE67D9BE
	.dw 0x39724B39,0x4A94DE4A,0x4C98D44C,0x58B0E858,0xCF854ACF,0xD0BB6BD0,0xEFC52AEF,0xAA4FE5AA
	.dw 0xFBED16FB,0x4386C543,0x4D9AD74D,0x33665533,0x85119485,0x458ACF45,0xF9E910F9,0x02040602
	.dw 0x7FFE817F,0x50A0F050,0x3C78443C,0x9F25BA9F,0xA84BE3A8,0x51A2F351,0xA35DFEA3,0x4080C040
	.dw 0x8F058A8F,0x923FAD92,0x9D21BC9D,0x38704838,0xF5F104F5,0xBC63DFBC,0xB677C1B6,0xDAAF75DA
	.dw 0x21426321,0x10203010,0xFFE51AFF,0xF3FD0EF3,0xD2BF6DD2,0xCD814CCD,0x0C18140C,0x13263513
	.dw 0xECC32FEC,0x5FBEE15F,0x9735A297,0x4488CC44,0x172E3917,0xC49357C4,0xA755F2A7,0x7EFC827E
	.dw 0x3D7A473D,0x64C8AC64,0x5DBAE75D,0x19322B19,0x73E69573,0x60C0A060,0x81199881,0x4F9ED14F
	.dw 0xDCA37FDC,0x22446622,0x2A547E2A,0x903BAB90,0x880B8388,0x468CCA46,0xEEC729EE,0xB86BD3B8
	.dw 0x14283C14,0xDEA779DE,0x5EBCE25E,0x0B161D0B,0xDBAD76DB,0xE0DB3BE0,0x32645632,0x3A744E3A
	.dw 0x0A141E0A,0x4992DB49,0x060C0A06,0x24486C24,0x5CB8E45C,0xC29F5DC2,0xD3BD6ED3,0xAC43EFAC
	.dw 0x62C4A662,0x9139A891,0x9531A495,0xE4D337E4,0x79F28B79,0xE7D532E7,0xC88B43C8,0x376E5937
	.dw 0x6DDAB76D,0x8D018C8D,0xD5B164D5,0x4E9CD24E,0xA949E0A9,0x6CD8B46C,0x56ACFA56,0xF4F307F4
	.dw 0xEACF25EA,0x65CAAF65,0x7AF48E7A,0xAE47E9AE,0x08101808,0xBA6FD5BA,0x78F08878,0x254A6F25
	.dw 0x2E5C722E,0x1C38241C,0xA657F1A6,0xB473C7B4,0xC69751C6,0xE8CB23E8,0xDDA17CDD,0x74E89C74
	.dw 0x1F3E211F,0x4B96DD4B,0xBD61DCBD,0x8B0D868B,0x8A0F858A,0x70E09070,0x3E7C423E,0xB571C4B5
	.dw 0x66CCAA66,0x4890D848,0x03060503,0xF6F701F6,0x0E1C120E,0x61C2A361,0x356A5F35,0x57AEF957
	.dw 0xB969D0B9,0x86179186,0xC19958C1,0x1D3A271D,0x9E27B99E,0xE1D938E1,0xF8EB13F8,0x982BB398
	.dw 0x11223311,0x69D2BB69,0xD9A970D9,0x8E07898E,0x9433A794,0x9B2DB69B,0x1E3C221E,0x87159287
	.dw 0xE9C920E9,0xCE8749CE,0x55AAFF55,0x28507828,0xDFA57ADF,0x8C038F8C,0xA159F8A1,0x89098089
	.dw 0x0D1A170D,0xBF65DABF,0xE6D731E6,0x4284C642,0x68D0B868,0x4182C341,0x9929B099,0x2D5A772D
	.dw 0x0F1E110F,0xB07BCBB0,0x54A8FC54,0xBB6DD6BB,0x162C3A16
	.align 4
_FT3.5:
	.dw 0xC6A56363,0xF8847C7C,0xEE997777,0xF68D7B7B,0xFF0DF2F2,0xD6BD6B6B,0xDEB16F6F,0x9154C5C5
	.dw 0x60503030,0x02030101,0xCEA96767,0x567D2B2B,0xE719FEFE,0xB562D7D7,0x4DE6ABAB,0xEC9A7676
	.dw 0x8F45CACA,0x1F9D8282,0x8940C9C9,0xFA877D7D,0xEF15FAFA,0xB2EB5959,0x8EC94747,0xFB0BF0F0
	.dw 0x41ECADAD,0xB367D4D4,0x5FFDA2A2,0x45EAAFAF,0x23BF9C9C,0x53F7A4A4,0xE4967272,0x9B5BC0C0
	.dw 0x75C2B7B7,0xE11CFDFD,0x3DAE9393,0x4C6A2626,0x6C5A3636,0x7E413F3F,0xF502F7F7,0x834FCCCC
	.dw 0x685C3434,0x51F4A5A5,0xD134E5E5,0xF908F1F1,0xE2937171,0xAB73D8D8,0x62533131,0x2A3F1515
	.dw 0x080C0404,0x9552C7C7,0x46652323,0x9D5EC3C3,0x30281818,0x37A19696,0x0A0F0505,0x2FB59A9A
	.dw 0x0E090707,0x24361212,0x1B9B8080,0xDF3DE2E2,0xCD26EBEB,0x4E692727,0x7FCDB2B2,0xEA9F7575
	.dw 0x121B0909,0x1D9E8383,0x58742C2C,0x342E1A1A,0x362D1B1B,0xDCB26E6E,0xB4EE5A5A,0x5BFBA0A0
	.dw 0xA4F65252,0x764D3B3B,0xB761D6D6,0x7DCEB3B3,0x527B2929,0xDD3EE3E3,0x5E712F2F,0x13978484
	.dw 0xA6F55353,0xB968D1D1
	.ds (4)
	.dw 0xC12CEDED,0x40602020,0xE31FFCFC,0x79C8B1B1,0xB6ED5B5B,0xD4BE6A6A,0x8D46CBCB,0x67D9BEBE
	.dw 0x724B3939,0x94DE4A4A,0x98D44C4C,0xB0E85858,0x854ACFCF,0xBB6BD0D0,0xC52AEFEF,0x4FE5AAAA
	.dw 0xED16FBFB,0x86C54343,0x9AD74D4D,0x66553333,0x11948585,0x8ACF4545,0xE910F9F9,0x04060202
	.dw 0xFE817F7F,0xA0F05050,0x78443C3C,0x25BA9F9F,0x4BE3A8A8,0xA2F35151,0x5DFEA3A3,0x80C04040
	.dw 0x058A8F8F,0x3FAD9292,0x21BC9D9D,0x70483838,0xF104F5F5,0x63DFBCBC,0x77C1B6B6,0xAF75DADA
	.dw 0x42632121,0x20301010,0xE51AFFFF,0xFD0EF3F3,0xBF6DD2D2,0x814CCDCD,0x18140C0C,0x26351313
	.dw 0xC32FECEC,0xBEE15F5F,0x35A29797,0x88CC4444,0x2E391717,0x9357C4C4,0x55F2A7A7,0xFC827E7E
	.dw 0x7A473D3D,0xC8AC6464,0xBAE75D5D,0x322B1919,0xE6957373,0xC0A06060,0x19988181,0x9ED14F4F
	.dw 0xA37FDCDC,0x44662222,0x547E2A2A,0x3BAB9090,0x0B838888,0x8CCA4646,0xC729EEEE,0x6BD3B8B8
	.dw 0x283C1414,0xA779DEDE,0xBCE25E5E,0x161D0B0B,0xAD76DBDB,0xDB3BE0E0,0x64563232,0x744E3A3A
	.dw 0x141E0A0A,0x92DB4949,0x0C0A0606,0x486C2424,0xB8E45C5C,0x9F5DC2C2,0xBD6ED3D3,0x43EFACAC
	.dw 0xC4A66262,0x39A89191,0x31A49595,0xD337E4E4,0xF28B7979,0xD532E7E7,0x8B43C8C8,0x6E593737
	.dw 0xDAB76D6D,0x018C8D8D,0xB164D5D5,0x9CD24E4E,0x49E0A9A9,0xD8B46C6C,0xACFA5656,0xF307F4F4
	.dw 0xCF25EAEA,0xCAAF6565,0xF48E7A7A,0x47E9AEAE,0x10180808,0x6FD5BABA,0xF0887878,0x4A6F2525
	.dw 0x5C722E2E,0x38241C1C,0x57F1A6A6,0x73C7B4B4,0x9751C6C6,0xCB23E8E8,0xA17CDDDD,0xE89C7474
	.dw 0x3E211F1F,0x96DD4B4B,0x61DCBDBD,0x0D868B8B,0x0F858A8A,0xE0907070,0x7C423E3E,0x71C4B5B5
	.dw 0xCCAA6666,0x90D84848,0x06050303,0xF701F6F6,0x1C120E0E,0xC2A36161,0x6A5F3535,0xAEF95757
	.dw 0x69D0B9B9,0x17918686,0x9958C1C1,0x3A271D1D,0x27B99E9E,0xD938E1E1,0xEB13F8F8,0x2BB39898
	.dw 0x22331111,0xD2BB6969,0xA970D9D9,0x07898E8E,0x33A79494,0x2DB69B9B,0x3C221E1E,0x15928787
	.dw 0xC920E9E9,0x8749CECE,0xAAFF5555,0x50782828,0xA57ADFDF,0x038F8C8C,0x59F8A1A1,0x09808989
	.dw 0x1A170D0D,0x65DABFBF,0xD731E6E6,0x84C64242,0xD0B86868,0x82C34141,0x29B09999,0x5A772D2D
	.dw 0x1E110F0F,0x7BCBB0B0,0xA8FC5454,0x6DD6BBBB,0x2C3A1616
_RSb.6:
	.db 0x52,0x09,0x6A,0xD5,0x30,0x36,0xA5,0x38,0xBF,0x40,0xA3,0x9E,0x81,0xF3,0xD7,0xFB
	.db 0x7C,0xE3,0x39,0x82,0x9B,0x2F,0xFF,0x87,0x34,0x8E,0x43,0x44,0xC4,0xDE,0xE9,0xCB
	.db 0x54,0x7B,0x94,0x32,0xA6,0xC2,0x23,0x3D,0xEE,0x4C,0x95,0x0B,0x42,0xFA,0xC3,0x4E
	.db 0x08,0x2E,0xA1,0x66,0x28,0xD9,0x24,0xB2,0x76,0x5B,0xA2,0x49,0x6D,0x8B,0xD1,0x25
	.db 0x72,0xF8,0xF6,0x64,0x86,0x68,0x98,0x16,0xD4,0xA4,0x5C,0xCC,0x5D,0x65,0xB6,0x92
	.db 0x6C,0x70,0x48,0x50,0xFD,0xED,0xB9,0xDA,0x5E,0x15,0x46,0x57,0xA7,0x8D,0x9D,0x84
	.db 0x90,0xD8,0xAB
	.ds (1)
	.db 0x8C,0xBC,0xD3,0x0A,0xF7,0xE4,0x58,0x05,0xB8,0xB3,0x45,0x06,0xD0,0x2C,0x1E,0x8F
	.db 0xCA,0x3F,0x0F,0x02,0xC1,0xAF,0xBD,0x03,0x01,0x13,0x8A,0x6B,0x3A,0x91,0x11,0x41
	.db 0x4F,0x67,0xDC,0xEA,0x97,0xF2,0xCF,0xCE,0xF0,0xB4,0xE6,0x73,0x96,0xAC,0x74,0x22
	.db 0xE7,0xAD,0x35,0x85,0xE2,0xF9,0x37,0xE8,0x1C,0x75,0xDF,0x6E,0x47,0xF1,0x1A,0x71
	.db 0x1D,0x29,0xC5,0x89,0x6F,0xB7,0x62,0x0E,0xAA,0x18,0xBE,0x1B,0xFC,0x56,0x3E,0x4B
	.db 0xC6,0xD2,0x79,0x20,0x9A,0xDB,0xC0,0xFE,0x78,0xCD,0x5A,0xF4,0x1F,0xDD,0xA8,0x33
	.db 0x88,0x07,0xC7,0x31,0xB1,0x12,0x10,0x59,0x27,0x80,0xEC,0x5F,0x60,0x51,0x7F,0xA9
	.db 0x19,0xB5,0x4A,0x0D,0x2D,0xE5,0x7A,0x9F,0x93,0xC9,0x9C,0xEF,0xA0,0xE0,0x3B,0x4D
	.db 0xAE,0x2A,0xF5,0xB0,0xC8,0xEB,0xBB,0x3C,0x83,0x53,0x99,0x61,0x17,0x2B,0x04,0x7E
	.db 0xBA,0x77,0xD6,0x26,0xE1,0x69,0x14,0x63,0x55,0x21,0x0C,0x7D
	.align 4
_RT0.7:
	.dw 0x50A7F451,0x5365417E,0xC3A4171A,0x965E273A,0xCB6BAB3B,0xF1459D1F,0xAB58FAAC,0x9303E34B
	.dw 0x55FA3020,0xF66D76AD,0x9176CC88,0x254C02F5,0xFCD7E54F,0xD7CB2AC5,0x80443526,0x8FA362B5
	.dw 0x495AB1DE,0x671BBA25,0x980EEA45,0xE1C0FE5D,0x02752FC3,0x12F04C81,0xA397468D,0xC6F9D36B
	.dw 0xE75F8F03,0x959C9215,0xEB7A6DBF,0xDA595295,0x2D83BED4,0xD3217458,0x2969E049,0x44C8C98E
	.dw 0x6A89C275,0x78798EF4,0x6B3E5899,0xDD71B927,0xB64FE1BE,0x17AD88F0,0x66AC20C9,0xB43ACE7D
	.dw 0x184ADF63,0x82311AE5,0x60335197,0x457F5362,0xE07764B1,0x84AE6BBB,0x1CA081FE,0x942B08F9
	.dw 0x58684870,0x19FD458F,0x876CDE94,0xB7F87B52,0x23D373AB,0xE2024B72,0x578F1FE3,0x2AAB5566
	.dw 0x0728EBB2,0x03C2B52F,0x9A7BC586,0xA50837D3,0xF2872830,0xB2A5BF23,0xBA6A0302,0x5C8216ED
	.dw 0x2B1CCF8A,0x92B479A7,0xF0F207F3,0xA1E2694E,0xCDF4DA65,0xD5BE0506,0x1F6234D1,0x8AFEA6C4
	.dw 0x9D532E34,0xA055F3A2,0x32E18A05,0x75EBF6A4,0x39EC830B,0xAAEF6040,0x069F715E,0x51106EBD
	.dw 0xF98A213E,0x3D06DD96,0xAE053EDD,0x46BDE64D,0xB58D5491,0x055DC471,0x6FD40604,0xFF155060
	.dw 0x24FB9819,0x97E9BDD6,0xCC434089,0x779ED967,0xBD42E8B0,0x888B8907,0x385B19E7,0xDBEEC879
	.dw 0x470A7CA1,0xE90F427C,0xC91E84F8
	.ds (4)
	.dw 0x83868009,0x48ED2B32,0xAC70111E,0x4E725A6C,0xFBFF0EFD,0x5638850F,0x1ED5AE3D,0x27392D36
	.dw 0x64D90F0A,0x21A65C68,0xD1545B9B,0x3A2E3624,0xB1670A0C,0x0FE75793,0xD296EEB4,0x9E919B1B
	.dw 0x4FC5C080,0xA220DC61,0x694B775A,0x161A121C,0x0ABA93E2,0xE52AA0C0,0x43E0223C,0x1D171B12
	.dw 0x0B0D090E,0xADC78BF2,0xB9A8B62D,0xC8A91E14,0x8519F157,0x4C0775AF,0xBBDD99EE,0xFD607FA3
	.dw 0x9F2601F7,0xBCF5725C,0xC53B6644,0x347EFB5B,0x7629438B,0xDCC623CB,0x68FCEDB6,0x63F1E4B8
	.dw 0xCADC31D7,0x10856342,0x40229713,0x2011C684,0x7D244A85,0xF83DBBD2,0x1132F9AE,0x6DA129C7
	.dw 0x4B2F9E1D,0xF330B2DC,0xEC52860D,0xD0E3C177,0x6C16B32B,0x99B970A9,0xFA489411,0x2264E947
	.dw 0xC48CFCA8,0x1A3FF0A0,0xD82C7D56,0xEF903322,0xC74E4987,0xC1D138D9,0xFEA2CA8C,0x360BD498
	.dw 0xCF81F5A6,0x28DE7AA5,0x268EB7DA,0xA4BFAD3F,0xE49D3A2C,0x0D927850,0x9BCC5F6A,0x62467E54
	.dw 0xC2138DF6,0xE8B8D890,0x5EF7392E,0xF5AFC382,0xBE805D9F,0x7C93D069,0xA92DD56F,0xB31225CF
	.dw 0x3B99ACC8,0xA77D1810,0x6E639CE8,0x7BBB3BDB,0x097826CD,0xF418596E,0x01B79AEC,0xA89A4F83
	.dw 0x656E95E6,0x7EE6FFAA,0x08CFBC21,0xE6E815EF,0xD99BE7BA,0xCE366F4A,0xD4099FEA,0xD67CB029
	.dw 0xAFB2A431,0x31233F2A,0x3094A5C6,0xC066A235,0x37BC4E74,0xA6CA82FC,0xB0D090E0,0x15D8A733
	.dw 0x4A9804F1,0xF7DAEC41,0x0E50CD7F,0x2FF69117,0x8DD64D76,0x4DB0EF43,0x544DAACC,0xDF0496E4
	.dw 0xE3B5D19E,0x1B886A4C,0xB81F2CC1,0x7F516546,0x04EA5E9D,0x5D358C01,0x737487FA,0x2E410BFB
	.dw 0x5A1D67B3,0x52D2DB92,0x335610E9,0x1347D66D,0x8C61D79A,0x7A0CA137,0x8E14F859,0x893C13EB
	.dw 0xEE27A9CE,0x35C961B7,0xEDE51CE1,0x3CB1477A,0x59DFD29C,0x3F73F255,0x79CE1418,0xBF37C773
	.dw 0xEACDF753,0x5BAAFD5F,0x146F3DDF,0x86DB4478,0x81F3AFCA,0x3EC468B9,0x2C342438,0x5F40A3C2
	.dw 0x72C31D16,0x0C25E2BC,0x8B493C28,0x41950DFF,0x7101A839,0xDEB30C08,0x9CE4B4D8,0x90C15664
	.dw 0x6184CB7B,0x70B632D5,0x745C6C48,0x4257B8D0
	.align 4
_RT1.8:
	.dw 0xA7F45150,0x65417E53,0xA4171AC3,0x5E273A96,0x6BAB3BCB,0x459D1FF1,0x58FAACAB,0x03E34B93
	.dw 0xFA302055,0x6D76ADF6,0x76CC8891,0x4C02F525,0xD7E54FFC,0xCB2AC5D7,0x44352680,0xA362B58F
	.dw 0x5AB1DE49,0x1BBA2567,0x0EEA4598,0xC0FE5DE1,0x752FC302,0xF04C8112,0x97468DA3,0xF9D36BC6
	.dw 0x5F8F03E7,0x9C921595,0x7A6DBFEB,0x595295DA,0x83BED42D,0x217458D3,0x69E04929,0xC8C98E44
	.dw 0x89C2756A,0x798EF478,0x3E58996B,0x71B927DD,0x4FE1BEB6,0xAD88F017,0xAC20C966,0x3ACE7DB4
	.dw 0x4ADF6318,0x311AE582,0x33519760,0x7F536245,0x7764B1E0,0xAE6BBB84,0xA081FE1C,0x2B08F994
	.dw 0x68487058,0xFD458F19,0x6CDE9487,0xF87B52B7,0xD373AB23,0x024B72E2,0x8F1FE357,0xAB55662A
	.dw 0x28EBB207,0xC2B52F03,0x7BC5869A,0x0837D3A5,0x872830F2,0xA5BF23B2,0x6A0302BA,0x8216ED5C
	.dw 0x1CCF8A2B,0xB479A792,0xF207F3F0,0xE2694EA1,0xF4DA65CD,0xBE0506D5,0x6234D11F,0xFEA6C48A
	.dw 0x532E349D,0x55F3A2A0,0xE18A0532,0xEBF6A475,0xEC830B39,0xEF6040AA,0x9F715E06,0x106EBD51
	.dw 0x8A213EF9,0x06DD963D,0x053EDDAE,0xBDE64D46,0x8D5491B5,0x5DC47105,0xD406046F,0x155060FF
	.dw 0xFB981924,0xE9BDD697,0x434089CC,0x9ED96777,0x42E8B0BD,0x8B890788,0x5B19E738,0xEEC879DB
	.dw 0x0A7CA147,0x0F427CE9,0x1E84F8C9
	.ds (4)
	.dw 0x86800983,0xED2B3248,0x70111EAC,0x725A6C4E,0xFF0EFDFB,0x38850F56,0xD5AE3D1E,0x392D3627
	.dw 0xD90F0A64,0xA65C6821,0x545B9BD1,0x2E36243A,0x670A0CB1,0xE757930F,0x96EEB4D2,0x919B1B9E
	.dw 0xC5C0804F,0x20DC61A2,0x4B775A69,0x1A121C16,0xBA93E20A,0x2AA0C0E5,0xE0223C43,0x171B121D
	.dw 0x0D090E0B,0xC78BF2AD,0xA8B62DB9,0xA91E14C8,0x19F15785,0x0775AF4C,0xDD99EEBB,0x607FA3FD
	.dw 0x2601F79F,0xF5725CBC,0x3B6644C5,0x7EFB5B34,0x29438B76,0xC623CBDC,0xFCEDB668,0xF1E4B863
	.dw 0xDC31D7CA,0x85634210,0x22971340,0x11C68420,0x244A857D,0x3DBBD2F8,0x32F9AE11,0xA129C76D
	.dw 0x2F9E1D4B,0x30B2DCF3,0x52860DEC,0xE3C177D0,0x16B32B6C,0xB970A999,0x489411FA,0x64E94722
	.dw 0x8CFCA8C4,0x3FF0A01A,0x2C7D56D8,0x903322EF,0x4E4987C7,0xD138D9C1,0xA2CA8CFE,0x0BD49836
	.dw 0x81F5A6CF,0xDE7AA528,0x8EB7DA26,0xBFAD3FA4,0x9D3A2CE4,0x9278500D,0xCC5F6A9B,0x467E5462
	.dw 0x138DF6C2,0xB8D890E8,0xF7392E5E,0xAFC382F5,0x805D9FBE,0x93D0697C,0x2DD56FA9,0x1225CFB3
	.dw 0x99ACC83B,0x7D1810A7,0x639CE86E,0xBB3BDB7B,0x7826CD09,0x18596EF4,0xB79AEC01,0x9A4F83A8
	.dw 0x6E95E665,0xE6FFAA7E,0xCFBC2108,0xE815EFE6,0x9BE7BAD9,0x366F4ACE,0x099FEAD4,0x7CB029D6
	.dw 0xB2A431AF,0x233F2A31,0x94A5C630,0x66A235C0,0xBC4E7437,0xCA82FCA6,0xD090E0B0,0xD8A73315
	.dw 0x9804F14A,0xDAEC41F7,0x50CD7F0E,0xF691172F,0xD64D768D,0xB0EF434D,0x4DAACC54,0x0496E4DF
	.dw 0xB5D19EE3,0x886A4C1B,0x1F2CC1B8,0x5165467F,0xEA5E9D04,0x358C015D,0x7487FA73,0x410BFB2E
	.dw 0x1D67B35A,0xD2DB9252,0x5610E933,0x47D66D13,0x61D79A8C,0x0CA1377A,0x14F8598E,0x3C13EB89
	.dw 0x27A9CEEE,0xC961B735,0xE51CE1ED,0xB1477A3C,0xDFD29C59,0x73F2553F,0xCE141879,0x37C773BF
	.dw 0xCDF753EA,0xAAFD5F5B,0x6F3DDF14,0xDB447886,0xF3AFCA81,0xC468B93E,0x3424382C,0x40A3C25F
	.dw 0xC31D1672,0x25E2BC0C,0x493C288B,0x950DFF41,0x01A83971,0xB30C08DE,0xE4B4D89C,0xC1566490
	.dw 0x84CB7B61,0xB632D570,0x5C6C4874,0x57B8D042
	.align 4
_RT2.9:
	.dw 0xF45150A7,0x417E5365,0x171AC3A4,0x273A965E,0xAB3BCB6B,0x9D1FF145,0xFAACAB58,0xE34B9303
	.dw 0x302055FA,0x76ADF66D,0xCC889176,0x02F5254C,0xE54FFCD7,0x2AC5D7CB,0x35268044,0x62B58FA3
	.dw 0xB1DE495A,0xBA25671B,0xEA45980E,0xFE5DE1C0,0x2FC30275,0x4C8112F0,0x468DA397,0xD36BC6F9
	.dw 0x8F03E75F,0x9215959C,0x6DBFEB7A,0x5295DA59,0xBED42D83,0x7458D321,0xE0492969,0xC98E44C8
	.dw 0xC2756A89,0x8EF47879,0x58996B3E,0xB927DD71,0xE1BEB64F,0x88F017AD,0x20C966AC,0xCE7DB43A
	.dw 0xDF63184A,0x1AE58231,0x51976033,0x5362457F,0x64B1E077,0x6BBB84AE,0x81FE1CA0,0x08F9942B
	.dw 0x48705868,0x458F19FD,0xDE94876C,0x7B52B7F8,0x73AB23D3,0x4B72E202,0x1FE3578F,0x55662AAB
	.dw 0xEBB20728,0xB52F03C2,0xC5869A7B,0x37D3A508,0x2830F287,0xBF23B2A5,0x0302BA6A,0x16ED5C82
	.dw 0xCF8A2B1C,0x79A792B4,0x07F3F0F2,0x694EA1E2,0xDA65CDF4,0x0506D5BE,0x34D11F62,0xA6C48AFE
	.dw 0x2E349D53,0xF3A2A055,0x8A0532E1,0xF6A475EB,0x830B39EC,0x6040AAEF,0x715E069F,0x6EBD5110
	.dw 0x213EF98A,0xDD963D06,0x3EDDAE05,0xE64D46BD,0x5491B58D,0xC471055D,0x06046FD4,0x5060FF15
	.dw 0x981924FB,0xBDD697E9,0x4089CC43,0xD967779E,0xE8B0BD42,0x8907888B,0x19E7385B,0xC879DBEE
	.dw 0x7CA1470A,0x427CE90F,0x84F8C91E
	.ds (4)
	.dw 0x80098386,0x2B3248ED,0x111EAC70,0x5A6C4E72,0x0EFDFBFF,0x850F5638,0xAE3D1ED5,0x2D362739
	.dw 0x0F0A64D9,0x5C6821A6,0x5B9BD154,0x36243A2E,0x0A0CB167,0x57930FE7,0xEEB4D296,0x9B1B9E91
	.dw 0xC0804FC5,0xDC61A220,0x775A694B,0x121C161A,0x93E20ABA,0xA0C0E52A,0x223C43E0,0x1B121D17
	.dw 0x090E0B0D,0x8BF2ADC7,0xB62DB9A8,0x1E14C8A9,0xF1578519,0x75AF4C07,0x99EEBBDD,0x7FA3FD60
	.dw 0x01F79F26,0x725CBCF5,0x6644C53B,0xFB5B347E,0x438B7629,0x23CBDCC6,0xEDB668FC,0xE4B863F1
	.dw 0x31D7CADC,0x63421085,0x97134022,0xC6842011,0x4A857D24,0xBBD2F83D,0xF9AE1132,0x29C76DA1
	.dw 0x9E1D4B2F,0xB2DCF330,0x860DEC52,0xC177D0E3,0xB32B6C16,0x70A999B9,0x9411FA48,0xE9472264
	.dw 0xFCA8C48C,0xF0A01A3F,0x7D56D82C,0x3322EF90,0x4987C74E,0x38D9C1D1,0xCA8CFEA2,0xD498360B
	.dw 0xF5A6CF81,0x7AA528DE,0xB7DA268E,0xAD3FA4BF,0x3A2CE49D,0x78500D92,0x5F6A9BCC,0x7E546246
	.dw 0x8DF6C213,0xD890E8B8,0x392E5EF7,0xC382F5AF,0x5D9FBE80,0xD0697C93,0xD56FA92D,0x25CFB312
	.dw 0xACC83B99,0x1810A77D,0x9CE86E63,0x3BDB7BBB,0x26CD0978,0x596EF418,0x9AEC01B7,0x4F83A89A
	.dw 0x95E6656E,0xFFAA7EE6,0xBC2108CF,0x15EFE6E8,0xE7BAD99B,0x6F4ACE36,0x9FEAD409,0xB029D67C
	.dw 0xA431AFB2,0x3F2A3123,0xA5C63094,0xA235C066,0x4E7437BC,0x82FCA6CA,0x90E0B0D0,0xA73315D8
	.dw 0x04F14A98,0xEC41F7DA,0xCD7F0E50,0x91172FF6,0x4D768DD6,0xEF434DB0,0xAACC544D,0x96E4DF04
	.dw 0xD19EE3B5,0x6A4C1B88,0x2CC1B81F,0x65467F51,0x5E9D04EA,0x8C015D35,0x87FA7374,0x0BFB2E41
	.dw 0x67B35A1D,0xDB9252D2,0x10E93356,0xD66D1347,0xD79A8C61,0xA1377A0C,0xF8598E14,0x13EB893C
	.dw 0xA9CEEE27,0x61B735C9,0x1CE1EDE5,0x477A3CB1,0xD29C59DF,0xF2553F73,0x141879CE,0xC773BF37
	.dw 0xF753EACD,0xFD5F5BAA,0x3DDF146F,0x447886DB,0xAFCA81F3,0x68B93EC4,0x24382C34,0xA3C25F40
	.dw 0x1D1672C3,0xE2BC0C25,0x3C288B49,0x0DFF4195,0xA8397101,0x0C08DEB3,0xB4D89CE4,0x566490C1
	.dw 0xCB7B6184,0x32D570B6,0x6C48745C,0xB8D04257
	.align 4
_RT3.10:
	.dw 0x5150A7F4,0x7E536541,0x1AC3A417,0x3A965E27,0x3BCB6BAB,0x1FF1459D,0xACAB58FA,0x4B9303E3
	.dw 0x2055FA30,0xADF66D76,0x889176CC,0xF5254C02,0x4FFCD7E5,0xC5D7CB2A,0x26804435,0xB58FA362
	.dw 0xDE495AB1,0x25671BBA,0x45980EEA,0x5DE1C0FE,0xC302752F,0x8112F04C,0x8DA39746,0x6BC6F9D3
	.dw 0x03E75F8F,0x15959C92,0xBFEB7A6D,0x95DA5952,0xD42D83BE,0x58D32174,0x492969E0,0x8E44C8C9
	.dw 0x756A89C2,0xF478798E,0x996B3E58,0x27DD71B9,0xBEB64FE1,0xF017AD88,0xC966AC20,0x7DB43ACE
	.dw 0x63184ADF,0xE582311A,0x97603351,0x62457F53,0xB1E07764,0xBB84AE6B,0xFE1CA081,0xF9942B08
	.dw 0x70586848,0x8F19FD45,0x94876CDE,0x52B7F87B,0xAB23D373,0x72E2024B,0xE3578F1F,0x662AAB55
	.dw 0xB20728EB,0x2F03C2B5,0x869A7BC5,0xD3A50837,0x30F28728,0x23B2A5BF,0x02BA6A03,0xED5C8216
	.dw 0x8A2B1CCF,0xA792B479,0xF3F0F207,0x4EA1E269,0x65CDF4DA,0x06D5BE05,0xD11F6234,0xC48AFEA6
	.dw 0x349D532E,0xA2A055F3,0x0532E18A,0xA475EBF6,0x0B39EC83,0x40AAEF60,0x5E069F71,0xBD51106E
	.dw 0x3EF98A21,0x963D06DD,0xDDAE053E,0x4D46BDE6,0x91B58D54,0x71055DC4,0x046FD406,0x60FF1550
	.dw 0x1924FB98,0xD697E9BD,0x89CC4340,0x67779ED9,0xB0BD42E8,0x07888B89,0xE7385B19,0x79DBEEC8
	.dw 0xA1470A7C,0x7CE90F42,0xF8C91E84
	.ds (4)
	.dw 0x09838680,0x3248ED2B,0x1EAC7011,0x6C4E725A,0xFDFBFF0E,0x0F563885,0x3D1ED5AE,0x3627392D
	.dw 0x0A64D90F,0x6821A65C,0x9BD1545B,0x243A2E36,0x0CB1670A,0x930FE757,0xB4D296EE,0x1B9E919B
	.dw 0x804FC5C0,0x61A220DC,0x5A694B77,0x1C161A12,0xE20ABA93,0xC0E52AA0,0x3C43E022,0x121D171B
	.dw 0x0E0B0D09,0xF2ADC78B,0x2DB9A8B6,0x14C8A91E,0x578519F1,0xAF4C0775,0xEEBBDD99,0xA3FD607F
	.dw 0xF79F2601,0x5CBCF572,0x44C53B66,0x5B347EFB,0x8B762943,0xCBDCC623,0xB668FCED,0xB863F1E4
	.dw 0xD7CADC31,0x42108563,0x13402297,0x842011C6,0x857D244A,0xD2F83DBB,0xAE1132F9,0xC76DA129
	.dw 0x1D4B2F9E,0xDCF330B2,0x0DEC5286,0x77D0E3C1,0x2B6C16B3,0xA999B970,0x11FA4894,0x472264E9
	.dw 0xA8C48CFC,0xA01A3FF0,0x56D82C7D,0x22EF9033,0x87C74E49,0xD9C1D138,0x8CFEA2CA,0x98360BD4
	.dw 0xA6CF81F5,0xA528DE7A,0xDA268EB7,0x3FA4BFAD,0x2CE49D3A,0x500D9278,0x6A9BCC5F,0x5462467E
	.dw 0xF6C2138D,0x90E8B8D8,0x2E5EF739,0x82F5AFC3,0x9FBE805D,0x697C93D0,0x6FA92DD5,0xCFB31225
	.dw 0xC83B99AC,0x10A77D18,0xE86E639C,0xDB7BBB3B,0xCD097826,0x6EF41859,0xEC01B79A,0x83A89A4F
	.dw 0xE6656E95,0xAA7EE6FF,0x2108CFBC,0xEFE6E815,0xBAD99BE7,0x4ACE366F,0xEAD4099F,0x29D67CB0
	.dw 0x31AFB2A4,0x2A31233F,0xC63094A5,0x35C066A2,0x7437BC4E,0xFCA6CA82,0xE0B0D090,0x3315D8A7
	.dw 0xF14A9804,0x41F7DAEC,0x7F0E50CD,0x172FF691,0x768DD64D,0x434DB0EF,0xCC544DAA,0xE4DF0496
	.dw 0x9EE3B5D1,0x4C1B886A,0xC1B81F2C,0x467F5165,0x9D04EA5E,0x015D358C,0xFA737487,0xFB2E410B
	.dw 0xB35A1D67,0x9252D2DB,0xE9335610,0x6D1347D6,0x9A8C61D7,0x377A0CA1,0x598E14F8,0xEB893C13
	.dw 0xCEEE27A9,0xB735C961,0xE1EDE51C,0x7A3CB147,0x9C59DFD2,0x553F73F2,0x1879CE14,0x73BF37C7
	.dw 0x53EACDF7,0x5F5BAAFD,0xDF146F3D,0x7886DB44,0xCA81F3AF,0xB93EC468,0x382C3424,0xC25F40A3
	.dw 0x1672C31D,0xBC0C25E2,0x288B493C,0xFF41950D,0x397101A8,0x08DEB30C,0xD89CE4B4,0x6490C156
	.dw 0x7B6184CB,0xD570B632,0x48745C6C,0xD04257B8
	.align 4
_RCON.11:
	.dw 0x00000001,0x00000002,0x00000004,0x00000008,0x00000010,0x00000020,0x00000040,0x00000080
	.dw 0x0000001B,0x00000036
