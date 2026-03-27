#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\MAC\CMAC\cmac.c -oDefaultBuild\cmac.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b1e191bc47cf418a870456abc4eefdc123epybav.m15
#@	compiled at Fri Mar 27 09:50:55 2026

	.file "..\..\Bsw\Crypto\CRYPTO\MAC\CMAC\cmac.c"

	$reg_mode 32
	.dbl_size 8

	.public _leftshift
	.public _ArrayXor
	.public _LoadMacKey
	.extern _Crypto_aes_setkey_enc
	.extern _Crypto_aes_crypt_cbc_CMAC
	.public _internal_GenerateMAC
	.extern _Crypto_memset
	.public _Crypto_GernerateMAC
	.extern _VssSecocCmacGen
	.public _Crypto_VerifyMAC

	.section .text, text
_leftshift:
	.stack _leftshift = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 63
	mov 0x00000000, r2
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 68
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r9
	ld.bu 0x00000001[r5], r5
	addi 0xFFFFFF81, r5, r0
	sasf 0x0000000F, r9
	mov r8, r5
	add r2, r5
	st.b r9, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 66
	addi 0xFFFFFFFF, r6, r5
	cmp r5, r2
	blt9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 70
	add 0xFFFFFFFF, r6
	add r6, r8
	add r6, r7
	ld.b 0x00000000[r7], r2
	add r2, r2
	st.b r2, 0x00000000[r8]
	jmp [r31]
_ArrayXor:
	.stack _ArrayXor = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 73
	mov 0x00000000, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 78
	mov r7, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r8, r10
	add r2, r10
	ld.b 0x00000000[r10], r10
	xor r10, r5
	mov r9, r10
	add r2, r10
	st.b r5, 0x00000000[r10]
	add 0x00000001, r2
.BB.LABEL.2_2:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 76
	cmp r6, r2
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 80
	jmp [r31]
_LoadMacKey:
	.stack _LoadMacKey = 80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 83
	prepare 0x00000479, 0x00000038
	mov r6, r20
	mov r8, r21
	mov r9, r22
	movea 0x00000010, r0, r23
	movea 0x00000018, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 92
	mov #.STR.1, r2
	mov r23, r5
	add r24, r5
	mov r24, r6
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	ld.b 0x00000000[r2], r8
	st.b r8, 0x00000000[r6]
	add 0x00000001, r2
	add 0x00000001, r6
.BB.LABEL.3_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 93
	mov #.STR.1164, r2
	movea 0x00000008, r3, r5
	mov r23, r6
	add r5, r6
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; entry
	ld.b 0x00000000[r2], r8
	st.b r8, 0x00000000[r5]
	add 0x00000001, r2
	add 0x00000001, r5
