#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG\ctr_drbg.c -oDefaultBuild\ctr_drbg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_1994f695c9d94b8ebde7951d5841c3e2yum0ayzi.rgh
#@	compiled at Fri Mar 27 09:50:56 2026

	.file "..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG\ctr_drbg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Crypto_memset
	.extern _Crypto_memcpy
	.extern _Crypto_aes_setkey_enc
	.extern _Crypto_aes_crypt_ecb
	.public _mbedtls_ctr_drbg_update_ret
	.public _mbedtls_ctr_drbg_update
	.public _mbedtls_ctr_drbg_reseed
	.public _mbedtls_ctr_drbg_seed
	.public _mbedtls_ctr_drbg_random_with_add
	.public _mbedtls_ctr_drbg_random
	.extern _Crypto_sha256
	.extern _Crypto_sha256_starts_ret
	.extern _Crypto_sha256_update_ret
	.public _Crypto_platform_entropy_poll
	.extern _rand
	.public _entropy_gather_internal
	.public _mbedtls_entropy_func
	.extern _Crypto_sha256_finish_ret
	.public _Crypto_CtrDrbg
	.public _mbedtls_ctr_drbg_init

	.section .text, text
_block_cipher_df.1:
	.stack _block_cipher_df.1 = 656
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 69
	prepare 0x00000479, 0x0000007C
	movea 0xFFFFFE04, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x00000120, r0, r7
	movea 0x00000158, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 84
	jarl _Crypto_memset, r31
	movea 0x00000118, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 85
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 88
	mov r22, r2
	shr 0x00000018, r2
	st.b r2, 0x00000168[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 89
	mov r22, r2
	shr 0x00000010, r2
	st.b r2, 0x00000169[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 90
	mov r22, r2
	shr 0x00000008, r2
	st.b r2, 0x0000016A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 91
	st.b r22, 0x0000016B[r3]
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 93
	st.b r2, 0x0000016F[r3]
	movea 0x00000170, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 94
	mov r23, r6
	mov r21, r7
	mov r22, r8
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 95
	add r22, r23
	movea 0xFFFFFF80, r0, r2
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 97
	movea 0x00000019, r22, r21
	mov 0x00000000, r2
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000128, r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 100
	add r2, r5
	st.b r2, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_2:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 99
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000080, r0, r8
	movea 0x00000128, r3, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 102
	jarl _Crypto_aes_setkey_enc, r31
	mov 0x00000000, r22
	br9 .BB.LABEL.1_11
.BB.LABEL.1_4:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000010, r0, r7
	movea 0x00000118, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 109
	jarl _Crypto_memset, r31
	movea 0x00000158, r3, r23
	mov r21, r24
	br9 .BB.LABEL.1_8
.BB.LABEL.1_5:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000118, r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 115
	add r2, r5
	ld.b 0x00000000[r5], r6
	mov r23, r7
	add r2, r7
	ld.b 0x00000000[r7], r7
	xor r7, r6
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_6:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 114
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.1_5
.BB.LABEL.1_7:	; bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000118, r3, r8
	mov 0x00000001, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 119
	mov r8, r9
	jarl _Crypto_aes_crypt_ecb, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 117
	cmp 0x0000000F, r24
	movea 0x00000010, r0, r2
	cmov 0x0000000B, r2, r24, r2
	sub r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 116
	movea 0x00000010, r23, r23
.BB.LABEL.1_8:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 112
	cmp 0x00000000, r24
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; bb117.bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_10:	; bb122
	movea 0x00000138, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 122
	add r22, r6
	movea 0x00000010, r0, r8
	movea 0x00000118, r3, r7
	jarl _Crypto_memcpy, r31
	movea 0x00000158, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 127
	ld.b 0x00000003[r2], r2
	add 0x00000001, r2
	st.b r2, 0x0000015B[r3]
	movea 0x00000010, r22, r22
.BB.LABEL.1_11:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 106
	addi 0xFFFFFFE0, r22, r0
	blt9 .BB.LABEL.1_4
.BB.LABEL.1_12:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000080, r0, r8
	movea 0x00000138, r3, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 133
	jarl _Crypto_aes_setkey_enc, r31
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 134
	movea 0x00000148, r3, r22
	mov r10, r23
	mov r20, r24
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000001, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 139
	mov r22, r8
	mov r22, r9
	jarl _Crypto_aes_crypt_ecb, r31
	mov r10, r23
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 140
	mov r24, r6
	mov r22, r7
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 141
	movea 0x00000010, r21, r21
	movea 0x00000010, r24, r24
.BB.LABEL.1_14:	; bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 137
	addi 0xFFFFFFE0, r21, r0
	blt9 .BB.LABEL.1_13
.BB.LABEL.1_15:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 143
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 148
	mov r20, r6
	jarl _Crypto_memset, r31
.BB.LABEL.1_17:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	andi 0x000000FF, r23, r10
	movea 0x000001FC, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 152
	dispose 0x0000007C, 0x00000479, [r31]
_ctr_drbg_update_internal.1:
	.stack _ctr_drbg_update_internal.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 155
	prepare 0x00000079, 0x00000020
	mov r6, r20
	mov r7, r21
	movea 0x00000020, r0, r7
	mov r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 162
	mov r22, r6
	jarl _Crypto_memset, r31
	mov 0x00000000, r23
	br9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 170
	mov r2, r5
	add r20, r5
	ld.b 0xFFFFFFFF[r5], r6
	add 0x00000001, r6
	st.b r6, 0xFFFFFFFF[r5]
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	add 0xFFFFFFFF, r2
.BB.LABEL.2_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 169
	cmp 0x00000000, r2
	bgt9 .BB.LABEL.2_1
.BB.LABEL.2_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 176
	movea 0x00000020, r20, r6
	mov 0x00000001, r7
	mov r20, r8
	mov r22, r9
	jarl _Crypto_aes_crypt_ecb, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 178
	movea 0x00000010, r23, r23
	movea 0x00000010, r22, r22
.BB.LABEL.2_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 164
	addi 0xFFFFFFE0, r23, r0
	blt9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb44.bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; bb44.bb26_crit_edge
	movea 0x00000010, r0, r2
	br9 .BB.LABEL.2_3
.BB.LABEL.2_8:	; bb50
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 182
	add r2, r5
	ld.b 0x00000000[r5], r6
	mov r21, r7
	add r2, r7
	ld.b 0x00000000[r7], r7
	xor r7, r6
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.2_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 181
	addi 0xFFFFFFE0, r2, r0
	blt9 .BB.LABEL.2_8
.BB.LABEL.2_10:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 187
	movea 0x00000020, r20, r6
	movea 0x00000080, r0, r8
	mov r3, r7
	jarl _Crypto_aes_setkey_enc, r31
	mov r10, r21
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 188
	movea 0x00000010, r3, r7
	mov r20, r6
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 191
	mov r21, r10
	dispose 0x00000020, 0x00000079, [r31]
_mbedtls_ctr_drbg_update_ret:
	.stack _mbedtls_ctr_drbg_update_ret = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 206
	prepare 0x00000041, 0x00000020
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 214
	cmp 0x00000000, r8
	mov r6, r20
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.bb25_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_break_bb
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 217
	jarl _block_cipher_df.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 218
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 220
	mov r20, r6
	jarl _ctr_drbg_update_internal.1, r31
.BB.LABEL.3_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 224
	dispose 0x00000020, 0x00000041, [r31]
_mbedtls_ctr_drbg_update:
	.stack _mbedtls_ctr_drbg_update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 226
	prepare 0x00000001, 0x00000000
	movea 0x00000100, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 233
	cmp r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 234
	cmov 0x0000000B, r2, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 235
	jarl _mbedtls_ctr_drbg_update_ret, r31
	dispose 0x00000000, 0x00000001, [r31]
_mbedtls_ctr_drbg_reseed:
	.stack _mbedtls_ctr_drbg_reseed = 276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 250
	prepare 0x00000079, 0x0000007C
	movea 0xFFFFFF7C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	movea 0x00000100, r0, r7
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 252
	mov r7, r5
	add r23, r5
	mov r23, r6
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry
	st.b r2, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.5_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; entry
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 256
	mov r23, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 260
	ld.w 0x00000018[r20], r8
	ld.w 0x00000138[r20], r6
	ld.w 0x0000013C[r20], r2
	mov r23, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 261
	cmp 0x00000000, r10
	mov r21, r7
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 263
	ld.w 0x00000018[r20], r21
.BB.LABEL.5_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 269
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb42
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 271
	add r21, r6
	mov r22, r8
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 272
	add r22, r21
.BB.LABEL.5_9:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r21, r8
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 278
	mov r21, r6
	mov r21, r7
	jarl _block_cipher_df.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 283
	mov r20, r6
	mov r21, r7
	jarl _ctr_drbg_update_internal.1, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 285
	st.w r2, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 288
	movea 0x00000084, r3, r3
	dispose 0x0000007C, 0x00000079, [r31]
_good_nonce_len.1:
	.stack _good_nonce_len.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 294
	movea 0x00000017, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 296
	cmp r2, r6
	bh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 299
	add 0x00000001, r6
	mov r6, r10
	shr 0x00000001, r10
	jmp [r31]
.BB.LABEL.6_2:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 300
	jmp [r31]
_mbedtls_ctr_drbg_seed:
	.stack _mbedtls_ctr_drbg_seed = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 303
	prepare 0x00000479, 0x00000010
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 317
	movea 0x00000020, r20, r24
	movea 0x00000118, r0, r7
	mov r24, r6
	jarl _Crypto_memset, r31
	movea 0x00000010, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 318
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 320
	st.w r21, 0x0000013C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 321
	st.w r22, 0x00000138[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 323
	ld.w 0x00000018[r20], r6
	cmp 0x00000000, r6
	ld.w 0x00000028[r3], r21
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 325
	st.w r6, 0x00000018[r20]
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 327
	ld.w 0x00000010[r20], r2
	cmp 0x00000000, r2
	bp9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	jarl _good_nonce_len.1, r31
.BB.LABEL.7_4:	; bb40
	movea 0x00000080, r0, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 332
	mov r24, r6
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 333
	cmp 0x00000001, r10
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 337
	mov r20, r6
	mov r23, r7
	mov r21, r8
	jarl _mbedtls_ctr_drbg_reseed, r31
.BB.LABEL.7_6:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 340
	dispose 0x00000010, 0x00000479, [r31]
_mbedtls_ctr_drbg_random_with_add:
	.stack _mbedtls_ctr_drbg_random_with_add = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 343
	prepare 0x00000479, 0x00000030
	movea 0x00000400, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 358
	cmp r2, r8
	ld.w 0x00000048[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	bh9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000101, r0, r2
	cmp r2, r20
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; entry.bb183_crit_edge
	mov 0x00000001, r10
.BB.LABEL.8_3:	; bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 428
	dispose 0x00000030, 0x00000479, [r31]
.BB.LABEL.8_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 366
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 368
	ld.w 0x00000010[r24], r2
	ld.w 0x0000001C[r24], r5
	cmp r5, r2
	bgt9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	ld.w 0x00000014[r24], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 370
	mov r24, r6
	mov r21, r7
	mov r20, r8
	jarl _mbedtls_ctr_drbg_reseed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 371
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_7:	; if_then_bb51.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r20
.BB.LABEL.8_8:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 378
	cmp 0x00000000, r20
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_9:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 380
	mov r21, r7
	mov r20, r8
	jarl _block_cipher_df.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 381
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_10:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 385
	mov r24, r6
	jarl _ctr_drbg_update_internal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 386
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
	br9 .BB.LABEL.8_16
.BB.LABEL.8_11:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r2, r5
	add r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 398
	ld.b 0xFFFFFFFF[r5], r6
	add 0x00000001, r6
	st.b r6, 0xFFFFFFFF[r5]
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_12:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	add 0xFFFFFFFF, r2
.BB.LABEL.8_13:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 397
	cmp 0x00000000, r2
	bgt9 .BB.LABEL.8_11
.BB.LABEL.8_14:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 404
	movea 0x00000020, r24, r6
	mov r3, r9
	mov 0x00000001, r7
	mov r24, r8
	jarl _Crypto_aes_crypt_ecb, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 405
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_15:	; if_break_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 410
	cmp r2, r22
	cmov 0x0000000B, r2, r22, r20
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 414
	mov r23, r6
	mov r20, r8
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 416
	sub r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 415
	add r20, r23
.BB.LABEL.8_16:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 392
	cmp 0x00000000, r22
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_17:	; bb159.bb117_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000010, r0, r2
	br9 .BB.LABEL.8_13
.BB.LABEL.8_18:	; bb164
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 419
	mov r24, r6
	jarl _ctr_drbg_update_internal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 420
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_19:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 425
	ld.w 0x00000010[r24], r2
	add 0x00000001, r2
	st.w r2, 0x00000010[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 427
	dispose 0x00000030, 0x00000479, [r31]
_mbedtls_ctr_drbg_random:
	.stack _mbedtls_ctr_drbg_random = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 431
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 448
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r9
	jarl _mbedtls_ctr_drbg_random_with_add, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 451
	dispose 0x00000004, 0x00000001, [r31]
_entropy_update.1:
	.stack _entropy_update.1 = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 453
	prepare 0x00000079, 0x00000044
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 465
	cmp r2, r9
	mov r7, r20
	mov r6, r21
	bnh9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000002, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 467
	mov r8, r6
	mov r9, r7
	mov r2, r8
	jarl _Crypto_sha256, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000040, r0, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 469
	jarl _Crypto_memset, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000040, r0, r9
	movea 0x00000002, r3, r8
.BB.LABEL.10_4:	; if_break_bb27
	mov r9, r22
	mov r8, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 475
	st.b r20, 0x00000042[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 476
	st.b r22, 0x00000043[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 484
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	addi 0x00000004, r21, r6
	jarl _Crypto_sha256_starts_ret, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb55
	movea 0x00000040, r0, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 486
	jarl _Crypto_memset, r31
	br9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 489
	st.w r2, 0x00000000[r21]
.BB.LABEL.10_8:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 491
	add 0x00000004, r21
	mov 0x00000002, r8
	movea 0x00000042, r3, r7
	mov r21, r6
	jarl _Crypto_sha256_update_ret, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_10
.BB.LABEL.10_9:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000040, r0, r7
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 493
	jarl _Crypto_memset, r31
.BB.LABEL.10_10:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 496
	mov r21, r6
	mov r23, r7
	mov r22, r8
	jarl _Crypto_sha256_update_ret, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 499
	dispose 0x00000044, 0x00000079, [r31]
_Crypto_platform_entropy_poll:
	.stack _Crypto_platform_entropy_poll = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 500
	prepare 0x00000079, 0x00000000
	mov 0x00000000, r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 512
	jarl _rand, r31
	mov r23, r2
	add r20, r2
	st.b r10, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 513
	ld.w 0x00000000[r21], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r21]
	add 0x00000001, r20
.BB.LABEL.11_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 510
	cmp r22, r20
	bl9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 517
	dispose 0x00000000, 0x00000079, [r31]
_entropy_gather_internal:
	.stack _entropy_gather_internal = 148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 518
	prepare 0x00000071, 0x0000007C
	add 0xFFFFFFF8, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 526
	ld.w 0x0000006C[r6], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r21
	movea 0x00000011, r0, r22
	br9 .BB.LABEL.12_9
.BB.LABEL.12_2:	; entry.exit_crit_edge
	movea 0x00000033, r0, r10
	br9 .BB.LABEL.12_11
.BB.LABEL.12_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 541
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 542
	mov r21, r22
	mul 0x00000014, r22, r0
	add r20, r22
	ld.w 0x00000074[r22], r6
	ld.w 0x00000070[r22], r22
	mov r3, r9
	movea 0x00000080, r0, r8
	movea 0x00000004, r3, r7
	jarl [r22], r31
	andi 0x000000FF, r10, r0
	mov r10, r22
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000080, r0, r7
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 544
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 545
	st.w r0, 0x00000000[r3]
.BB.LABEL.12_5:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 550
	ld.w 0x00000000[r3], r9
	cmp 0x00000000, r9
	bz9 .BB.LABEL.12_8
.BB.LABEL.12_6:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 552
	andi 0x000000FF, r21, r7
	movea 0x00000004, r3, r8
	mov r20, r6
	jarl _entropy_update.1, r31
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_7:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 556
	mov r21, r22
	mul 0x00000014, r22, r0
	add r20, r22
	ld.w 0x00000078[r22], r2
	ld.w 0x00000000[r3], r5
	add r5, r2
	st.w r2, 0x00000078[r22]
	mov r10, r22
.BB.LABEL.12_8:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	add 0x00000001, r21
.BB.LABEL.12_9:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 535
	ld.w 0x0000006C[r20], r2
	cmp r2, r21
	blt9 .BB.LABEL.12_3
.BB.LABEL.12_10:	; bb81.exit_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r22, r10
.BB.LABEL.12_11:	; exit
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 567
	zxb r10
	add 0x00000008, r3
	dispose 0x0000007C, 0x00000071, [r31]
_mbedtls_entropy_func:
	.stack _mbedtls_entropy_func = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 569
	prepare 0x00000479, 0x00000020
	movea 0x00000021, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 579
	cmp r2, r8
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bl9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.exit_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000011, r0, r10
	br9 .BB.LABEL.13_21
.BB.LABEL.13_2:	; entry.bb15_crit_edge
	mov 0x00000000, r2
.BB.LABEL.13_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 586
	addi 0x00000001, r2, r23
	addi 0xFFFFFF00, r2, r0
	bgt9 .BB.LABEL.13_1
.BB.LABEL.13_4:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 592
	mov r22, r6
	jarl _entropy_gather_internal, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_5:	; if_break_bb24.bb78_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000001, r2
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.13_9
.BB.LABEL.13_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 602
	mov r5, r7
	mul 0x00000014, r7, r0
	add r22, r7
	ld.w 0x00000078[r7], r8
	ld.w 0x0000007C[r7], r9
	cmp r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 604
	cmov 0x00000001, 0x00000000, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 606
	ld.w 0x00000080[r7], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 608
	mov r5, r7
	mul 0x00000014, r7, r0
	add r22, r7
	ld.w 0x00000078[r7], r7
	add r7, r6
.BB.LABEL.13_8:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	add 0x00000001, r5
.BB.LABEL.13_9:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 600
	ld.w 0x0000006C[r22], r7
	cmp r7, r5
	blt9 .BB.LABEL.13_6
.BB.LABEL.13_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 584
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x0000001F, r0, r2
	cmp r2, r6
	bh9 .BB.LABEL.13_13
.BB.LABEL.13_12:	; bb86.bb15_crit_edge
	mov r23, r2
	br9 .BB.LABEL.13_3
.BB.LABEL.13_13:	; bb107
	mov r3, r23
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 613
	mov r23, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 615
	addi 0x00000004, r22, r24
	mov r24, r6
	mov r23, r7
	jarl _Crypto_sha256_finish_ret, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_14:	; if_break_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000068, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 620
	mov r24, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 622
	mov r24, r6
	jarl _Crypto_sha256_starts_ret, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_15:	; if_break_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000020, r0, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 626
	mov r24, r6
	jarl _Crypto_sha256_update_ret, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_16:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	movea 0x00000020, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 631
	mov r6, r8
	jarl _Crypto_sha256, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_17:	; if_break_bb146.bb167_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.13_19
.BB.LABEL.13_18:	; bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 638
	mov r2, r5
	mul 0x00000014, r5, r0
	add r22, r5
	st.w r0, 0x00000078[r5]
	add 0x00000001, r2
.BB.LABEL.13_19:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 636
	ld.w 0x0000006C[r22], r5
	cmp r5, r2
	blt9 .BB.LABEL.13_18
.BB.LABEL.13_20:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 641
	mov r21, r6
	mov r20, r8
	jarl _Crypto_memcpy, r31
	mov 0x00000000, r10
.BB.LABEL.13_21:	; exit
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 0
	mov r10, r20
	movea 0x00000020, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 645
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 647
	mov r20, r10
	dispose 0x00000020, 0x00000479, [r31]
_Crypto_CtrDrbg:
	.stack _Crypto_CtrDrbg = 864
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 649
	prepare 0x00000679, 0x0000007C
	movea 0xFFFFFD38, r3, r3
	mov r6, r20
	mov r7, r21
	movea 0x00000204, r3, r22
	movea 0x00000140, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 654
	mov r22, r6
	mov r23, r7
	jarl _Crypto_memset, r31
	movea 0x00000004, r3, r24
	movea 0x00000200, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 655
	mov r24, r6
	jarl _Crypto_memset, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 656
	st.w r2, 0x00000070[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 657
	mov #_Crypto_platform_entropy_poll, r5
	st.w r5, 0x00000074[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 658
	st.w r0, 0x00000078[r3]
	movea 0x00000010, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 659
	st.w r25, 0x00000080[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 660
	st.w r2, 0x00000084[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 662
	st.w r25, 0x0000021C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 674
	st.w r25, 0x00000000[r3]
	mov #_mbedtls_entropy_func, r7
	mov r22, r6
	mov r24, r8
	mov r20, r9
	jarl _mbedtls_ctr_drbg_seed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 678
	mov r22, r6
	mov r21, r7
	mov r25, r8
	jarl _mbedtls_ctr_drbg_random, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 680
	mov r22, r6
	mov r23, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 683
	mov r20, r10
	movea 0x000002C8, r3, r3
	dispose 0x0000007C, 0x00000679, [r31]
_mbedtls_ctr_drbg_init:
	.stack _mbedtls_ctr_drbg_init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 688
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000140, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 690
	jarl _Crypto_memset, r31
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 693
	st.w r2, 0x00000010[r20]
	movea 0x00002710, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/RandomGen/CTR_DRBG/ctr_drbg.c", 695
	st.w r2, 0x0000001C[r20]
	dispose 0x00000000, 0x00000041, [r31]
