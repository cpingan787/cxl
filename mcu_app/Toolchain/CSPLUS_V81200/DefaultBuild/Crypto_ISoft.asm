#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CRYPTO\Crypto_ISoft.c -oDefaultBuild\Crypto_ISoft.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_767ea3cad6164bd7afaee0d381feab81sz0p1aj3.rne
#@	compiled at Fri Mar 27 09:50:50 2026

	.file "..\..\Bsw\Crypto\CRYPTO\Crypto_ISoft.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Crypto_Key
	.public _Crypto_62_QueueFilledSize, 4
	.public _Crypto_JobTempBuf, 96
	.public _CryptoKeyStatus, 4
	.extern _Det_ReportError
	.public _Crypto_ISoft_Init
	.public _Crypto_ISoft_ProcessJob
	.public _Crypto_ISoft_CancelJob
	.extern _CryIf_CallbackNotification
	.public _Crypto_ISoft_KeyElementSet
	.extern _Crypto_KeyElementSetInternal
	.public _Crypto_ISoft_KeySetValid
	.public _Crypto_ISoft_KeyElementGet
	.extern _Crypto_KeyElementIndexFind
	.public _Crypto_ISoft_KeyElementCopy
	.public _Crypto_ISoft_KeyElementCopyPartial
	.public _Crypto_ISoft_KeyCopy
	.public _Crypto_ISoft_KeyElementIdsGet
	.public _Crypto_ISoft_RandomSeed
	.public _Crypto_ISoft_KeyGenerate
	.public _Crypto_ISoft_KeyDerive
	.public _Crypto_ISoft_KeyExchangeCalcPubVal
	.public _Crypto_ISoft_KeyExchangeCalcSecret
	.public _Crypto_ISoft_CertificateParse
	.public _Crypto_ISoft_CertificateVerify
	.public _Crypto_ISoft_MainFunction
	.public _Crypto_QueueJob
	.public _Crypto_QueueOutJob
	.public _Crypto_CancelQueuedJob
	.public _Crypto_ProcessSYNCJob
	.public _Crypto_ProcessASYNCJob_NONQUEUE
	.public _Crypto_Start
	.public _Crypto_Update
	.public _Crypto_Finish
	.public _Crypto_RandomSeedInternal
	.public _Crypto_KeySetValid_internal
	.public _Crypto_KeyExchangeCalcPubVal_internal
	.public _Crypto_KeyExchangeCalcSecret_internal
	.public _Crypto_sha256_Process
	.extern _Crypto_sha256
	.public _Crypto_GernerateMAC_Process
	.extern _Get_Key
	.extern _Crypto_GernerateMAC
	.public _Crypto_VerifyMAC_Process
	.extern _Crypto_VerifyMAC
	.public _Crypto_AESEncryptProcess
	.extern _Crypto_memset
	.extern _Crypto_AESEncryptECB
	.extern _Crypto_AESEncryptCBC
	.extern _Crypto_AESEncryptCTR
	.public _Crypto_AESDecryptProcess
	.extern _Crypto_AESDecryptECB
	.extern _Crypto_AESDecryptCBC
	.extern _Crypto_AESDecryptCTR
	.public _Crypto_CtrDrbgProcess
	.public _Crypto_AlgorithmGetInput
	.extern _Crypto_CtrDrbg
	.public _Crypto_AlgorithmGetSecondInput
	.public _Crypto_AlgorithmOutput
	.public _Crypto_ProcessAlgorithm

	.section .text, text