.BB.LABEL.3_5:	; entry
	cmp r5, r6
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_6:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 94
	mov r20, r6
	jarl _Crypto_aes_setkey_enc, r31
	movea 0x00000028, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 96
	st.w r2, 0x00000004[r3]
	st.w r24, 0x00000000[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r23, r8
	mov r21, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 97
	ld.bu 0x00000028[r3], r2
	movea 0x00000028, r3, r7
	mov r22, r8
	addi 0xFFFFFF81, r2, r0
	ld.w 0x00000050[r3], r20
	mov r10, r21
	bgt9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 99
	jarl _leftshift, r31
	br9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000010, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 103
	mov r23, r6
	jarl _leftshift, r31
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 104
	mov r23, r6
	mov r22, r7
	mov r22, r9
	jarl _ArrayXor, r31
.BB.LABEL.3_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 107
	ld.bu 0x00000000[r22], r2
	mov r22, r7
	mov r20, r8
	addi 0xFFFFFF81, r2, r0
	bgt9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 109
	jarl _leftshift, r31
	mov r21, r10
	dispose 0x00000038, 0x00000479, [r31]
.BB.LABEL.3_11:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000010, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 113
	mov r23, r6
	jarl _leftshift, r31
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 114
	mov r23, r6
	mov r20, r7
	mov r20, r9
	jarl _ArrayXor, r31
	mov r21, r10
	dispose 0x00000038, 0x00000479, [r31]
_internal_GenerateMAC:
	.stack _internal_GenerateMAC = 316
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 120
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFF70, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r2
	st.w r2, 0x00000008[r3]
	movea 0x00000080, r0, r23
	movea 0x0000008C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 134
	mov r23, r7
	jarl _Crypto_memset, r31
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 135
	mov r23, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 137
	andi 0x0000000F, r21, r2
	cmp 0x00000000, r21
	ld.w 0x00000148[r3], r23
	ld.w 0x00000144[r3], r24
	ld.w 0x00000140[r3], r25
	ld.w 0x0000013C[r3], r7
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; if_then_bb
	movea 0x00000080, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 139
	mov r20, r6
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 140
	shr 0x00000004, r21
	mov 0x00000000, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 141
	mov r10, r26
	br9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 143
	mov r23, r7
	shl 0x00000004, r7
	add r22, r7
	movea 0x0000000C, r3, r27
	movea 0x0000008C, r3, r28
	movea 0x00000010, r0, r29
	mov r29, r6
	mov r28, r8
	mov r27, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 144
	st.w r28, 0x00000004[r3]
	st.w r27, 0x00000000[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r29, r8
	mov r25, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	add 0x00000001, r23
.BB.LABEL.4_4:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 141
	addi 0xFFFFFFFF, r21, r2
	cmp r2, r23
	blt9 .BB.LABEL.4_3
.BB.LABEL.4_5:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 146
	shl 0x00000004, r21
	add r22, r21
	addi 0xFFFFFFF0, r21, r7
	movea 0x0000000C, r3, r21
	movea 0x00000010, r0, r22
	movea 0x0000008C, r3, r8
	mov r22, r6
	mov r21, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 147
	mov r22, r6
	mov r21, r7
	mov r24, r8
	mov r21, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 148
	st.w r21, 0x00000000[r3]
	ld.w 0x00000008[r3], r21
	st.w r21, 0x00000004[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r22, r8
	mov r25, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	mov r26, r10
	movea 0x00000090, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
.BB.LABEL.4_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000080, r0, r8
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 152
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 154
	jarl _Crypto_aes_setkey_enc, r31
	mov r10, r21
	movea 0xFFFFFF80, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 156
	st.b r22, 0x0000000C[r3]
	movea 0x0000000C, r3, r22
	movea 0x00000010, r0, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 157
	mov r24, r6
	mov r22, r7
	mov r23, r8
	mov r22, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 158
	st.w r22, 0x00000000[r3]
	ld.w 0x00000008[r3], r22
	st.w r22, 0x00000004[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r24, r8
	mov r25, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	mov r21, r10
	movea 0x00000090, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
.BB.LABEL.4_8:	; if_else_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 162
	jarl _Crypto_aes_setkey_enc, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 164
	mov r21, r24
	shr 0x00000004, r24
	mov 0x00000000, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 165
	mov r10, r27
	br9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 167
	mov r26, r7
	shl 0x00000004, r7
	add r22, r7
	movea 0x0000000C, r3, r28
	movea 0x0000008C, r3, r29
	movea 0x00000010, r0, r30
	mov r30, r6
	mov r29, r8
	mov r28, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 168
	st.w r29, 0x00000004[r3]
	st.w r28, 0x00000000[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r30, r8
	mov r25, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	add 0x00000001, r26
.BB.LABEL.4_10:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 165
	cmp r24, r26
	blt9 .BB.LABEL.4_9
.BB.LABEL.4_11:	; bb119.bb141_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 173
	add r2, r5
	andi 0x000000F0, r21, r6
	add r2, r6
	add r22, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.4_13:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 171
	andi 0x0000000F, r21, r5
	cmp r5, r2
	movea 0x0000000C, r3, r5
	blt9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 175
	andi 0x0000000F, r21, r2
	add r2, r5
	movea 0xFFFFFF80, r0, r6
	st.b r6, 0x00000000[r5]
	br9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x0000000C, r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 178
	add r2, r5
	st.b r0, 0x00000000[r5]
.BB.LABEL.4_16:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 176
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.4_15
.BB.LABEL.4_17:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x0000000C, r3, r21
	movea 0x00000010, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 182
	mov r22, r6
	mov r21, r7
	mov r23, r8
	mov r21, r9
	jarl _ArrayXor, r31
	movea 0x0000008C, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 183
	mov r22, r6
	mov r21, r7
	mov r21, r9
	jarl _ArrayXor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 184
	st.w r21, 0x00000000[r3]
	ld.w 0x00000008[r3], r2
	st.w r2, 0x00000004[r3]
	mov 0x00000001, r7
	mov r20, r6
	mov r22, r8
	mov r25, r9
	jarl _Crypto_aes_crypt_cbc_CMAC, r31
	mov r27, r10
	movea 0x00000090, r3, r3
	dispose 0x0000007C, 0x00000FFF, [r31]
_Crypto_GernerateMAC:
	.stack _Crypto_GernerateMAC = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 191
	prepare 0x00000001, 0x00000020
	mov r6, r8
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 194
	mov r2, r7
	add r6, r7
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.5_2:	; entry
	cmp r6, r7
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; entry
	st.b r0, 0x00000010[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 195
	add r6, r2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.5_5:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; entry
	st.b r0, 0x00000000[r3]
	ld.w 0x00000024[r3], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 200
	mov r9, r6
	jarl _VssSecocCmacGen, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 202
	zxb r10
	dispose 0x00000020, 0x00000001, [r31]
_Crypto_VerifyMAC:
	.stack _Crypto_VerifyMAC = 372
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 205
	prepare 0x00000679, 0x0000007C
	movea 0xFFFFFF24, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	movea 0x00000148, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 209
	mov r2, r7
	add r6, r7
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.6_2:	; entry
	cmp r6, r7
	bnz9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; entry
	st.b r0, 0x00000148[r3]
	movea 0x00000138, r3, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 210
	mov r2, r6
	add r9, r6
	mov r9, r7
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.6_5:	; entry
	cmp r7, r6
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_6:	; entry
	st.b r0, 0x00000138[r3]
	movea 0x00000128, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 211
	add r6, r2
	mov r6, r7
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; entry
	st.b r5, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.6_8:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_9:	; entry
	st.b r0, 0x00000128[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 214
	st.w r6, 0x00000000[r3]
	movea 0x00000010, r3, r6
	mov r20, r7
	mov r21, r8
	jarl _LoadMacKey, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 215
	cmp 0x00000000, r10
	ld.w 0x00000178[r3], r24
	ld.w 0x00000174[r3], r25
	mov r23, r7
	mov r22, r8
	bnz9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	movea 0x00000128, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 217
	st.w r2, 0x0000000C[r3]
	movea 0x00000138, r3, r2
	st.w r2, 0x00000008[r3]
	st.w r21, 0x00000004[r3]
	st.w r20, 0x00000000[r3]
	movea 0x00000148, r3, r9
	movea 0x00000010, r3, r6
	jarl _internal_GenerateMAC, r31
.BB.LABEL.6_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 220
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_12:	; if_break_bb.bb61_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.6_15
.BB.LABEL.6_13:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 224
	andi 0x000000FF, r2, r5
	movea 0x00000148, r3, r6
	add r5, r6
	ld.bu 0x00000000[r6], r6
	add r25, r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r6
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_14:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	add 0x00000001, r2
.BB.LABEL.6_15:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 222
	andi 0x000000FF, r2, r5
	cmp r24, r5
	bl9 .BB.LABEL.6_13
	br9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; bb.if_break_bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 0
	mov 0x00000001, r10
.BB.LABEL.6_17:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/MAC/CMAC/cmac.c", 232
	movea 0x000000DC, r3, r3
	dispose 0x0000007C, 0x00000679, [r31]
	.section .const, const
.STR.1:
	.ds (16)
.STR.1164:
	.ds (15)
	.db 0x87
