#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\Hash\sha256\sha256.c -oDefaultBuild\sha256.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7a667c81be2b40d984eb1d0749f853e9luvedisj.b0o
#@	compiled at Fri Mar 27 09:50:54 2026

	.file "..\..\Bsw\Crypto\CRYPTO\Hash\sha256\sha256.c"

	$reg_mode 32
	.dbl_size 8

	.public _Crypto_sha256_starts_ret
	.public _Crypto_internal_sha256_process
	.extern _Crypto_memset
	.public _Crypto_sha256_update_ret
	.extern _Crypto_memcpy
	.public _Crypto_sha256_finish_ret
	.public _Crypto_sha256

	.section .text, text
_Crypto_sha256_starts_ret:
	.stack _Crypto_sha256_starts_ret = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 70
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 75
	st.w r0, 0x00000004[r6]
	mov 0x6A09E667, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 78
	st.w r2, 0x00000008[r6]
	mov 0xBB67AE85, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 79
	st.w r2, 0x0000000C[r6]
	mov 0x3C6EF372, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 80
	st.w r2, 0x00000010[r6]
	mov 0xA54FF53A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 81
	st.w r2, 0x00000014[r6]
	mov 0x510E527F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 82
	st.w r2, 0x00000018[r6]
	mov 0x9B05688C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 83
	st.w r2, 0x0000001C[r6]
	mov 0x1F83D9AB, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 84
	st.w r2, 0x00000020[r6]
	mov 0x5BE0CD19, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 85
	st.w r2, 0x00000024[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 88
	jmp [r31]
_Crypto_internal_sha256_process:
	.stack _Crypto_internal_sha256_process = 300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 124
	prepare 0x00000001, 0x0000007C
	movea 0xFFFFFF54, r3, r3
	mov 0x00000000, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 136
	mov r2, r5
	shl 0x00000002, r5
	mov r3, r8
	add r5, r8
	add r6, r5
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000108[r8]
	add 0x00000001, r2
.BB.LABEL.2_2:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 134
	cmp 0x00000008, r2
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb17.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 141
	mov r2, r5
	shl 0x00000002, r5
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
	mov r3, r8
	add r5, r8
	st.w r9, 0x00000008[r8]
	add 0x00000001, r2
.BB.LABEL.2_5:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 139
	cmp 0x0000000F, r2
	bnh9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; bb64.bb1330_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov 0x00000000, r2
	jr .BB.LABEL.2_8
.BB.LABEL.2_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 146
	ld.w 0x00000120[r3], r5
	ld.w 0x0000011C[r3], r7
	xor r5, r7
	ld.w 0x00000118[r3], r8
	rotl 0x0000001A, r8, r9
	rotl 0x00000015, r8, r10
	rotl 0x00000007, r8, r11
	and r7, r8
	xor r8, r5
	xor r10, r9
	xor r11, r9
	ld.w 0x00000124[r3], r7
	add r9, r7
	add r5, r7
	mov r2, r5
	shl 0x00000002, r5
	mov #_K.1, r8
	add r5, r8
	ld.w 0x00000000[r8], r9
	add r9, r7
	mov r3, r9
	add r9, r5
	ld.w 0x00000008[r5], r9
	add r9, r7
	st.w r7, 0x00000000[r3]
	ld.w 0x00000108[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x0000010C[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x00000110[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000114[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x00000114[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x00000124[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 156
	ld.w 0x0000011C[r3], r7
	ld.w 0x00000118[r3], r9
	xor r7, r9
	ld.w 0x00000114[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x00000120[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x00000004[r8], r7
	add r7, r9
	ld.w 0x0000000C[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x00000124[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x00000108[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x0000010C[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000110[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x00000110[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x00000120[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 166
	ld.w 0x00000118[r3], r7
	ld.w 0x00000114[r3], r9
	xor r7, r9
	ld.w 0x00000110[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x0000011C[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x00000008[r8], r7
	add r7, r9
	ld.w 0x00000010[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x00000120[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x00000124[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x00000108[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x0000010C[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x0000010C[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x0000011C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 176
	ld.w 0x00000114[r3], r7
	ld.w 0x00000110[r3], r9
	xor r7, r9
	ld.w 0x0000010C[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x00000118[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x0000000C[r8], r7
	add r7, r9
	ld.w 0x00000014[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x0000011C[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x00000120[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x00000124[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000108[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x00000108[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x00000118[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 186
	ld.w 0x00000110[r3], r7
	ld.w 0x0000010C[r3], r9
	xor r7, r9
	ld.w 0x00000108[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x00000114[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x00000010[r8], r7
	add r7, r9
	ld.w 0x00000018[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x00000118[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x0000011C[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x00000120[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000124[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x00000124[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x00000114[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 196
	ld.w 0x0000010C[r3], r7
	ld.w 0x00000108[r3], r9
	xor r7, r9
	ld.w 0x00000124[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x00000110[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x00000014[r8], r7
	add r7, r9
	ld.w 0x0000001C[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x00000114[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x00000118[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x0000011C[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000120[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x00000120[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x00000110[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 206
	ld.w 0x00000108[r3], r7
	ld.w 0x00000124[r3], r9
	xor r7, r9
	ld.w 0x00000120[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x0000010C[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x00000018[r8], r7
	add r7, r9
	ld.w 0x00000020[r5], r7
	add r7, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x00000110[r3], r7
	rotl 0x0000001E, r7, r9
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	ld.w 0x00000114[r3], r12
	mov r7, r13
	and r12, r13
	or r12, r7
	ld.w 0x00000118[r3], r12
	and r7, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x0000011C[r3], r7
	ld.w 0x00000000[r3], r9
	add r9, r7
	st.w r7, 0x0000011C[r3]
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r9
	add r9, r7
	st.w r7, 0x0000010C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 216
	ld.w 0x00000124[r3], r7
	ld.w 0x00000120[r3], r9
	xor r7, r9
	ld.w 0x0000011C[r3], r10
	rotl 0x0000001A, r10, r11
	rotl 0x00000015, r10, r12
	rotl 0x00000007, r10, r13
	and r9, r10
	xor r10, r7
	xor r12, r11
	xor r13, r11
	ld.w 0x00000108[r3], r9
	add r11, r9
	add r7, r9
	ld.w 0x0000001C[r8], r7
	add r7, r9
	ld.w 0x00000024[r5], r5
	add r5, r9
	st.w r9, 0x00000000[r3]
	ld.w 0x0000010C[r3], r5
	rotl 0x0000001E, r5, r7
	rotl 0x00000013, r5, r8
	rotl 0x0000000A, r5, r9
	ld.w 0x00000110[r3], r10
	mov r5, r11
	and r10, r11
	or r10, r5
	ld.w 0x00000114[r3], r10
	and r5, r10
	or r10, r11
	xor r8, r7
	xor r9, r7
	add r11, r7
	st.w r7, 0x00000004[r3]
	ld.w 0x00000118[r3], r5
	ld.w 0x00000000[r3], r7
	add r7, r5
	st.w r5, 0x00000118[r3]
	ld.w 0x00000000[r3], r5
	ld.w 0x00000004[r3], r7
	add r7, r5
	st.w r5, 0x00000108[r3]
	add 0x00000008, r2
.BB.LABEL.2_8:	; bb1330
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 144
	cmp 0x0000000F, r2
	bnh17 .BB.LABEL.2_7
.BB.LABEL.2_9:	; bb1330.bb3484_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x00000010, r0, r2
	jr .BB.LABEL.2_11
.BB.LABEL.2_10:	; bb1337
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 230
	mov r2, r5
	shl 0x00000002, r5
	mov r3, r7
	add r5, r7
	ld.w 0xFFFFFFCC[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x00000000[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0xFFFFFFEC[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFC8[r7], r8
	add r8, r10
	mov #_K.1, r8
	add r8, r5
	ld.w 0x00000000[r5], r8
	ld.w 0x00000118[r3], r9
	ld.w 0x00000120[r3], r11
	ld.w 0x0000011C[r3], r12
	ld.w 0x00000124[r3], r13
	st.w r10, 0x00000008[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000108[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x0000010C[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x00000110[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000114[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x00000114[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x00000124[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 240
	ld.w 0xFFFFFFD0[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x00000004[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0xFFFFFFF0[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFCC[r7], r8
	add r8, r10
	ld.w 0x00000004[r5], r8
	ld.w 0x00000114[r3], r9
	ld.w 0x0000011C[r3], r11
	ld.w 0x00000118[r3], r12
	ld.w 0x00000120[r3], r13
	st.w r10, 0x0000000C[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000124[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x00000108[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x0000010C[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000110[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x00000110[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x00000120[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 250
	ld.w 0xFFFFFFD4[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x00000008[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0xFFFFFFF4[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFD0[r7], r8
	add r8, r10
	ld.w 0x00000008[r5], r8
	ld.w 0x00000110[r3], r9
	ld.w 0x00000118[r3], r11
	ld.w 0x00000114[r3], r12
	ld.w 0x0000011C[r3], r13
	st.w r10, 0x00000010[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000120[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x00000124[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x00000108[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x0000010C[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x0000010C[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x0000011C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 260
	ld.w 0xFFFFFFD8[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x0000000C[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0xFFFFFFF8[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFD4[r7], r8
	add r8, r10
	ld.w 0x0000000C[r5], r8
	ld.w 0x0000010C[r3], r9
	ld.w 0x00000114[r3], r11
	ld.w 0x00000110[r3], r12
	ld.w 0x00000118[r3], r13
	st.w r10, 0x00000014[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x0000011C[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x00000120[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x00000124[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000108[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x00000108[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x00000118[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 270
	ld.w 0xFFFFFFDC[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x00000010[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0xFFFFFFFC[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFD8[r7], r8
	add r8, r10
	ld.w 0x00000010[r5], r8
	ld.w 0x00000108[r3], r9
	ld.w 0x00000110[r3], r11
	ld.w 0x0000010C[r3], r12
	ld.w 0x00000114[r3], r13
	st.w r10, 0x00000018[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000118[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x0000011C[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x00000120[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000124[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x00000124[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x00000114[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 280
	ld.w 0xFFFFFFE0[r7], r8
	rotl 0x00000019, r8, r9
	rotl 0x0000000E, r8, r10
	xor r10, r9
	shr 0x00000003, r8
	xor r8, r9
	ld.w 0x00000014[r7], r8
	rotl 0x0000000F, r8, r10
	rotl 0x0000000D, r8, r11
	xor r11, r10
	shr 0x0000000A, r8
	xor r8, r10
	ld.w 0x00000000[r7], r8
	add r8, r10
	add r9, r10
	ld.w 0xFFFFFFDC[r7], r8
	add r8, r10
	ld.w 0x00000014[r5], r8
	ld.w 0x00000124[r3], r9
	ld.w 0x0000010C[r3], r11
	ld.w 0x00000108[r3], r12
	ld.w 0x00000110[r3], r13
	st.w r10, 0x0000001C[r7]
	xor r11, r12
	rotl 0x0000001A, r9, r14
	rotl 0x00000015, r9, r15
	rotl 0x00000007, r9, r16
	and r12, r9
	xor r9, r11
	xor r15, r14
	xor r16, r14
	add r14, r13
	add r11, r13
	add r8, r13
	add r10, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000114[r3], r8
	rotl 0x0000001E, r8, r9
	rotl 0x00000013, r8, r10
	rotl 0x0000000A, r8, r11
	ld.w 0x00000118[r3], r12
	mov r8, r13
	and r12, r13
	or r12, r8
	ld.w 0x0000011C[r3], r12
	and r8, r12
	or r12, r13
	xor r10, r9
	xor r11, r9
	add r13, r9
	st.w r9, 0x00000004[r3]
	ld.w 0x00000120[r3], r8
	ld.w 0x00000000[r3], r9
	add r9, r8
	st.w r8, 0x00000120[r3]
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r9
	add r9, r8
	st.w r8, 0x00000110[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 230
	movea 0xFFFFFFC8, r7, r8
	add 0x00000008, r7
	movea 0x00000108, r3, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 290
	ld.w 0x0000001C[r8], r10
	rotl 0x00000019, r10, r11
	rotl 0x0000000E, r10, r12
	xor r12, r11
	shr 0x00000003, r10
	xor r10, r11
	ld.w 0x00000010[r7], r10
	rotl 0x0000000F, r10, r12
	rotl 0x0000000D, r10, r13
	xor r13, r12
	shr 0x0000000A, r10
	xor r10, r12
	ld.w 0x0000003C[r8], r10
	add r10, r12
	add r11, r12
	ld.w 0x00000018[r8], r10
	add r10, r12
	ld.w 0x00000018[r9], r10
	ld.w 0x00000000[r9], r11
	ld.w 0x0000001C[r9], r13
	ld.w 0x00000004[r9], r14
	ld.w 0x00000018[r5], r15
	st.w r12, 0x00000018[r7]
	xor r11, r13
	rotl 0x0000001A, r10, r16
	rotl 0x00000015, r10, r17
	rotl 0x00000007, r10, r18
	and r13, r10
	xor r10, r11
	xor r17, r16
	xor r18, r16
	add r16, r14
	add r11, r14
	add r15, r14
	add r12, r14
	st.w r14, 0x00000000[r3]
	ld.w 0x0000000C[r9], r10
	ld.w 0x00000008[r9], r11
	rotl 0x0000001E, r11, r12
	rotl 0x00000013, r11, r13
	rotl 0x0000000A, r11, r14
	mov r11, r15
	and r10, r15
	or r10, r11
	ld.w 0x00000010[r9], r10
	and r11, r10
	or r10, r15
	xor r13, r12
	xor r14, r12
	add r15, r12
	st.w r12, 0x00000004[r3]
	ld.w 0x00000014[r9], r10
	ld.w 0x00000000[r3], r11
	add r11, r10
	st.w r10, 0x00000014[r9]
	ld.w 0x00000000[r3], r10
	ld.w 0x00000004[r3], r11
	add r11, r10
	st.w r10, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 300
	ld.w 0x00000020[r8], r10
	rotl 0x00000019, r10, r11
	rotl 0x0000000E, r10, r12
	xor r12, r11
	shr 0x00000003, r10
	xor r10, r11
	ld.w 0x00000014[r7], r10
	rotl 0x0000000F, r10, r12
	rotl 0x0000000D, r10, r13
	xor r13, r12
	shr 0x0000000A, r10
	xor r10, r12
	ld.w 0x00000000[r7], r10
	add r10, r12
	add r11, r12
	ld.w 0x0000001C[r8], r8
	add r8, r12
	ld.w 0x00000014[r9], r8
	ld.w 0x0000001C[r9], r10
	ld.w 0x00000018[r9], r11
	ld.w 0x00000000[r9], r13
	ld.w 0x0000001C[r5], r5
	st.w r12, 0x0000001C[r7]
	xor r10, r11
	rotl 0x0000001A, r8, r7
	rotl 0x00000015, r8, r14
	rotl 0x00000007, r8, r15
	and r11, r8
	xor r8, r10
	xor r14, r7
	xor r15, r7
	add r7, r13
	add r10, r13
	add r5, r13
	add r12, r13
	st.w r13, 0x00000000[r3]
	ld.w 0x00000008[r9], r5
	ld.w 0x00000004[r9], r7
	rotl 0x0000001E, r7, r8
	rotl 0x00000013, r7, r10
	rotl 0x0000000A, r7, r11
	mov r7, r12
	and r5, r12
	or r5, r7
	ld.w 0x0000000C[r9], r5
	and r7, r5
	or r5, r12
	xor r10, r8
	xor r11, r8
	add r12, r8
	st.w r8, 0x00000004[r3]
	ld.w 0x00000010[r9], r5
	ld.w 0x00000000[r3], r7
	add r7, r5
	st.w r5, 0x00000010[r9]
	ld.w 0x00000000[r3], r5
	ld.w 0x00000004[r3], r7
	add r7, r5
	st.w r5, 0x00000000[r9]
	add 0x00000008, r2
.BB.LABEL.2_11:	; bb3484
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x00000040, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 228
	cmp r5, r2
	bl17 .BB.LABEL.2_10
.BB.LABEL.2_12:	; bb3484.bb3505_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; bb3490
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 313
	mov r2, r5
	shl 0x00000002, r5
	mov r6, r7
	add r5, r7
	ld.w 0x00000008[r7], r8
	mov r3, r9
	add r9, r5
	ld.w 0x00000108[r5], r5
	add r5, r8
	st.w r8, 0x00000008[r7]
	add 0x00000001, r2
.BB.LABEL.2_14:	; bb3505
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 312
	cmp 0x00000008, r2
	bl9 .BB.LABEL.2_13
.BB.LABEL.2_15:	; bb3510
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x00000128, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 315
	jarl _Crypto_memset, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 317
	movea 0x000000AC, r3, r3
	dispose 0x0000007C, 0x00000001, [r31]
_Crypto_sha256_update_ret:
	.stack _Crypto_sha256_update_ret = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 323
	prepare 0x00000479, 0x00000000
	addi 0x00000000, r8, r20
	mov r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 332
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.exit_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_15
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 337
	ld.w 0x00000000[r22], r2
	andi 0x0000003F, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 340
	add r20, r2
	st.w r2, 0x00000000[r22]
	movea 0x00000040, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 338
	sub r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 343
	cmp r20, r2
	bnc9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 345
	ld.w 0x00000004[r22], r2
	add 0x00000001, r2
	st.w r2, 0x00000004[r22]
.BB.LABEL.3_4:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 348
	cmp 0x00000000, r6
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	cmp r20, r23
	bnh9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_break_bb46.bb106.preheader_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 350
	movea 0x00000028, r22, r24
	add r24, r6
	mov r21, r7
	mov r23, r8
	jarl _Crypto_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 352
	mov r22, r6
	mov r24, r7
	jarl _Crypto_internal_sha256_process, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_8:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 358
	sub r23, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 357
	add r23, r21
	mov 0x00000000, r6
.BB.LABEL.3_9:	; bb106.preheader
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov r6, r23
	br9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 364
	mov r22, r6
	mov r21, r7
	jarl _Crypto_internal_sha256_process, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_11:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 370
	movea 0xFFFFFFC0, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 369
	movea 0x00000040, r21, r21
.BB.LABEL.3_12:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov r10, r24
	movea 0x0000003F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 362
	cmp r2, r20
	bh9 .BB.LABEL.3_10
.BB.LABEL.3_13:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 373
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_16
.BB.LABEL.3_14:	; bb111.exit_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov r24, r10
.BB.LABEL.3_15:	; exit
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 378
	zxb r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.3_16:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 374
	add r23, r22
	movea 0x00000028, r22, r6
	mov r21, r7
	mov r20, r8
	jarl _Crypto_memcpy, r31
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x00000479, [r31]
_Crypto_sha256_finish_ret:
	.stack _Crypto_sha256_finish_ret = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 383
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 391
	ld.w 0x00000000[r6], r2
	andi 0x0000003F, r2, r2
	mov r2, r5
	add r6, r5
	movea 0xFFFFFF80, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 393
	st.b r8, 0x00000028[r5]
	addi 0x00000001, r2, r8
	movea 0x00000038, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 395
	cmp r9, r8
	movea 0x00000029, r5, r5
	mov r7, r20
	mov r6, r21
	mov r5, r6
	bh9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x00000037, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 398
	sub r2, r7
	br9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x0000003F, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 403
	sub r2, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 404
	movea 0x00000028, r21, r22
	mov r21, r6
	mov r22, r7
	jarl _Crypto_internal_sha256_process, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	movea 0x00000038, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 408
	mov r22, r6
.BB.LABEL.4_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 414
	ld.w 0x00000004[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 417
	mov r2, r5
	shr 0x00000015, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 414
	ld.w 0x00000000[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 417
	st.b r5, 0x00000060[r21]
	mov r2, r5
	shr 0x0000000D, r5
	st.b r5, 0x00000061[r21]
	mov r2, r5
	shr 0x00000005, r5
	st.b r5, 0x00000062[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 414
	mov r6, r5
	shr 0x0000001D, r5
	shl 0x00000003, r2
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 417
	st.b r5, 0x00000063[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 418
	mov r6, r2
	shr 0x00000015, r2
	st.b r2, 0x00000064[r21]
	mov r6, r2
	shr 0x0000000D, r2
	st.b r2, 0x00000065[r21]
	mov r6, r2
	shr 0x00000005, r2
	st.b r2, 0x00000066[r21]
	shl 0x00000003, r6
	st.b r6, 0x00000067[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 420
	movea 0x00000028, r21, r7
	mov r21, r6
	jarl _Crypto_internal_sha256_process, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.4_6
.BB.LABEL.4_5:	; bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 427
	ld.w 0x00000008[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r20]
	ld.w 0x00000008[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r20]
	ld.w 0x00000008[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r20]
	ld.w 0x00000008[r21], r2
	st.b r2, 0x00000003[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 428
	ld.w 0x0000000C[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r20]
	ld.w 0x0000000C[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r20]
	ld.w 0x0000000C[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r20]
	ld.w 0x0000000C[r21], r2
	st.b r2, 0x00000007[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 429
	ld.w 0x00000010[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000008[r20]
	ld.w 0x00000010[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000009[r20]
	ld.w 0x00000010[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000A[r20]
	ld.w 0x00000010[r21], r2
	st.b r2, 0x0000000B[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 430
	ld.w 0x00000014[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000C[r20]
	ld.w 0x00000014[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000D[r20]
	ld.w 0x00000014[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000E[r20]
	ld.w 0x00000014[r21], r2
	st.b r2, 0x0000000F[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 431
	ld.w 0x00000018[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000010[r20]
	ld.w 0x00000018[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000011[r20]
	ld.w 0x00000018[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x00000012[r20]
	ld.w 0x00000018[r21], r2
	st.b r2, 0x00000013[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 432
	ld.w 0x0000001C[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000014[r20]
	ld.w 0x0000001C[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000015[r20]
	ld.w 0x0000001C[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x00000016[r20]
	ld.w 0x0000001C[r21], r2
	st.b r2, 0x00000017[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 433
	ld.w 0x00000020[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x00000018[r20]
	ld.w 0x00000020[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x00000019[r20]
	ld.w 0x00000020[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x0000001A[r20]
	ld.w 0x00000020[r21], r2
	st.b r2, 0x0000001B[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 434
	ld.w 0x00000024[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x0000001C[r20]
	ld.w 0x00000024[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x0000001D[r20]
	ld.w 0x00000024[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x0000001E[r20]
	ld.w 0x00000024[r21], r2
	st.b r2, 0x0000001F[r20]
.BB.LABEL.4_6:	; exit
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 437
	dispose 0x00000000, 0x00000071, [r31]
_Crypto_sha256:
	.stack _Crypto_sha256 = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 443
	prepare 0x00000079, 0x00000068
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r3, r23
	movea 0x00000068, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 451
	mov r23, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 452
	mov r23, r6
	jarl _Crypto_sha256_starts_ret, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 454
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 456
	mov r20, r7
	mov r21, r8
	jarl _Crypto_sha256_update_ret, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 457
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 459
	mov r22, r7
	jarl _Crypto_sha256_finish_ret, r31
.BB.LABEL.5_3:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Hash/sha256/sha256.c", 463
	dispose 0x00000068, 0x00000079, [r31]
	.section .data, data
	.align 4
_K.1:
	.dw 0x428A2F98,0x71374491,0xB5C0FBCF,0xE9B5DBA5,0x3956C25B,0x59F111F1,0x923F82A4,0xAB1C5ED5
	.dw 0xD807AA98,0x12835B01,0x243185BE,0x550C7DC3,0x72BE5D74,0x80DEB1FE,0x9BDC06A7,0xC19BF174
	.dw 0xE49B69C1,0xEFBE4786,0x0FC19DC6,0x240CA1CC,0x2DE92C6F,0x4A7484AA,0x5CB0A9DC,0x76F988DA
	.dw 0x983E5152,0xA831C66D,0xB00327C8,0xBF597FC7,0xC6E00BF3,0xD5A79147,0x06CA6351,0x14292967
	.dw 0x27B70A85,0x2E1B2138,0x4D2C6DFC,0x53380D13,0x650A7354,0x766A0ABB,0x81C2C92E,0x92722C85
	.dw 0xA2BFE8A1,0xA81A664B,0xC24B8B70,0xC76C51A3,0xD192E819,0xD6990624,0xF40E3585,0x106AA070
	.dw 0x19A4C116,0x1E376C08,0x2748774C,0x34B0BCB5,0x391C0CB3,0x4ED8AA4A,0x5B9CCA4F,0x682E6FF3
	.dw 0x748F82EE,0x78A5636F,0x84C87814,0x8CC70208,0x90BEFFFA,0xA4506CEB,0xBEF9A3F7,0xC67178F2