_Crypto_ReportDetErr.1:
	.stack _Crypto_ReportDetErr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.h", 62
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000072, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_internal.h", 64
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ClearStoredJob.1:
	.stack _Crypto_ClearStoredJob.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 168
	mov #_Crypto_StoredJob.1, r2
	ori 0x0000FFFF, r0, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 169
	st.w r0, 0x00000050[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 170
	st.w r0, 0x0000004C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 171
	st.w r0, 0x00000058[r2]
	jmp [r31]
_Crypto_ISoft_Init:
	.stack _Crypto_ISoft_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 188
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 194
	cmp 0x00000000, r6
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 196
	jarl _Crypto_ReportDetErr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 206
	jarl _Crypto_ClearStoredJob.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 212
	mov r2, r5
	shl 0x00000002, r5
	mov #_CryptoKeyStatus, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.3_4:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 209
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_5:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 215
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_ProcessJob:
	.stack _Crypto_ISoft_ProcessJob = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 280
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 292
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r20
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 294
	mov r20, r7
	jarl _Crypto_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 297
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_14
.BB.LABEL.4_3:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 302
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
.BB.LABEL.4_5:	; if_then_bb18
	mov 0x00000003, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 419
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_6:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 307
	ld.w 0x0000004C[r7], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	addi 0xFFFFFFEC, r2, r0
	bge9 .BB.LABEL.4_14
.BB.LABEL.4_7:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 312
	addi 0xFFFFFFED, r2, r0
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_8:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_9:	; bb56
	ld.w 0x0000004C[r7], r2
	ld.w 0x00000004[r2], r5
	ld.w 0x00000004[r5], r5
	cmp 0x0000000D, r5
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_10:	; bb73
	ld.w 0x00000004[r2], r5
	ld.w 0x00000004[r5], r5
	cmp 0x0000000E, r5
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_11:	; bb90
	ld.w 0x00000004[r2], r5
	ld.w 0x00000004[r5], r5
	cmp 0x0000000F, r5
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; bb107
	ld.w 0x00000004[r2], r2
	ld.w 0x00000004[r2], r2
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.4_15
.BB.LABEL.4_13:	; bb124
	ld.w 0x00000054[r7], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; if_then_bb138
	mov 0x00000004, r7
	br9 .BB.LABEL.4_5
.BB.LABEL.4_15:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 326
	ld.w 0x0000004C[r7], r2
	ld.w 0x00000004[r2], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000003, r5
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000007, r5
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_17:	; bb166
	ld.w 0x00000004[r2], r2
	ld.w 0x00000008[r2], r2
	addi 0xFFFFFFE2, r2, r0
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_18:	; bb184
	ld.w 0x00000024[r7], r2
	ld.w 0x00000000[r2], r2
	movea 0x0000017F, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.4_21
.BB.LABEL.4_19:	; bb184.bb468_crit_edge
	mov 0x00000001, r10
.BB.LABEL.4_20:	; bb468
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 419
	zxb r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_21:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 340
	ld.w 0x0000004C[r7], r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_33
.BB.LABEL.4_22:	; if_then_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 342
	movhi HIGHW1(#_Crypto_StoredJob.1), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1)[r2], r2
	ld.w 0x00000000[r7], r5
	cmp r5, r2
	bnz9 .BB.LABEL.4_24
.BB.LABEL.4_23:	; if_then_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_31
.BB.LABEL.4_24:	; if_else_bb327
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 356
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_25:	; if_else_bb327.if_break_bb373_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.4_31
.BB.LABEL.4_26:	; if_else_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 363
	ld.w 0x00000040[r7], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_29
.BB.LABEL.4_27:	; if_else_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.4_29
.BB.LABEL.4_28:	; if_else_bb333
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.4_30
.BB.LABEL.4_29:	; if_else_bb333.if_break_bb373_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.4_31
.BB.LABEL.4_30:	; if_else_bb370
	mov 0x00000001, r10
.BB.LABEL.4_31:	; if_break_bb373
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 375
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_32:	; if_then_bb379
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 377
	mov r7, r6
	jarl _Crypto_ProcessSYNCJob, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_33:	; if_else_bb383
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 382
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.4_41
.BB.LABEL.4_34:	; if_then_bb388
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 385
	ld.w 0x00000040[r7], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_37
.BB.LABEL.4_35:	; if_then_bb388
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.4_37
.BB.LABEL.4_36:	; if_then_bb388
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.4_38
.BB.LABEL.4_37:	; if_then_bb424
	mov r7, r6
	jarl _Crypto_QueueJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 419
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_38:	; if_else_bb427
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 395
	cmp 0x00000002, r2
	bz9 .BB.LABEL.4_40
.BB.LABEL.4_39:	; if_else_bb427
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.4_19
.BB.LABEL.4_40:	; if_then_bb449
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 399
	mov r7, r6
	jarl _Crypto_ProcessASYNCJob_NONQUEUE, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_41:	; if_else_bb455
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 408
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	br9 .BB.LABEL.4_37
_Crypto_ISoft_CancelJob:
	.stack _Crypto_ISoft_CancelJob = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 437
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 442
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r20
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 444
	mov r20, r7
	jarl _Crypto_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 447
	cmp 0x00000000, r6
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000004, r7
.BB.LABEL.5_4:	; if_then_bb10
	mov 0x0000000E, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 511
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_5:	; if_else_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 452
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.5_4
.BB.LABEL.5_7:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 463
	ld.w 0x0000004C[r20], r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_18
.BB.LABEL.5_8:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 466
	mov r20, r6
	jarl _Crypto_CancelQueuedJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 467
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x0000000C, r21
	mov r20, r6
	mov r21, r7
	jarl _CryIf_CallbackNotification, r31
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 511
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_10:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 474
	mov #_Crypto_StoredJob.1, r2
	cmp r2, r20
	bnz9 .BB.LABEL.5_19
.BB.LABEL.5_11:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 476
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; if_then_bb41.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.5_17
.BB.LABEL.5_13:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 478
	mov #_Crypto_JobInQueue.2, r6
	movea 0x00000060, r0, r2
	mov #_Crypto_StoredJob.1, r5
	add r5, r2
	mov r6, r7
	br9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_then_bb46
	ld23.dw 0x00000000[r7], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r7
	add 0x00000008, r5
.BB.LABEL.5_15:	; if_then_bb46
	cmp r5, r2
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_16:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 479
	jarl _Crypto_CancelQueuedJob, r31
	mov 0x00000002, r2
.BB.LABEL.5_17:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r5
	st.w r2, LOWW(#_Crypto_DriverStatus.3)[r5]
	br9 .BB.LABEL.5_9
.BB.LABEL.5_18:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 507
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_19:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 511
	dispose 0x00000000, 0x00000061, [r31]
_Crypto_ISoft_KeyElementSet:
	.stack _Crypto_ISoft_KeyElementSet = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 534
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 544
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 549
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
.BB.LABEL.6_4:	; if_then_bb12
	mov 0x00000004, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 564
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_5:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 554
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.6_4
.BB.LABEL.6_7:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 561
	jarl _Crypto_KeyElementSetInternal, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeySetValid:
	.stack _Crypto_ISoft_KeySetValid = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 582
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 587
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 589
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 594
	jarl _Crypto_KeySetValid_internal, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeyElementGet:
	.stack _Crypto_ISoft_KeyElementGet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 626
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 636
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	mov r9, r20
	mov r8, r21
	mov r6, r22
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 641
	cmp 0x00000000, r21
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb23
	mov 0x00000002, r7
.BB.LABEL.8_5:	; if_then_bb23
	mov 0x00000006, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 689
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.8_6:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 646
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.8_5
.BB.LABEL.8_8:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 654
	st.w r0, 0x00000000[r3]
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 657
	mov r22, r6
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 658
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_9:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 660
	shl 0x00000003, r22
	mov #_Crypto_Key, r2
	add r22, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	mov r6, r7
	mul 0x00000024, r7, r0
	add r5, r7
	ld.w 0x00000018[r7], r7
	ld.w 0x00000000[r20], r8
	cmp r7, r8
	bnc9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_then_bb40.if_break_bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.8_17
.BB.LABEL.8_11:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 667
	mov r6, r7
	mul 0x00000024, r7, r0
	add r7, r5
	ld.w 0x00000014[r5], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_12:	; if_else_bb57.bb92_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.8_15
.BB.LABEL.8_13:	; if_else_bb57.if_break_bb115_crit_edge
	mov 0x00000006, r10
	br9 .BB.LABEL.8_17
.BB.LABEL.8_14:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 679
	mov r21, r7
	add r5, r7
	ld.w 0x00000000[r2], r8
	ld.w 0x00000004[r8], r8
	mov r6, r9
	mul 0x00000024, r9, r0
	add r9, r8
	ld.w 0x0000000C[r8], r8
	add r5, r8
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.8_15:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 677
	ld.w 0x00000000[r20], r7
	cmp r7, r5
	bl9 .BB.LABEL.8_14
.BB.LABEL.8_16:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 683
	ld.w 0x00000000[r3], r5
	mul 0x00000024, r5, r0
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	add r5, r2
	ld.w 0x00000018[r2], r2
	st.w r2, 0x00000000[r20]
.BB.LABEL.8_17:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 689
	dispose 0x00000004, 0x00000071, [r31]
_Crypto_ISoft_KeyElementCopy:
	.stack _Crypto_ISoft_KeyElementCopy = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 719
	prepare 0x00000071, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 728
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 730
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 736
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 737
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 741
	mov r20, r6
	mov r9, r7
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 742
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_14
.BB.LABEL.9_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 744
	mov r22, r6
	mov r21, r7
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 745
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_14
.BB.LABEL.9_4:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 748
	shl 0x00000003, r22
	mov #_Crypto_Key, r2
	add r22, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	mov r6, r7
	mul 0x00000024, r7, r0
	add r5, r7
	ld.w 0x00000014[r7], r7
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb28.if_break_bb155_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000006, r10
	br9 .BB.LABEL.9_14
.BB.LABEL.9_6:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 755
	ld.w 0x00000004[r3], r7
	mov r7, r8
	mul 0x00000024, r8, r0
	add r5, r8
	ld.w 0x0000001C[r8], r8
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_else_bb43.if_break_bb155_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000007, r10
	br9 .BB.LABEL.9_14
.BB.LABEL.9_8:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 763
	mul 0x00000024, r7, r0
	add r5, r7
	ld.w 0x00000004[r7], r7
	mul 0x00000024, r6, r0
	add r6, r5
	ld.w 0x00000004[r5], r5
	cmp r5, r7
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_else_bb58.if_break_bb155_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.9_14
.BB.LABEL.9_10:	; if_else_bb58.bb113_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 780
	add r7, r6
	ld.w 0x0000000C[r6], r6
	andi 0x000000FF, r5, r7
	add r7, r6
	mov r20, r9
	shl 0x00000003, r9
	mov #_Crypto_Key, r11
	add r9, r11
	ld.w 0x00000004[r11], r9
	ld.w 0x00000004[r9], r9
	add r8, r9
	ld.w 0x0000000C[r9], r8
	add r8, r7
	ld.b 0x00000000[r7], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.9_12:	; bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 775
	ld.w 0x00000000[r3], r8
	mov r8, r7
	mul 0x00000024, r7, r0
	ld.w 0x00000000[r2], r6
	ld.w 0x00000004[r6], r6
	add r6, r7
	ld.w 0x00000018[r7], r7
	andi 0x000000FF, r5, r9
	mul 0x00000024, r8, r0
	cmp r7, r9
	ld.w 0x00000004[r3], r7
	mul 0x00000024, r7, r0
	bl9 .BB.LABEL.9_11
.BB.LABEL.9_13:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 786
	add r6, r7
	ld.w 0x00000020[r7], r2
	add r8, r6
	ld.w 0x00000020[r6], r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000000[r2]
.BB.LABEL.9_14:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 796
	dispose 0x00000008, 0x00000071, [r31]
_Crypto_ISoft_KeyElementCopyPartial:
	.stack _Crypto_ISoft_KeyElementCopyPartial = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 836
	prepare 0x00000479, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 848
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	ld.w 0x00000028[r3], r2
	ld.w 0x00000024[r3], r5
	ld.w 0x00000020[r3], r20
	mov r9, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.10_6
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 855
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 856
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 859
	mov r5, r6
	mov r2, r7
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 860
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.10_18
.BB.LABEL.10_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 862
	mov r24, r6
	mov r23, r7
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 863
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.10_18
.BB.LABEL.10_4:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 866
	shl 0x00000003, r24
	mov #_Crypto_Key, r2
	add r24, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	mov r6, r7
	mul 0x00000024, r7, r0
	add r5, r7
	ld.w 0x00000014[r7], r7
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000006, r7
.BB.LABEL.10_6:	; if_then_bb45
	movea 0x00000013, r0, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 934
	dispose 0x00000008, 0x00000479, [r31]
.BB.LABEL.10_7:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 876
	ld.w 0x00000004[r3], r7
	mov r7, r8
	mul 0x00000024, r8, r0
	add r5, r8
	ld.w 0x0000001C[r8], r8
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000007, r7
	br9 .BB.LABEL.10_6
.BB.LABEL.10_9:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 887
	mov r7, r8
	mul 0x00000024, r8, r0
	add r5, r8
	ld.w 0x00000004[r8], r8
	mov r6, r9
	mul 0x00000024, r9, r0
	add r5, r9
	ld.w 0x00000004[r9], r9
	cmp r9, r8
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_else_bb61.if_break_bb200_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.10_18
.BB.LABEL.10_11:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 897
	mul 0x00000024, r7, r0
	add r5, r7
	ld.bu 0x00000000[r7], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.10_10
.BB.LABEL.10_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mul 0x00000024, r6, r0
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_10
.BB.LABEL.10_13:	; bb.bb156_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.10_15
.BB.LABEL.10_14:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 913
	andi 0x000000FF, r5, r6
	mov r21, r7
	add r6, r7
	ld.w 0x00000000[r2], r8
	ld.w 0x00000004[r8], r8
	ld.w 0x00000004[r3], r9
	mul 0x00000024, r9, r0
	add r8, r9
	ld.w 0x0000000C[r9], r9
	add r7, r9
	add r22, r6
	ld.w 0x00000000[r3], r7
	mul 0x00000024, r7, r0
	add r7, r8
	ld.w 0x0000000C[r8], r7
	add r6, r7
	ld.b 0x00000000[r7], r6
	st.b r6, 0x00000000[r9]
	add 0x00000001, r5
.BB.LABEL.10_15:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 911
	andi 0x000000FF, r5, r6
	cmp r20, r6
	bl9 .BB.LABEL.10_14
.BB.LABEL.10_16:	; bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 920
	ld.w 0x00000000[r3], r5
	mov r5, r6
	mul 0x00000024, r6, r0
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	add r2, r6
	ld.w 0x00000018[r6], r6
	mov r20, r7
	add r22, r7
	cmp r6, r7
	bnh9 .BB.LABEL.10_18
.BB.LABEL.10_17:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 925
	mul 0x00000024, r5, r0
	add r5, r2
	ld.w 0x00000020[r2], r2
	add r22, r20
	st.w r20, 0x00000000[r2]
.BB.LABEL.10_18:	; if_break_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 934
	dispose 0x00000008, 0x00000479, [r31]
_Crypto_ISoft_KeyCopy:
	.stack _Crypto_ISoft_KeyCopy = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 964
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 969
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 971
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 979
	shl 0x00000003, r7
	mov #_Crypto_Key, r2
	add r2, r7
	ld.w 0x00000004[r7], r5
	add 0x00000004, r7
	shl 0x00000003, r6
	add r6, r2
	ld.w 0x00000004[r2], r6
	add 0x00000004, r2
	ld.bu 0x00000000[r6], r6
	ld.bu 0x00000000[r5], r5
	mov 0x00000001, r10
	cmp r5, r6
	bnz17 .BB.LABEL.11_23
.BB.LABEL.11_3:	; if_else_bb.bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.11_13
.BB.LABEL.11_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 984
	andi 0x000000FF, r5, r8
	mul 0x00000024, r8, r0
	ld.w 0x00000004[r6], r6
	add r6, r8
	ld.w 0x00000014[r8], r8
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; bb.if_break_bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000006, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_6:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 989
	ld.w 0x00000000[r7], r8
	ld.w 0x00000004[r8], r8
	andi 0x000000FF, r5, r9
	mul 0x00000024, r9, r0
	add r8, r9
	ld.w 0x0000001C[r9], r9
	cmp 0x00000003, r9
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_else_bb41.if_break_bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000007, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_8:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 995
	andi 0x000000FF, r5, r9
	mul 0x00000024, r9, r0
	add r9, r6
	ld.w 0x00000004[r6], r6
	add r9, r8
	ld.w 0x00000004[r8], r8
	cmp r8, r6
	bz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_else_bb57.if_break_bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_else_bb84
	mov 0x00000000, r10
.BB.LABEL.11_11:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1005
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_14
.BB.LABEL.11_12:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	add 0x00000001, r5
.BB.LABEL.11_13:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 982
	ld.w 0x00000000[r2], r6
	ld.bu 0x00000000[r6], r8
	andi 0x000000FF, r5, r9
	cmp r8, r9
	bl9 .BB.LABEL.11_4
.BB.LABEL.11_14:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1010
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.11_23
.BB.LABEL.11_15:	; bb111.bb199_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.11_21
.BB.LABEL.11_16:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1015
	andi 0x000000FF, r5, r8
	mul 0x00000024, r8, r0
	ld.w 0x00000004[r6], r6
	add r8, r6
	ld.w 0x00000004[r6], r6
	ld.w 0x00000000[r7], r9
	ld.w 0x00000004[r9], r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	cmp r8, r6
	bnz9 .BB.LABEL.11_22
.BB.LABEL.11_17:	; bb118.bb179_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.11_19
.BB.LABEL.11_18:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1027
	andi 0x000000FF, r5, r9
	mul 0x00000024, r9, r0
	ld.w 0x00000000[r7], r11
	ld.w 0x00000004[r11], r11
	add r9, r11
	ld.w 0x0000000C[r11], r11
	andi 0x000000FF, r6, r12
	add r12, r11
	add r9, r8
	ld.w 0x0000000C[r8], r8
	add r8, r12
	ld.b 0x00000000[r12], r8
	st.b r8, 0x00000000[r11]
	add 0x00000001, r6
.BB.LABEL.11_19:	; bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1023
	ld.w 0x00000000[r2], r8
	ld.w 0x00000004[r8], r8
	andi 0x000000FF, r5, r9
	mul 0x00000024, r9, r0
	add r8, r9
	ld.w 0x00000018[r9], r9
	andi 0x000000FF, r6, r11
	cmp r9, r11
	bl9 .BB.LABEL.11_18
.BB.LABEL.11_20:	; bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	add 0x00000001, r5
.BB.LABEL.11_21:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1013
	ld.w 0x00000000[r2], r6
	ld.bu 0x00000000[r6], r8
	andi 0x000000FF, r5, r9
	cmp r8, r9
	bl9 .BB.LABEL.11_16
	br9 .BB.LABEL.11_23
.BB.LABEL.11_22:	; bb118.if_break_bb216_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x0000000A, r10
.BB.LABEL.11_23:	; if_break_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1038
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeyElementIdsGet:
	.stack _Crypto_ISoft_KeyElementIdsGet = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1064
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1072
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r20
	movea 0x00000011, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1074
	mov r20, r7
	jarl _Crypto_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1082
	shl 0x00000003, r6
	mov #_Crypto_Key, r5
	add r6, r5
	ld.w 0x00000004[r5], r6
	add 0x00000004, r5
	ld.bu 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1084
	cmp 0x00000001, r2
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_else_bb.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; if_then_bb20
	mov 0x00000002, r7
	movea 0x00000011, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1087
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1089
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1095
	mov r2, r9
	shl 0x00000002, r9
	mov r7, r10
	add r9, r10
	mov r2, r11
	mul 0x00000024, r11, r0
	ld.w 0x00000000[r5], r12
	ld.w 0x00000004[r12], r12
	add r11, r12
	ld.w 0x00000008[r12], r12
	st.w r12, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1097
	add r8, r9
	ld.w 0x00000000[r5], r10
	ld.w 0x00000004[r10], r10
	add r11, r10
	ld.w 0x00000018[r10], r10
	st.w r10, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.12_6:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1093
	cmp r6, r2
	bl9 .BB.LABEL.12_5
.BB.LABEL.12_7:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1103
	dispose 0x00000000, 0x00000041, [r31]
_Crypto_ISoft_RandomSeed:
	.stack _Crypto_ISoft_RandomSeed = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1127
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1135
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r20
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1137
	mov r20, r7
	jarl _Crypto_ReportDetErr.1, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1140
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
.BB.LABEL.13_4:	; if_then_bb11
	mov 0x0000000D, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1155
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1145
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.13_4
.BB.LABEL.13_7:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1152
	jarl _Crypto_RandomSeedInternal, r31
	dispose 0x00000000, 0x00000041, [r31]
_Crypto_ISoft_KeyGenerate:
	.stack _Crypto_ISoft_KeyGenerate = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1176
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1181
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1183
	jarl _Crypto_ReportDetErr.1, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1194
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeyDerive:
	.stack _Crypto_ISoft_KeyDerive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1221
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1226
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	mov 0x00000008, r6
.BB.LABEL.15_2:	; if_then_bb
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1241
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1231
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb19
	mov 0x00000004, r7
	mov 0x00000007, r6
	br9 .BB.LABEL.15_2
.BB.LABEL.15_6:	; if_break_bb21
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1241
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeyExchangeCalcPubVal:
	.stack _Crypto_ISoft_KeyExchangeCalcPubVal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1268
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1277
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1282
	cmp 0x00000000, r7
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_4:	; if_then_bb20
	mov 0x00000002, r7
.BB.LABEL.16_5:	; if_then_bb20
	mov 0x00000009, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1297
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1287
	ld.w 0x00000000[r8], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.16_5
.BB.LABEL.16_8:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1294
	jarl _Crypto_KeyExchangeCalcPubVal_internal, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_KeyExchangeCalcSecret:
	.stack _Crypto_ISoft_KeyExchangeCalcSecret = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1325
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1333
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1338
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.17_5
.BB.LABEL.17_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
.BB.LABEL.17_4:	; if_then_bb11
	mov 0x0000000A, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1353
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.17_5:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1343
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.17_4
.BB.LABEL.17_7:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1350
	jarl _Crypto_KeyExchangeCalcSecret_internal, r31
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_CertificateParse:
	.stack _Crypto_ISoft_CertificateParse = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1376
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1381
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
.BB.LABEL.18_2:	; if_then_bb
	mov 0x0000000B, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1396
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1386
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.18_2
.BB.LABEL.18_5:	; if_break_bb11
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1396
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_CertificateVerify:
	.stack _Crypto_ISoft_CertificateVerify = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1422
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1430
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	ld.w LOWW(#_Crypto_DriverStatus.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.19_5
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1435
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.19_6
.BB.LABEL.19_4:	; if_then_bb20
	mov 0x00000004, r7
.BB.LABEL.19_5:	; if_then_bb20
	movea 0x00000012, r0, r6
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1450
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1440
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.19_5
.BB.LABEL.19_8:	; if_break_bb29
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1450
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ISoft_MainFunction:
	.stack _Crypto_ISoft_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1467
	prepare 0x00000001, 0x00000000
	br9 .BB.LABEL.20_12
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1476
	mov #_Crypto_StoredJob.1, r6
	jarl _Crypto_QueueOutJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1477
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1479
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_StoredJob.1+0x00000004)[r2]
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1483
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_12
.BB.LABEL.20_4:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1485
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000040), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000040)[r2], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000006, r2
	bh9 .BB.LABEL.20_12
.BB.LABEL.20_5:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.20_14[r2]
.SWITCH.LABEL.20_14:
	br9 .BB.LABEL.20_6
	br9 .BB.LABEL.20_10
	br9 .BB.LABEL.20_9
	br9 .BB.LABEL.20_7
	br9 .BB.LABEL.20_12
	br9 .BB.LABEL.20_12
	br9 .BB.LABEL.20_8
.SWITCH.LABEL.20_14.END:
.BB.LABEL.20_6:	; switch_clause_bb
	mov 0x00000000, r7
	br9 .BB.LABEL.20_11
.BB.LABEL.20_7:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1495
	jarl _Crypto_Finish, r31
	br9 .BB.LABEL.20_12
.BB.LABEL.20_8:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1498
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1499
	jarl _Crypto_Finish, r31
	br9 .BB.LABEL.20_12
.BB.LABEL.20_9:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1502
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
.BB.LABEL.20_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	jarl _Crypto_ProcessAlgorithm, r31
	mov r10, r7
.BB.LABEL.20_11:	; switch_clause_bb12
	mov #_Crypto_StoredJob.1, r6
	jarl _CryIf_CallbackNotification, r31
.BB.LABEL.20_12:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1472
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.20_1
.BB.LABEL.20_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1511
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_SetQueueBuf.1:
	.stack _Crypto_SetQueueBuf.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1534
	ld.w 0x00000000[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1539
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1540
	ld.w 0x00000004[r7], r2
	st.w r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1541
	addi 0x00000008, r7, r2
	addi 0x00000008, r6, r5
	movea 0x00000044, r0, r8
	add r5, r8
	br9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry
	ld.w 0x00000000[r2], r9
	st.w r9, 0x00000000[r5]
	add 0x00000004, r2
	add 0x00000004, r5
.BB.LABEL.21_2:	; entry
	cmp r5, r8
	bnz9 .BB.LABEL.21_1
.BB.LABEL.21_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1542
	ld.w 0x0000004C[r7], r2
	st.w r2, 0x0000004C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1543
	ld.w 0x00000050[r7], r2
	st.w r2, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1544
	ld.w 0x00000054[r7], r2
	st.w r2, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1545
	ld.w 0x00000058[r7], r2
	st.w r2, 0x00000058[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1546
	ld.w 0x0000005C[r7], r2
	st.w r2, 0x0000005C[r6]
	jmp [r31]
_Crypto_QueueJob:
	.stack _Crypto_QueueJob = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1549
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1554
	mov #_Crypto_JobTempBuf, r6
	mov r20, r7
	jarl _Crypto_SetQueueBuf.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1555
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1559
	mov #_Crypto_JobTempBuf, r20
	mov #_Crypto_JobInQueue.2, r5
	add r5, r2
	br9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb
	ld23.dw 0x00000000[r20], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r20
	add 0x00000008, r5
.BB.LABEL.22_3:	; if_then_bb
	cmp r5, r2
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1560
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	mov 0x00000001, r20
	st.w r20, LOWW(#_Crypto_62_QueueFilledSize)[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.22_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1562
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.22_19
.BB.LABEL.22_6:	; if_else_bb.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.22_22
.BB.LABEL.22_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1579
	mul 0x00000060, r2, r0
	mov #_Crypto_JobInQueue.2, r6
	add r2, r6
	ld.w 0xFFFFFF90[r6], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000050[r20], r7
	ld.w 0x00000004[r7], r7
	cmp r2, r7
	movea 0xFFFFFFA0, r6, r2
	movea 0xFFFFFF40, r6, r6
	bnh9 .BB.LABEL.22_15
.BB.LABEL.22_8:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000060, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1582
	mov r7, r8
	add r2, r8
	mov r6, r9
	br9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb32
	ld23.dw 0x00000000[r9], r10
	st23.dw r10, 0x00000000[r2]
	add 0x00000008, r9
	add 0x00000008, r2
.BB.LABEL.22_10:	; if_then_bb32
	cmp r2, r8
	bnz9 .BB.LABEL.22_9
.BB.LABEL.22_11:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1583
	mov #_Crypto_JobTempBuf, r2
	add r6, r7
	br9 .BB.LABEL.22_13
.BB.LABEL.22_12:	; if_then_bb32
	ld23.dw 0x00000000[r2], r8
	st23.dw r8, 0x00000000[r6]
	add 0x00000008, r2
	add 0x00000008, r6
.BB.LABEL.22_13:	; if_then_bb32
	cmp r6, r7
	bnz9 .BB.LABEL.22_12
.BB.LABEL.22_14:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r5, r2
	br9 .BB.LABEL.22_20
.BB.LABEL.22_15:	; if_else_bb49
	movea 0x00000060, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1595
	mov #_Crypto_JobTempBuf, r20
	add r2, r5
	br9 .BB.LABEL.22_17
.BB.LABEL.22_16:	; if_else_bb49
	ld23.dw 0x00000000[r20], r6
	st23.dw r6, 0x00000000[r2]
	add 0x00000008, r20
	add 0x00000008, r2
.BB.LABEL.22_17:	; if_else_bb49
	cmp r2, r5
	bnz9 .BB.LABEL.22_16
.BB.LABEL.22_18:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1597
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.22_19:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1573
	add 0x00000001, r2
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r5
	st.w r2, LOWW(#_Crypto_62_QueueFilledSize)[r5]
.BB.LABEL.22_20:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	addi 0xFFFFFFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1574
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_21:	; bb57.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
.BB.LABEL.22_22:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1602
	zxb r10
	dispose 0x00000000, 0x00000041, [r31]
_Crypto_QueueOutJob:
	.stack _Crypto_QueueOutJob = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1603
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1608
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.23_12
.BB.LABEL.23_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1610
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r5
	st.w r2, LOWW(#_Crypto_62_QueueFilledSize)[r5]
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1611
	mov #_Crypto_JobInQueue.2, r5
	add r6, r2
	br9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb
	ld23.dw 0x00000000[r5], r8
	st23.dw r8, 0x00000000[r6]
	add 0x00000008, r5
	add 0x00000008, r6
.BB.LABEL.23_4:	; if_then_bb
	cmp r6, r2
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.23_10
.BB.LABEL.23_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1615
	mov r2, r5
	mul 0x00000060, r5, r0
	mov #_Crypto_JobInQueue.2, r6
	add r6, r5
	movea 0x00000060, r5, r6
	movea 0x00000060, r0, r7
	add r5, r7
	br9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; bb
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r6
	add 0x00000008, r5
.BB.LABEL.23_8:	; bb
	cmp r5, r7
	bnz9 .BB.LABEL.23_7
.BB.LABEL.23_9:	; bb
	add 0x00000001, r2
.BB.LABEL.23_10:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1612
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r5
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r5], r5
	cmp r5, r2
	bl9 .BB.LABEL.23_6
.BB.LABEL.23_11:	; bb19.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
.BB.LABEL.23_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1620
	jmp [r31]
_Crypto_CancelQueuedJob:
	.stack _Crypto_CancelQueuedJob = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1632
	mov 0x00000000, r2
	br9 .BB.LABEL.24_11
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1641
	mov r2, r5
	mul 0x00000060, r5, r0
	mov #_Crypto_JobInQueue.2, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	ld.w 0x00000000[r6], r7
	cmp r5, r7
	bnz9 .BB.LABEL.24_10
.BB.LABEL.24_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r2, r5
	br9 .BB.LABEL.24_7
.BB.LABEL.24_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1646
	andi 0x000000FF, r5, r6
	mul 0x00000060, r6, r0
	mov #_Crypto_JobInQueue.2, r7
	add r7, r6
	movea 0x00000060, r6, r7
	movea 0x00000060, r0, r8
	add r6, r8
	br9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; bb15
	ld23.dw 0x00000000[r7], r10
	st23.dw r10, 0x00000000[r6]
	add 0x00000008, r7
	add 0x00000008, r6
.BB.LABEL.24_5:	; bb15
	cmp r6, r8
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_6:	; bb15
	add 0x00000001, r5
.BB.LABEL.24_7:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1644
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r6
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r6], r6
	mov r2, r7
	subr r6, r7
	add 0xFFFFFFFF, r7
	andi 0x000000FF, r5, r8
	cmp r7, r8
	bl9 .BB.LABEL.24_3
.BB.LABEL.24_8:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1648
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r2
	st.w r6, LOWW(#_Crypto_62_QueueFilledSize)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1650
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.24_13
.BB.LABEL.24_9:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1652
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	jmp [r31]
.BB.LABEL.24_10:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	add 0x00000001, r2
.BB.LABEL.24_11:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1638
	movhi HIGHW1(#_Crypto_62_QueueFilledSize), r0, r5
	ld.w LOWW(#_Crypto_62_QueueFilledSize)[r5], r5
	cmp r5, r2
	bl9 .BB.LABEL.24_1
.BB.LABEL.24_12:	; bb49.bb56_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
.BB.LABEL.24_13:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1658
	jmp [r31]
_Crypto_ProcessSYNCJob:
	.stack _Crypto_ProcessSYNCJob = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1661
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1664
	ld.w 0x00000040[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000006, r2
	bh9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.25_20[r2]
.SWITCH.LABEL.25_20:
	br9 .BB.LABEL.25_3
	br9 .BB.LABEL.25_4
	br9 .BB.LABEL.25_16
	br9 .BB.LABEL.25_10
	br9 .BB.LABEL.25_2
	br9 .BB.LABEL.25_2
	br9 .BB.LABEL.25_18
.SWITCH.LABEL.25_20.END:
.BB.LABEL.25_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.25_19
.BB.LABEL.25_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1667
	jarl _Crypto_Start, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1668
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1671
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000040), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000040)[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_6:	; if_then_bb
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1674
	mov #_Crypto_StoredJob.1, r5
	add r5, r2
	br9 .BB.LABEL.25_8
.BB.LABEL.25_7:	; if_then_bb
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r6
	add 0x00000008, r5
.BB.LABEL.25_8:	; if_then_bb
	cmp r5, r2
	bnz9 .BB.LABEL.25_7
.BB.LABEL.25_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1675
	jarl _Crypto_Update, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_10:	; switch_clause_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1679
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000040), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000040)[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_11:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_12:	; if_then_bb39
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1682
	mov #_Crypto_StoredJob.1, r5
	add r5, r2
	br9 .BB.LABEL.25_14
.BB.LABEL.25_13:	; if_then_bb39
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r6
	add 0x00000008, r5
.BB.LABEL.25_14:	; if_then_bb39
	cmp r5, r2
	bnz9 .BB.LABEL.25_13
.BB.LABEL.25_15:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1683
	jarl _Crypto_Finish, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_16:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1687
	jarl _Crypto_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1688
	jarl _Crypto_Update, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1689
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_17:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1691
	jarl _Crypto_Finish, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_18:	; switch_clause_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1695
	jarl _Crypto_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1696
	jarl _Crypto_Finish, r31
.BB.LABEL.25_19:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1702
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_ProcessASYNCJob_NONQUEUE:
	.stack _Crypto_ProcessASYNCJob_NONQUEUE = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1705
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1709
	ld.w 0x00000040[r6], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000006, r2
	bh9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.26_19[r2]
.SWITCH.LABEL.26_19:
	br9 .BB.LABEL.26_3
	br9 .BB.LABEL.26_4
	br9 .BB.LABEL.26_18
	br9 .BB.LABEL.26_10
	br9 .BB.LABEL.26_2
	br9 .BB.LABEL.26_2
	br9 .BB.LABEL.26_18
.SWITCH.LABEL.26_19.END:
.BB.LABEL.26_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.26_12
.BB.LABEL.26_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1712
	jarl _Crypto_Start, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1713
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_StoredJob.1+0x00000004)[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1716
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000040), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000040)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_6:	; if_then_bb
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1719
	mov #_Crypto_StoredJob.1, r5
	add r5, r2
	br9 .BB.LABEL.26_8
.BB.LABEL.26_7:	; if_then_bb
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r6
	add 0x00000008, r5
.BB.LABEL.26_8:	; if_then_bb
	cmp r5, r2
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1719
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_10:	; switch_clause_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1723
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000040), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000040)[r2], r2
	add 0xFFFFFFFE, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.26_13
.BB.LABEL.26_11:	; switch_clause_bb22.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
.BB.LABEL.26_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1744
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_13:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000004), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_11
.BB.LABEL.26_14:	; if_then_bb49
	movea 0x00000060, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1727
	mov #_Crypto_StoredJob.1, r5
	add r5, r2
	br9 .BB.LABEL.26_16
.BB.LABEL.26_15:	; if_then_bb49
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r5]
	add 0x00000008, r6
	add 0x00000008, r5
