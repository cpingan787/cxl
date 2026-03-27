#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CryInterface\CryIf.c -oDefaultBuild\CryIf.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_1573e368487d450f9ecc8ff7e414f862c5csqz0i.vx4
#@	compiled at Fri Mar 27 09:50:48 2026

	.file "..\..\Bsw\Crypto\CryInterface\CryIf.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CryIf_KeyCfg
	.extern _CryIf_DriverApi
	.extern _Det_ReportError
	.public _CryIf_Init
	.public _CryIf_ProcessJob
	.public _CryIf_CancelJob
	.public _CryIf_KeyElementSet
	.public _CryIf_KeySetValid
	.public _CryIf_KeyElementGet
	.public _CryIf_KeyElementCopy
	.public _CryIf_KeyElementCopyPartial
	.public _CryIf_KeyCopy
	.public _CryIf_RandomSeed
	.public _CryIf_KeyGenerate
	.public _CryIf_KeyDerive
	.public _CryIf_KeyExchangeCalcPubVal
	.public _CryIf_KeyExchangeCalcSecret
	.public _CryIf_CallbackNotification
	.extern _Csm_CallbackNotification

	.section .text, text
_CRYIF_DET_REPORT.1:
	.stack _CRYIF_DET_REPORT.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 74
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000070, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 76
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_Init:
	.stack _CryIf_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 123
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 127
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 130
	jarl _CRYIF_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 138
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_CryIf_InitStatus.1)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_ProcessJob:
	.stack _CryIf_ProcessJob = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 198
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 205
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 202
	ld.w 0x0000004C[r7], r2
	mov r7, r20
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 205
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.3_2:	; if_then_bb
	mov 0x00000003, r6
