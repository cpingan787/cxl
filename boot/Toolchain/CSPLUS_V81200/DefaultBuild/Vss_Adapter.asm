#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\vss\Vss_Adapter.c -oDefaultBuild\Vss_Adapter.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ee52dc5a6e124b668f1fa11d4235b56dewpczzk0.c2a
#@	compiled at Thu Jul 16 13:41:44 2026

	.file "..\..\Bsw\SystemServices\vss\Vss_Adapter.c"

	$reg_mode 22
	.dbl_size 4

	.public _sm2_za_value, 32
	.public _VssAdapter_InitSoft
	.public _VssAdapter_Sm4Calc
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
	.extern _memset
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
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 36
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 39
	jmp [r31]
_VssAdapter_Sm4Calc:
	.stack _VssAdapter_Sm4Calc = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 52
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 55
	jmp [r31]
_VssAdapter_Sm4CMac:
	.stack _VssAdapter_Sm4CMac = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 68
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 71
	jarl32 _Crypto_SM4_CMAC, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 72
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 76
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 77
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Calc:
	.stack _VssAdapter_Sm3Calc = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 88
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 91
	jarl32 _Crypto_SM3_CALC, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 92
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 96
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 97
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Init:
	.stack _VssAdapter_Sm3Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 107
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 110
	jarl32 _Crypto_SM3_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Update:
	.stack _VssAdapter_Sm3Update = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 123
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 126
	jarl32 _Crypto_SM3_Update, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Sm3Final:
	.stack _VssAdapter_Sm3Final = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 137
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 140
	jarl32 _Crypto_SM3_Final, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_CALC:
	.stack _VssAdapter_SHA256_CALC = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 152
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 155
	jarl32 _Crypto_SHA256_CALC, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 156
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 160
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 161
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Init:
	.stack _VssAdapter_SHA256_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 174
	jarl32 _Crypto_SHA256_Init, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Update:
	.stack _VssAdapter_SHA256_Update = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 187
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 190
	jarl32 _Crypto_SHA256_Update, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SHA256_Final:
	.stack _VssAdapter_SHA256_Final = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 201
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 204
	jarl32 _Crypto_SHA256_Final, r31
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_SM2_Verify:
	.stack _VssAdapter_SM2_Verify = 172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 219
	prepare 0x00000B87, 0x0000007C
	movea 0xFFFFFFEC, r3, r3
	mov r6, r25
	mov r7, r26
	mov r8, r5
	st.w r5, 0x00000004[r3]
	mov r9, r27
	movea 0x00000020, r0, r28
	movea 0x00000008, r3, r29
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 223
	mov r28, r5
	add r29, r5
	mov r29, r6
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry
	st.b r7, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.12_2:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; entry
	st.b r0, 0x00000008[r3]
	movea 0x00000028, r3, r30
	movea 0x00000068, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 226
	mov r30, r6
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 227
	mov r30, r6
	jarl32 _Crypto_SM3_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 229
	mov #_sm2_za_value, r7
	mov r30, r6
	mov r28, r8
	jarl32 _Crypto_SM3_Update, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 231
	mov r30, r6
	mov r25, r7
	mov r26, r8
	jarl32 _Crypto_SM3_Update, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 233
	mov r30, r6
	mov r29, r7
	jarl32 _Crypto_SM3_Final, r31
	ld.w 0x000000AC[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 236
	st.w r5, 0x00000000[r3]
	mov r29, r6
	mov r28, r7
	ld.w 0x00000004[r3], r5
	mov r5, r8
	mov r27, r9
	jarl32 _Crypto_SM2_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 237
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 242
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 243
	movea 0x00000014, r3, r3
	dispose 0x0000007C, 0x00000B87, [r31]
_VssAdapter_ECC_Verify:
	.stack _VssAdapter_ECC_Verify = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 257
	prepare 0x00000001, 0x00000004
	ld.w 0x00000008[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 262
	st.w r5, 0x00000000[r3]
	jarl32 _Crypto_ECC_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 263
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 268
	cmov 0x0000000A, 0x00000008, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 269
	dispose 0x00000004, 0x00000001, [r31]
_VssAdapter_CRC16_CCITT_False:
	.stack _VssAdapter_CRC16_CCITT_False = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 281
	prepare 0x00000001, 0x00000000
	mov r6, r5
	mov r7, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 284
	mov r8, r6
	mov r5, r7
	mov r9, r8
	jarl32 _Crypto_CcittFalseCrc16, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 285
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC16_CCITT:
	.stack _VssAdapter_CRC16_CCITT = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 297
	prepare 0x00000001, 0x00000000
	mov r6, r5
	mov r7, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 300
	mov r8, r6
	mov r5, r7
	mov r9, r8
	jarl32 _Crypto_CcittCrc16, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 301
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC32_CALC:
	.stack _VssAdapter_CRC32_CALC = 1040
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 313
	prepare 0x00000381, 0x0000007C
	movea 0xFFFFFC7C, r3, r3
	mov r6, r25
	mov r7, r26
	mov r3, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 320
	mov r27, r6
	mov r8, r7
	jarl32 _Crypto_Crc32Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 322
	mov r27, r6
	mov r10, r7
	mov r25, r8
	mov r26, r9
	jarl32 _Crypto_Crc32, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 324
	mov r27, r6
	mov r10, r7
	jarl32 _Crypto_Crc32FinalResult, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 325
	movea 0x00000384, r3, r3
	dispose 0x0000007C, 0x00000381, [r31]
_VssAdapter_Crc32Init:
	.stack _VssAdapter_Crc32Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 334
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 337
	jarl32 _Crypto_Crc32Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 338
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Crc32:
	.stack _VssAdapter_Crc32 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 349
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 352
	jarl32 _Crypto_Crc32, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 353
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_Crc32FinalResult:
	.stack _VssAdapter_Crc32FinalResult = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 362
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 365
	jarl32 _Crypto_Crc32FinalResult, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 366
	dispose 0x00000000, 0x00000001, [r31]
_VssAdapter_CRC8:
	.stack _VssAdapter_CRC8 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 379
	prepare 0x00000001, 0x00000000
	mov r6, r5
	mov r7, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 382
	mov r8, r6
	mov r9, r7
	mov r5, r8
	mov r10, r9
	jarl32 _Crypto_Crc8, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss_Adapter.c", 383
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
_sm2_za_value:
	.db 0xA2,0x2C,0x59,0x36,0x10,0x64,0xB2,0x1B,0xC9,0x77,0xA0,0x03,0x20,0x92,0xE7,0x11
	.db 0x14,0x72,0x09,0x3A,0xD5,0xA7,0xF3,0x9E,0x42,0xB6,0xED,0x91,0x47,0x8B,0x04,0x73