.BB.LABEL.26_16:	; if_then_bb49
	cmp r5, r2
	bnz9 .BB.LABEL.26_15
.BB.LABEL.26_17:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1727
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.26_18:	; switch_clause_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	jarl _Crypto_Start, r31
	br9 .BB.LABEL.26_2
_Crypto_Start:
	.stack _Crypto_Start = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1746
	mov #_Crypto_StoredJob.1, r2
	movea 0x00000060, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1748
	add r2, r5
	mov r2, r7
	br9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r7]
	add 0x00000008, r6
	add 0x00000008, r7
.BB.LABEL.27_2:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.27_1
.BB.LABEL.27_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1749
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1750
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1751
	jmp [r31]
_Crypto_Update:
	.stack _Crypto_Update = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1754
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1757
	jarl _Crypto_ProcessAlgorithm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1759
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_Finish:
	.stack _Crypto_Finish = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1761
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1764
	jarl _Crypto_ProcessAlgorithm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1765
	movhi HIGHW1(#_Crypto_DriverStatus.3), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Crypto_DriverStatus.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1766
	movhi HIGHW1(#_Crypto_StoredJob.1+0x0000004C), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x0000004C)[r2], r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	mov r10, r20
	bnz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1768
	mov #_Crypto_StoredJob.1, r6
	mov r20, r7
	jarl _CryIf_CallbackNotification, r31
.BB.LABEL.29_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1771
	jarl _Crypto_ClearStoredJob.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1774
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Crypto_RandomSeedInternal:
	.stack _Crypto_RandomSeedInternal = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1777
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1784
	st.w r0, 0x00000000[r3]
	mov r3, r8
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1785
	jarl _Crypto_KeyElementIndexFind, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1786
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.30_5
.BB.LABEL.30_1:	; entry.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1790
	add r6, r5
	ld.w 0x0000000C[r5], r5
	andi 0x000000FF, r2, r6
	add r6, r5
	add r21, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.30_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1788
	mov r20, r5
	shl 0x00000003, r5
	mov #_Crypto_Key, r6
	add r5, r6
	andi 0x000000FF, r2, r5
	cmp r22, r5
	ld.w 0x00000004[r6], r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	mul 0x00000024, r6, r0
	bl9 .BB.LABEL.30_2
.BB.LABEL.30_4:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1794
	add r6, r5
	ld.w 0x00000020[r5], r2
	st.w r22, 0x00000000[r2]
.BB.LABEL.30_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1798
	dispose 0x00000004, 0x00000071, [r31]
_Crypto_KeySetValid_internal:
	.stack _Crypto_KeySetValid_internal = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1800
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1807
	cmp 0x00000000, r6
	bz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000004, r7
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1809
	jarl _Crypto_ReportDetErr.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1814
	shl 0x00000002, r6
	mov #_CryptoKeyStatus, r2
	add r6, r2
	mov 0x00000001, r5
	st.w r5, 0x00000000[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1815
	dispose 0x00000000, 0x00000001, [r31]
_Crypto_KeyExchangeCalcPubVal_internal:
	.stack _Crypto_KeyExchangeCalcPubVal_internal = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1821
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1854
	jmp [r31]
_Crypto_KeyExchangeCalcSecret_internal:
	.stack _Crypto_KeyExchangeCalcSecret_internal = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1857
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1867
	jmp [r31]
_Crypto_sha256_Process:
	.stack _Crypto_sha256_Process = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1869
	prepare 0x00000061, 0x00000020
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1875
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000024), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000024)[r2], r2
	ld.w 0x00000000[r2], r2
	movea 0x00000020, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1874
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1878
	ld.w 0x00000008[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1874
	ld.w 0x0000000C[r2], r7
	mov r3, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1881
	mov r20, r8
	jarl _Crypto_sha256, r31
	mov r10, r21
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1882
	mov r20, r6
	jarl _Crypto_AlgorithmOutput, r31
	mov r21, r10
	dispose 0x00000020, 0x00000061, [r31]
.BB.LABEL.34_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1885
	dispose 0x00000020, 0x00000061, [r31]
_Crypto_GernerateMAC_Process:
	.stack _Crypto_GernerateMAC_Process = 128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1887
	prepare 0x00000061, 0x00000074
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
	movea 0x00000054, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1891
	mov r2, r6
	add r7, r6
	mov r7, r8
	br9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; entry
	st.b r5, 0x00000000[r8]
	add 0x00000001, r8
.BB.LABEL.35_2:	; entry
	cmp r8, r6
	bnz9 .BB.LABEL.35_1
.BB.LABEL.35_3:	; entry
	st.b r0, 0x00000054[r3]
	movea 0x00000044, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1892
	add r6, r2
	br9 .BB.LABEL.35_5
.BB.LABEL.35_4:	; entry
	st.b r5, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.35_5:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.35_4
.BB.LABEL.35_6:	; entry
	st.b r0, 0x00000044[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1894
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1896
	ld.w 0x00000054[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1894
	ld.w 0x0000000C[r2], r20
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1896
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1897
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.35_8
.BB.LABEL.35_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1899
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000005, r8
	movea 0x00000044, r3, r7
	jarl _Get_Key, r31
.BB.LABEL.35_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1901
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.35_10
.BB.LABEL.35_9:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000004, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1903
	mov r21, r6
	jarl _Crypto_AlgorithmGetInput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1904
	zxb r20
	st.w r20, 0x00000000[r3]
	movea 0x00000044, r3, r8
	movea 0x00000054, r3, r7
	movea 0x00000064, r3, r6
	mov r21, r9
	jarl _Crypto_GernerateMAC, r31
.BB.LABEL.35_10:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1907
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.35_12
.BB.LABEL.35_11:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000010, r0, r21
	movea 0x00000064, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1909
	mov r21, r7
	jarl _Crypto_AlgorithmOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1910
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000024), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000024)[r2], r2
	st.w r21, 0x00000000[r2]
.BB.LABEL.35_12:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1914
	dispose 0x00000074, 0x00000061, [r31]
_Crypto_VerifyMAC_Process:
	.stack _Crypto_VerifyMAC_Process = 136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1916
	prepare 0x00000071, 0x00000078
	mov 0x00000000, r2
	movea 0x00000010, r0, r5
	movea 0x00000068, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1919
	mov r5, r6
	add r7, r6
	mov r7, r8
	br9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; entry
	st.b r2, 0x00000000[r8]
	add 0x00000001, r8
.BB.LABEL.36_2:	; entry
	cmp r8, r6
	bnz9 .BB.LABEL.36_1
.BB.LABEL.36_3:	; entry
	st.b r0, 0x00000068[r3]
	movea 0x00000058, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1920
	mov r5, r8
	add r6, r8
	br9 .BB.LABEL.36_5
.BB.LABEL.36_4:	; entry
	st.b r2, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.36_5:	; entry
	cmp r6, r8
	bnz9 .BB.LABEL.36_4
.BB.LABEL.36_6:	; entry
	st.b r0, 0x00000058[r3]
	movea 0x00000040, r0, r6
	movea 0x00000018, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1921
	add r8, r6
	br9 .BB.LABEL.36_8
.BB.LABEL.36_7:	; entry
	st.b r2, 0x00000000[r8]
	add 0x00000001, r8
.BB.LABEL.36_8:	; entry
	cmp r8, r6
	bnz9 .BB.LABEL.36_7
.BB.LABEL.36_9:	; entry
	st.b r0, 0x00000018[r3]
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1922
	add r6, r5
	br9 .BB.LABEL.36_11
.BB.LABEL.36_10:	; entry
	st.b r2, 0x00000000[r6]
	add 0x00000001, r6
.BB.LABEL.36_11:	; entry
	cmp r6, r5
	bnz9 .BB.LABEL.36_10
.BB.LABEL.36_12:	; entry
	st.b r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1925
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1928
	ld.w 0x00000054[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1927
	ld.w 0x00000014[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1925
	ld.w 0x0000000C[r2], r21
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1928
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1929
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.36_14
.BB.LABEL.36_13:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1931
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000005, r8
	movea 0x00000058, r3, r7
	jarl _Get_Key, r31
.BB.LABEL.36_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.36_16
.BB.LABEL.36_15:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1935
	andi 0x000000FF, r2, r5
	movea 0x00000008, r3, r6
	add r5, r6
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000010), r0, r7
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000010)[r7], r7
	add r7, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.36_16:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1933
	andi 0x000000FF, r2, r5
	cmp r20, r5
	bl9 .BB.LABEL.36_15
.BB.LABEL.36_17:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1938
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.36_19
.BB.LABEL.36_18:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000018, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1940
	mov r22, r6
	jarl _Crypto_AlgorithmGetInput, r31
	movea 0x00000008, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1941
	st.w r2, 0x00000000[r3]
	st.w r20, 0x00000004[r3]
	andi 0x000000FF, r21, r9
	movea 0x00000058, r3, r7
	movea 0x00000068, r3, r6
	mov r22, r8
	jarl _Crypto_VerifyMAC, r31
.BB.LABEL.36_19:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1944
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000038), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000038)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1950
	cmp 0x00000000, r10
	setf 0x0000000A, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1953
	dispose 0x00000078, 0x00000071, [r31]