.BB.LABEL.3_3:	; if_then_bb
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 281
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 210
	cmp 0x00000000, r21
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 212
	mov r6, r7
	br9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 215
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.3_2
.BB.LABEL.3_8:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 224
	ld.w 0x00000004[r2], r5
	ld.w 0x00000004[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 225
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_else_bb23.if_break_bb230_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.3_25
.BB.LABEL.3_10:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 229
	addi 0xFFFFFFFF, r22, r23
	cmp 0x00000002, r23
	bl9 .BB.LABEL.3_27
.BB.LABEL.3_11:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	cmp 0x00000003, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_12:	; if_else_bb34
	cmp 0x00000004, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_13:	; if_else_bb34
	cmp 0x00000005, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_14:	; if_else_bb34
	cmp 0x00000006, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_15:	; if_else_bb34
	cmp 0x0000000B, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_16:	; if_else_bb34
	cmp 0x00000007, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_17:	; if_else_bb34
	cmp 0x00000008, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_18:	; if_else_bb34
	addi 0xFFFFFFED, r22, r0
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_19:	; if_else_bb34
	cmp 0x0000000C, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_20:	; if_else_bb34
	cmp 0x0000000D, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_21:	; if_else_bb34
	cmp 0x0000000E, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_22:	; if_else_bb34
	cmp 0x0000000F, r22
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_23:	; if_else_bb34
	addi 0xFFFFFFF0, r22, r0
	bz9 .BB.LABEL.3_27
.BB.LABEL.3_24:	; if_else_bb34.if_break_bb230_crit_edge
	mov 0x00000001, r23
.BB.LABEL.3_25:	; if_break_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 268
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.3_34
.BB.LABEL.3_26:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 276
	movhi HIGHW1(#_CryIf_DriverApi), r0, r23
	ld.w LOWW(#_CryIf_DriverApi)[r23], r23
	mov r21, r6
	mov r20, r7
	jarl [r23], r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_27:	; if_then_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 237
	ld.w 0x00000008[r2], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.3_29
.BB.LABEL.3_28:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 240
	mov r6, r7
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r23
	br9 .BB.LABEL.3_30
.BB.LABEL.3_29:	; if_else_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 245
	jarl _CryIf_GetDriverKeyId.1, r31
	st.w r10, 0x00000054[r20]
	mov 0x00000000, r23
.BB.LABEL.3_30:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 249
	cmp 0x0000000E, r22
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_31:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 251
	ld.w 0x00000048[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_33
.BB.LABEL.3_32:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 254
	mov r6, r7
	jarl _CRYIF_DET_REPORT.1, r31
	br9 .BB.LABEL.3_25
.BB.LABEL.3_33:	; if_else_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 259
	ld.w 0x0000005C[r20], r6
	jarl _CryIf_GetDriverKeyId.1, r31
	st.w r10, 0x0000005C[r20]
	br9 .BB.LABEL.3_9
.BB.LABEL.3_34:	; if_break_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 281
	mov r23, r10
	dispose 0x00000000, 0x00000079, [r31]
_CryIf_CancelJob:
	.stack _CryIf_CancelJob = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 296
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 301
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 306
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
.BB.LABEL.4_4:	; if_then_bb11
	mov 0x0000000E, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 329
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 311
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.4_4
.BB.LABEL.4_7:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 325
	movhi HIGHW1(#_CryIf_DriverApi+0x00000004), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000004)[r2], r2
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_KeyElementSet:
	.stack _CryIf_KeyElementSet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 353
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 362
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 367
	cmp 0x00000000, r6
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
.BB.LABEL.5_4:	; if_then_bb14
	mov 0x00000004, r6
.BB.LABEL.5_5:	; if_then_bb14
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 403
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_6:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 372
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.5_4
.BB.LABEL.5_8:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 377
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 379
	mov r6, r7
	br9 .BB.LABEL.5_5
.BB.LABEL.5_10:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 381
	cmp 0x00000001, r22
	bh9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 398
	movhi HIGHW1(#_CryIf_DriverApi+0x00000008), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000008)[r2], r23
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl [r23], r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_12:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 403
	dispose 0x00000000, 0x00000079, [r31]
_CryIf_KeySetValid:
	.stack _CryIf_KeySetValid = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 420
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 425
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.6_2:	; if_then_bb
	mov 0x00000005, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 450
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 430
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.6_2
.BB.LABEL.6_5:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 446
	movhi HIGHW1(#_CryIf_DriverApi+0x0000000C), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x0000000C)[r2], r20
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	jarl [r20], r31
	dispose 0x00000000, 0x00000041, [r31]
_CryIf_KeyElementGet:
	.stack _CryIf_KeyElementGet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 480
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 489
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.7_7
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 494
	cmp 0x00000000, r6
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.7_7
.BB.LABEL.7_4:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 499
	cmp 0x00000000, r21
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 504
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
.BB.LABEL.7_7:	; if_then_bb26
	mov 0x00000006, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 541
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_8:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 509
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.7_7
.BB.LABEL.7_10:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 513
	cmp 0x00000001, r22
	bh9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 533
	movhi HIGHW1(#_CryIf_DriverApi+0x00000010), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000010)[r2], r23
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	mov r22, r7
	mov r21, r8
	mov r20, r9
	jarl [r23], r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_12:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 541
	dispose 0x00000000, 0x00000079, [r31]
_CryIf_KeyElementCopy:
	.stack _CryIf_KeyElementCopy = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 564
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 573
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.8_2:	; if_then_bb
	mov 0x0000000F, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 662
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 578
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 583
	cmp 0x00000000, r8
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.8_2
.BB.LABEL.8_6:	; if_else_bb21
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 587
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_KeyElementCopyPartial:
	.stack _CryIf_KeyElementCopyPartial = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 692
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 709
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	ld.w 0x0000000C[r3], r2
	ld.w 0x00000008[r3], r5
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.9_2:	; if_then_bb
	movea 0x00000012, r0, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 734
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 714
	cmp 0x00000001, r7
	bh9 .BB.LABEL.9_7
.BB.LABEL.9_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_5:	; if_else_bb
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_else_bb
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb48
	mov 0x00000003, r7
	br9 .BB.LABEL.9_2
.BB.LABEL.9_8:	; bb74
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 734
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_KeyCopy:
	.stack _CryIf_KeyCopy = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 760
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 765
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.10_2:	; if_then_bb
	movea 0x00000010, r0, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 804
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 771
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb21
	mov 0x00000003, r7
	br9 .BB.LABEL.10_2
.BB.LABEL.10_6:	; bb48
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 804
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_RandomSeed:
	.stack _CryIf_RandomSeed = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 824
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 832
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.11_6
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 837
	cmp 0x00000000, r6
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.11_6
.BB.LABEL.11_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 842
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
.BB.LABEL.11_6:	; if_then_bb18
	mov 0x00000007, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 873
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.11_7:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 847
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.11_6
.BB.LABEL.11_9:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 866
	movhi HIGHW1(#_CryIf_DriverApi+0x00000020), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000020)[r2], r22
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	mov r21, r7
	mov r20, r8
	jarl [r22], r31
	dispose 0x00000000, 0x00000071, [r31]
_CryIf_KeyGenerate:
	.stack _CryIf_KeyGenerate = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 891
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 896
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.12_2:	; if_then_bb
	mov 0x00000008, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 921
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 901
	cmp 0x00000000, r6
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.12_2
.BB.LABEL.12_5:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 917
	movhi HIGHW1(#_CryIf_DriverApi+0x00000024), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000024)[r2], r20
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	jarl [r20], r31
	dispose 0x00000000, 0x00000041, [r31]
_CryIf_KeyDerive:
	.stack _CryIf_KeyDerive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 941
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 946
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.13_2:	; if_then_bb
	mov 0x00000009, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 980
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 952
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb21
	mov 0x00000003, r7
	br9 .BB.LABEL.13_2
.BB.LABEL.13_6:	; bb48
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 980
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_KeyExchangeCalcPubVal:
	.stack _CryIf_KeyExchangeCalcPubVal = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 996
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1004
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.14_7
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1009
	cmp 0x00000000, r6
	bz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.14_7
.BB.LABEL.14_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1015
	cmp 0x00000000, r21
	bz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_6:	; if_then_bb27
	mov 0x00000002, r7
.BB.LABEL.14_7:	; if_then_bb27
	mov 0x0000000A, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1046
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.14_8:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1020
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.14_7
.BB.LABEL.14_10:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1039
	movhi HIGHW1(#_CryIf_DriverApi+0x0000002C), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x0000002C)[r2], r22
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	mov r21, r7
	mov r20, r8
	jarl [r22], r31
	dispose 0x00000000, 0x00000071, [r31]
_CryIf_KeyExchangeCalcSecret:
	.stack _CryIf_KeyExchangeCalcSecret = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1065
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1073
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.15_6
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1078
	cmp 0x00000000, r6
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000003, r7
	br9 .BB.LABEL.15_6
.BB.LABEL.15_4:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1083
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.15_7
.BB.LABEL.15_5:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
.BB.LABEL.15_6:	; if_then_bb18
	mov 0x0000000B, r6
	jarl _CRYIF_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1114
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.15_7:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1088
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.15_6
.BB.LABEL.15_9:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1107
	movhi HIGHW1(#_CryIf_DriverApi+0x00000030), r0, r2
	ld.w LOWW(#_CryIf_DriverApi+0x00000030)[r2], r22
	jarl _CryIf_GetDriverKeyId.1, r31
	mov r10, r6
	mov r21, r7
	mov r20, r8
	jarl [r22], r31
	dispose 0x00000000, 0x00000071, [r31]
_CryIf_CallbackNotification:
	.stack _CryIf_CallbackNotification = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1135
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1141
	movhi HIGHW1(#_CryIf_InitStatus.1), r0, r2
	ld.bu LOWW(#_CryIf_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r7
.BB.LABEL.16_2:	; if_then_bb
	mov 0x0000000D, r6
	jarl _CRYIF_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1156
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1146
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.16_2
.BB.LABEL.16_5:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1154
	jarl _Csm_CallbackNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
_CryIf_GetDriverKeyId.1:
	.stack _CryIf_GetDriverKeyId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1183
	mov 0x00000000, r2
	br9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1190
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_CryIf_KeyCfg, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	cmp r5, r6
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1192
	zxb r2
	shl 0x00000003, r2
	mov #_CryIf_KeyCfg, r5
	add r2, r5
	ld.w 0x00000004[r5], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1193
	jmp [r31]
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	add 0x00000001, r2
.BB.LABEL.17_4:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1188
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.17_1
.BB.LABEL.17_5:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CryInterface/CryIf.c", 1197
	jmp [r31]
	.section .bss, bss
_CryIf_InitStatus.1:
	.ds (1)
