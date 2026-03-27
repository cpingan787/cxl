#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\vss\Vss_Adapter.c -oDefaultBuild\Vss_Adapter.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_fe927d4b96604923ae0a86f83563b3a2q4gppidn.cyz
#@	compiled at Fri Mar 27 09:50:02 2026

	.file "..\..\Bsw\Crypto\CRYPTO\vss\Vss_Adapter.c"

	$reg_mode 32
	.dbl_size 8

	.public _VssAdapter_InitSoft
	.public _VssAdapter_SM4_Challenge_Response
	.extern _Crypto_SM4_Challenge_Response
	.public _VssAdapter_Sm4CMac
	.extern _Crypto_SM4_CMAC
	.public _VssAdapter_Sm3Calc
	.extern _Crypto_SM3_CALC
	.public _VssAdapter_Sm3Init
	.extern _Crypto_SM3_Init
	.public _VssAdapter_Sm3Update
	.extern _Crypto_SM3_Update
	.public _VssAdapter_Sm3Final
	.extern _Crypto_SM3_Final
	.public _VssAdapter_SHA256_CALC
	.extern _Crypto_SHA256_CALC
	.public _VssAdapter_SHA256_Init
	.extern _Crypto_SHA256_Init
	.public _VssAdapter_SHA256_Update
	.extern _Crypto_SHA256_Update
	.public _VssAdapter_SHA256_Final
	.extern _Crypto_SHA256_Final
	.public _VssAdapter_SM2_Verify
	.extern _Crypto_SM2_Verify
	.public _VssAdapter_ECC_Verify
	.extern _Crypto_ECC_Verify
	.public _VssAdapter_CRC16_CCITT_False
	.extern _Crypto_CcittFalseCrc16
	.public _VssAdapter_CRC16_CCITT
	.extern _Crypto_CcittCrc16
	.public _VssAdapter_CRC32_CALC
	.extern _Crypto_Crc32Init
	.extern _Crypto_Crc32
	.extern _Crypto_Crc32FinalResult
	.public _VssAdapter_Crc32Init
	.public _VssAdapter_Crc32
	.public _VssAdapter_Crc32FinalResult
	.public _VssAdapter_CRC8
	.extern _Crypto_Crc8

	.section .text, text
_VssAdapter_InitSoft:
	.stack _VssAdapter_InitSoft = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 25
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 28
	jmp [r31]
_VssAdapter_SM4_Challenge_Response:
	.stack _VssAdapter_SM4_Challenge_Response = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 39
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 41
	jarl _Crypto_SM4_Challenge_Response, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 43
	cmp 0xFFFFFFFF, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 48
	shl 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 49
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm4CMac:
	.stack _VssAdapter_Sm4CMac = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 63
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 65
	jarl _Crypto_SM4_CMAC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 66
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 70
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 71
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Calc:
	.stack _VssAdapter_Sm3Calc = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 82
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 84
	jarl _Crypto_SM3_CALC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 85
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 89
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 90
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Init:
	.stack _VssAdapter_Sm3Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 100
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 102
	jarl _Crypto_SM3_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Update:
	.stack _VssAdapter_Sm3Update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 113
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 115
	jarl _Crypto_SM3_Update, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Final:
	.stack _VssAdapter_Sm3Final = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 126
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 128
	jarl _Crypto_SM3_Final, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_CALC:
	.stack _VssAdapter_SHA256_CALC = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 140
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 142
	jarl _Crypto_SHA256_CALC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 143
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 147
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 148
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Init:
	.stack _VssAdapter_SHA256_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 158
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 160
	jarl _Crypto_SHA256_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Update:
	.stack _VssAdapter_SHA256_Update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 173
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 175
	jarl _Crypto_SHA256_Update, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Final:
	.stack _VssAdapter_SHA256_Final = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 186
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 188
	jarl _Crypto_SHA256_Final, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SM2_Verify:
	.stack _VssAdapter_SM2_Verify = 204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 203
	prepare 0x00000779, 0x0000007C
	movea 0xFFFFFFD0, r3, r3
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000020, r0, r24
	movea 0x0000008C, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 207
	mov #.STR.1, r2
	mov r24, r5
	add r25, r5
	mov r25, r6
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry
	ld.b 0x00000000[r2], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r2
	add 0x00000001, r6