_Crypto_AESEncryptProcess:
	.stack _Crypto_AESEncryptProcess = 104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1955
	prepare 0x00000041, 0x00000060
	movea 0x00000010, r0, r20
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1963
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1964
	mov r20, r7
	jarl _Crypto_memset, r31
	mov r3, r20
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1965
	mov r20, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1966
	mov r20, r6
	jarl _Crypto_AlgorithmGetInput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1967
	cmp 0x00000001, r10
	bz9 .BB.LABEL.37_12
.BB.LABEL.37_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1971
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000001, r8
	movea 0x00000050, r3, r7
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1972
	cmp 0x00000001, r10
	bz9 .BB.LABEL.37_12
.BB.LABEL.37_2:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1977
	movhi HIGHW1(#_Crypto_StoredJob.1+0x0000004C), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x0000004C)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.37_6
.BB.LABEL.37_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000007, r2
	bz9 .BB.LABEL.37_8
.BB.LABEL.37_4:	; if_break_bb28
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.37_10
.BB.LABEL.37_5:	; switch_clause_bb
	mov r3, r7
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1980
	jarl _Crypto_AESEncryptECB, r31
	br9 .BB.LABEL.37_10
.BB.LABEL.37_6:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1983
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1984
	ld.w 0x00000054[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1983
	ld.w 0x0000000C[r2], r20
	mov 0x00000005, r8
	movea 0x00000040, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1984
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1985
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.37_10
.BB.LABEL.37_7:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1987
	andi 0x000000FF, r20, r9
	movea 0x00000040, r3, r8
	mov r3, r7
	movea 0x00000050, r3, r6
	jarl _Crypto_AESEncryptCBC, r31
	br9 .BB.LABEL.37_10
.BB.LABEL.37_8:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1991
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000005, r8
	movea 0x00000040, r3, r7
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1992
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.37_10
.BB.LABEL.37_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000040, r3, r8
	mov r3, r7
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1994
	jarl _Crypto_AESEncryptCTR, r31
.BB.LABEL.37_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 1999
	cmp 0x00000000, r20
	bz9 .BB.LABEL.37_13
.BB.LABEL.37_11:	; bb74.bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r20, r10
.BB.LABEL.37_12:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2005
	dispose 0x00000060, 0x00000041, [r31]
.BB.LABEL.37_13:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2001
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000024), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000024)[r2], r2
	ld.bu 0x00000000[r2], r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2002
	jarl _Crypto_AlgorithmOutput, r31
	br9 .BB.LABEL.37_11
_Crypto_AESDecryptProcess:
	.stack _Crypto_AESDecryptProcess = 104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2007
	prepare 0x00000041, 0x00000060
	movea 0x00000010, r0, r20
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2016
	mov r20, r7
	jarl _Crypto_memset, r31
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2017
	mov r20, r7
	jarl _Crypto_memset, r31
	mov r3, r20
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2018
	mov r20, r6
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2019
	mov r20, r6
	jarl _Crypto_AlgorithmGetInput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2020
	cmp 0x00000001, r10
	bz9 .BB.LABEL.38_12
.BB.LABEL.38_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2024
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000001, r8
	movea 0x00000050, r3, r7
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2025
	cmp 0x00000001, r10
	bz9 .BB.LABEL.38_12
.BB.LABEL.38_2:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2030
	movhi HIGHW1(#_Crypto_StoredJob.1+0x0000004C), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x0000004C)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.38_6
.BB.LABEL.38_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	cmp 0x00000007, r2
	bz9 .BB.LABEL.38_8
.BB.LABEL.38_4:	; if_break_bb28
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_5:	; switch_clause_bb
	mov r3, r7
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2033
	jarl _Crypto_AESDecryptECB, r31
	br9 .BB.LABEL.38_10
.BB.LABEL.38_6:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2036
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2037
	ld.w 0x00000054[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2036
	ld.w 0x0000000C[r2], r20
	mov 0x00000005, r8
	movea 0x00000040, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2037
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2038
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_7:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2040
	andi 0x000000FF, r20, r9
	movea 0x00000040, r3, r8
	mov r3, r7
	movea 0x00000050, r3, r6
	jarl _Crypto_AESDecryptCBC, r31
	br9 .BB.LABEL.38_10
.BB.LABEL.38_8:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2044
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000005, r8
	movea 0x00000040, r3, r7
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2045
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000040, r3, r8
	mov r3, r7
	movea 0x00000050, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2047
	jarl _Crypto_AESDecryptCTR, r31
.BB.LABEL.38_10:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2052
	cmp 0x00000000, r20
	bz9 .BB.LABEL.38_13
.BB.LABEL.38_11:	; switch_break_bb.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r20, r10
.BB.LABEL.38_12:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2058
	dispose 0x00000060, 0x00000041, [r31]
.BB.LABEL.38_13:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2054
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000024), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000024)[r2], r2
	ld.bu 0x00000000[r2], r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2055
	jarl _Crypto_AlgorithmOutput, r31
	br9 .BB.LABEL.38_11