.BB.LABEL.12_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 0
	movea 0x00000024, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 217
	mov r26, r6
	jarl _Crypto_SM3_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 218
	mov r26, r6
	mov r25, r7
	mov r24, r8
	jarl _Crypto_SM3_Update, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 219
	mov r26, r6
	mov r20, r7
	mov r21, r8
	jarl _Crypto_SM3_Update, r31
	movea 0x00000004, r3, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 220
	mov r26, r6
	mov r20, r7
	jarl _Crypto_SM3_Final, r31
	ld.w 0x000000CC[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 222
	st.w r2, 0x00000000[r3]
	mov r20, r6
	mov r24, r7
	mov r22, r8
	mov r23, r9
	jarl _Crypto_SM2_Verify, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 223
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 228
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 229
	movea 0x00000030, r3, r3
	dispose 0x0000007C, 0x00000779, [r31]
_VssAdapter_ECC_Verify:
	.stack _VssAdapter_ECC_Verify = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 243
	prepare 0x00000001, 0x00000004
	ld.w 0x00000008[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 247
	st.w r2, 0x00000000[r3]
	jarl _Crypto_ECC_Verify, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 248
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 253
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 254
	dispose 0x00000004, 0x00000001, [r31]
_VssAdapter_CRC16_CCITT_False:
	.stack _VssAdapter_CRC16_CCITT_False = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 266
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 268
	mov r8, r6
	mov r2, r7
	mov r5, r8
	jarl _Crypto_CcittFalseCrc16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 269
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC16_CCITT:
	.stack _VssAdapter_CRC16_CCITT = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 281
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 283
	mov r8, r6
	mov r2, r7
	mov r5, r8
	jarl _Crypto_CcittCrc16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 284
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC32_CALC:
	.stack _VssAdapter_CRC32_CALC = 1040
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 296
	prepare 0x00000071, 0x0000007C
	movea 0xFFFFFC7C, r3, r3
	mov r6, r20
	mov r7, r21
	mov r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 302
	mov r22, r6
	mov r8, r7
	jarl _Crypto_Crc32Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 303
	mov r22, r6
	mov r10, r7
	mov r20, r8
	mov r21, r9
	jarl _Crypto_Crc32, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 305
	mov r22, r6
	mov r10, r7
	jarl _Crypto_Crc32FinalResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 306
	movea 0x00000384, r3, r3
	dispose 0x0000007C, 0x00000071, [r31]
_VssAdapter_Crc32Init:
	.stack _VssAdapter_Crc32Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 315
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 317
	jarl _Crypto_Crc32Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 318
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Crc32:
	.stack _VssAdapter_Crc32 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 329
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 331
	jarl _Crypto_Crc32, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 332
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Crc32FinalResult:
	.stack _VssAdapter_Crc32FinalResult = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 341
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 343
	jarl _Crypto_Crc32FinalResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 344
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC8:
	.stack _VssAdapter_CRC8 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 357
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 359
	mov r8, r6
	mov r9, r7
	mov r2, r8
	mov r5, r9
	jarl _Crypto_Crc8, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/vss/Vss_Adapter.c", 360
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
.STR.1:
	.db 0x8D,0x17,0x93,0xB0,0x94,0x7E,0x70,0x98,0x86,0x44,0x15,0x77,0xEF,0x57,0xEB,0x2F
	.db 0xC4,0x97,0x32,0xDD,0xD2,0xC2,0x98,0x34,0x7F,0x94,0x58,0x98,0xCF,0x15,0xA2,0xFD