_Crypto_CtrDrbgProcess:
	.stack _Crypto_CtrDrbgProcess = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2060
	prepare 0x00000061, 0x00000020
	movea 0x00000010, r0, r20
	movea 0x00000010, r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2065
	mov r21, r6
	mov r20, r7
	jarl _Crypto_memset, r31
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2066
	mov r20, r7
	jarl _Crypto_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2068
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	mov 0x00000003, r8
	mov r21, r7
	jarl _Get_Key, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2069
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.39_3
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r3, r7
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2071
	jarl _Crypto_CtrDrbg, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2072
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.39_4
.BB.LABEL.39_2:	; if_then_bb.if_break_bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov r20, r10
.BB.LABEL.39_3:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2078
	dispose 0x00000020, 0x00000061, [r31]
.BB.LABEL.39_4:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	movea 0x00000010, r0, r7
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2074
	jarl _Crypto_AlgorithmOutput, r31
	br9 .BB.LABEL.39_2
_Crypto_AlgorithmGetInput:
	.stack _Crypto_AlgorithmGetInput = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2278
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2284
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2282
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2284
	bz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; entry.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.40_4
.BB.LABEL.40_2:	; entry.if_break_bb_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.40_6
.BB.LABEL.40_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2288
	mov r6, r7
	add r5, r7
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000008), r0, r8
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000008)[r8], r8
	add r5, r8
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.40_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2286
	cmp r2, r5
	bl9 .BB.LABEL.40_3
.BB.LABEL.40_5:	; bb17.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
.BB.LABEL.40_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2293
	jmp [r31]
_Crypto_AlgorithmGetSecondInput:
	.stack _Crypto_AlgorithmGetSecondInput = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2295
	mov #_Crypto_StoredJob.1, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2301
	ld.w 0x00000010[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2299
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2301
	bz9 .BB.LABEL.41_2
.BB.LABEL.41_1:	; entry.bb17_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.41_4
.BB.LABEL.41_2:	; entry.if_break_bb_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.41_6
.BB.LABEL.41_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2305
	mov r6, r7
	add r5, r7
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000010), r0, r8
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000010)[r8], r8
	add r5, r8
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.41_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2303
	cmp r2, r5
	bl9 .BB.LABEL.41_3
.BB.LABEL.41_5:	; bb17.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000000, r10
.BB.LABEL.41_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2310
	jmp [r31]
_Crypto_AlgorithmOutput:
	.stack _Crypto_AlgorithmOutput = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2313
	mov 0x00000000, r2
	br9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2318
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000020), r0, r5
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000020)[r5], r5
	add r2, r5
	mov r6, r8
	add r2, r8
	ld.b 0x00000000[r8], r8
	st.b r8, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.42_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2316
	cmp r7, r2
	bl9 .BB.LABEL.42_1
.BB.LABEL.42_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2320
	jmp [r31]
_Crypto_ProcessAlgorithm:
	.stack _Crypto_ProcessAlgorithm = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2323
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2328
	movhi HIGHW1(#_Crypto_StoredJob.1+0x0000004C), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x0000004C)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2329
	ld.w 0x00000004[r2], r5
	movea 0x00000013, r0, r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2328
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2329
	bh9 .BB.LABEL.43_17
.BB.LABEL.43_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.43_18[r5]
.SWITCH.LABEL.43_18:
	br9 .BB.LABEL.43_2
	br9 .BB.LABEL.43_4
	br9 .BB.LABEL.43_6
	br9 .BB.LABEL.43_8
	br9 .BB.LABEL.43_10
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_12
	br9 .BB.LABEL.43_14
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_17
	br9 .BB.LABEL.43_16
.SWITCH.LABEL.43_18.END:
.BB.LABEL.43_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2332
	zxb r2
	addi 0xFFFFFFDF, r2, r0
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_3:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2336
	jarl _Crypto_sha256_Process, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_4:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2344
	zxb r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_5:	; switch_clause_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2348
	jarl _Crypto_GernerateMAC_Process, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_6:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2356
	zxb r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_7:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2360
	jarl _Crypto_VerifyMAC_Process, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_8:	; switch_clause_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2368
	zxb r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_9:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2372
	jarl _Crypto_AESEncryptProcess, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_10:	; switch_clause_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2385
	zxb r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_11:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2389
	jarl _Crypto_AESDecryptProcess, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_12:	; switch_clause_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2430
	zxb r2
	addi 0xFFFFFFE3, r2, r0
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_13:	; switch_clause_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2434
	jarl _Crypto_CtrDrbgProcess, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_14:	; switch_clause_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2442
	zxb r2
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.43_17
.BB.LABEL.43_15:	; switch_clause_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2446
	mov #_Crypto_StoredJob.1, r2
	ld.w 0x0000000C[r2], r8
	ld.w 0x00000008[r2], r7
	ld.w 0x00000054[r2], r6
	jarl _Crypto_RandomSeedInternal, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_16:	; switch_clause_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2505
	movhi HIGHW1(#_Crypto_StoredJob.1+0x00000054), r0, r2
	ld.w LOWW(#_Crypto_StoredJob.1+0x00000054)[r2], r6
	jarl _Crypto_KeySetValid_internal, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_17:	; switch_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CRYPTO/Crypto_ISoft.c", 2511
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_Crypto_StoredJob.1:
	.ds (96)
	.align 4
_Crypto_JobInQueue.2:
	.ds (480)
	.align 4
_Crypto_62_QueueFilledSize:
	.ds (4)
	.align 4
_Crypto_JobTempBuf:
	.ds (96)
	.align 4
_CryptoKeyStatus:
	.ds (4)
	.section .data, data
	.align 4
_Crypto_DriverStatus.3:
	.ds (4)
