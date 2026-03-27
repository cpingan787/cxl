#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Crypto\CSM\Csm.c -oDefaultBuild\Csm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_885004942ed24286827a0da5067d5cb54qlgc3ol.0c3
#@	compiled at Fri Mar 27 09:50:07 2026

	.file "..\..\Bsw\Crypto\CSM\Csm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Csm_KeyCfg
	.extern _Csm_QueCfg
	.extern _Csm_JobCfg
	.public _Csm_InitStatus, 1
	.public _Csm_JobPostponeFlag, 2
	.public _Csm_JobStates, 8
	.public _Csm_Init
	.extern _Csm_ChkInitParam
	.extern _SchM_Enter_Csm_Area_Csm
	.extern _SchM_Exit_Csm_Area_Csm
	.public _Csm_MacGenerate
	.extern _Csm_ChkServiceParam
	.public _Csm_MacVerify
	.public _Csm_SignatureGenerate
	.public _Csm_SignatureVerify
	.public _Csm_KeyElementSet
	.extern _Csm_ChkKeyEleSetParam
	.extern _CryIf_KeyElementSet
	.public _Csm_KeySetValid
	.extern _Csm_ChkKeySetValid
	.extern _CryIf_KeySetValid
	.public _Csm_KeyElementGet
	.extern _Csm_ChkKeyEleGet
	.extern _CryIf_KeyElementGet
	.public _Csm_KeyElementCopy
	.extern _Csm_ChkKeyEleCopy
	.extern _CryIf_KeyElementCopy
	.public _Csm_KeyCopy
	.extern _Csm_ChkKeyCopy
	.extern _CryIf_KeyCopy
	.public _Csm_KeyElementCopyPartial
	.extern _Csm_ChkKeyEleCopyPart
	.extern _CryIf_KeyElementCopyPartial
	.public _Csm_RandomSeed
	.extern _Csm_ChkRandomSeed
	.extern _CryIf_RandomSeed
	.public _Csm_KeyGenerate
	.extern _Csm_ChkKeyGenerate
	.extern _CryIf_KeyGenerate
	.public _Csm_KeyDerive
	.extern _Csm_ChkKeyDerive
	.extern _CryIf_KeyDerive
	.public _Csm_KeyExchangeCalcPubVal
	.extern _Csm_ChkExCalcPubVal
	.extern _CryIf_KeyExchangeCalcPubVal
	.public _Csm_KeyExchangeCalcSecret
	.extern _Csm_ChkExCalcSecVal
	.extern _CryIf_KeyExchangeCalcSecret
	.public _Csm_JobKeySetValid
	.extern _Csm_ChkJobKeySetValid
	.public _Csm_JobRandomSeed
	.extern _Csm_ChkJobRandomSeed
	.public _Csm_JobKeyGenerate
	.extern _Csm_ChkJobKeyGenerate
	.public _Csm_JobKeyDerive
	.extern _Csm_ChkJobKeyDerive
	.public _Csm_JobKeyExchangeCalcPubVal
	.extern _Csm_ChkJobExCalcPubVal
	.public _Csm_JobKeyExchangeCalcSecret
	.extern _Csm_ChkJobExCalcSec
	.public _Csm_CancelJob
	.extern _Csm_ChkCancelJob
	.extern _CryIf_CancelJob
	.public _Csm_MainFunction
	.extern _CryIf_ProcessJob

	.section .text, text
_Csm_Init:
	.stack _Csm_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 152
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 158
	jarl _Csm_ChkInitParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 159
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_1:	; entry.bb16_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 168
	mov r2, r5
	shl 0x00000002, r5
	mov #_Csm_JobStates, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 169
	mov #_Csm_JobPostponeFlag, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 166
	cmp 0x00000002, r2
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb16.bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 174
	mov r2, r5
	shl 0x00000004, r5
	mov #_Csm_QueueChRunStatus.2, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 175
	st.w r0, 0x00000008[r6]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 176
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 177
	st.b r0, 0x0000000C[r6]
	add 0x00000001, r2
.BB.LABEL.1_6:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 172
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_7:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 179
	jarl _SchM_Enter_Csm_Area_Csm, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 182
	mov #_Csm_JobQueBufUsed.3, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_9:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 180
	cmp 0x00000005, r2
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 184
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 185
	movhi HIGHW1(#_Csm_InitStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Csm_InitStatus)[r2]
.BB.LABEL.1_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 187
	dispose 0x00000000, 0x00000001, [r31]
_Csm_MacGenerate:
	.stack _Csm_MacGenerate = 96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 307
	prepare 0x00000679, 0x00000044
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000060, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 319
	jarl _Csm_ChkServiceParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 320
	cmp 0x00000000, r10
	ld.w 0x00000064[r3], r24
	ld.w 0x00000060[r3], r25
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 323
	mov r21, r6
	jarl _Csm_CheckOperaMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 324
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 326
	st.w r21, 0x00000038[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 327
	st.w r22, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 328
	st.w r23, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 329
	st.w r25, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 330
	st.w r24, 0x0000001C[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 331
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.2_3:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 335
	dispose 0x00000044, 0x00000679, [r31]
_Csm_MacVerify:
	.stack _Csm_MacVerify = 100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 364
	prepare 0x00000779, 0x00000044
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000061, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 377
	jarl _Csm_ChkServiceParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 378
	cmp 0x00000000, r10
	ld.w 0x0000006C[r3], r24
	ld.w 0x00000068[r3], r25
	ld.w 0x00000064[r3], r26
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 381
	mov r21, r6
	jarl _Csm_CheckOperaMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 382
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 384
	st.w r21, 0x00000038[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 385
	st.w r22, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 386
	st.w r23, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 387
	st.w r26, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 388
	shr 0x00000003, r25
	st.w r25, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 389
	st.w r24, 0x00000030[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 390
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.3_3:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 394
	dispose 0x00000044, 0x00000779, [r31]
_Csm_SignatureGenerate:
	.stack _Csm_SignatureGenerate = 96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 704
	prepare 0x00000679, 0x00000044
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000076, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 716
	jarl _Csm_ChkServiceParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 717
	cmp 0x00000000, r10
	ld.w 0x00000064[r3], r24
	ld.w 0x00000060[r3], r25
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 720
	mov r21, r6
	jarl _Csm_CheckOperaMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 721
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 723
	st.w r21, 0x00000038[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 724
	st.w r22, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 725
	st.w r23, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 726
	st.w r25, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 727
	st.w r24, 0x0000001C[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 728
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.4_3:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 732
	dispose 0x00000044, 0x00000679, [r31]
_Csm_SignatureVerify:
	.stack _Csm_SignatureVerify = 100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 761
	prepare 0x00000779, 0x00000044
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000064, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 775
	jarl _Csm_ChkServiceParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 776
	cmp 0x00000000, r10
	ld.w 0x0000006C[r3], r24
	ld.w 0x00000068[r3], r25
	ld.w 0x00000064[r3], r26
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 779
	mov r21, r6
	jarl _Csm_CheckOperaMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 780
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 782
	st.w r21, 0x00000038[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 783
	st.w r22, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 784
	st.w r23, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 785
	st.w r26, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 786
	st.w r25, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 787
	st.w r24, 0x00000030[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 788
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.5_3:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 792
	dispose 0x00000044, 0x00000779, [r31]
_Csm_KeyElementSet:
	.stack _Csm_KeyElementSet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 867
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000078, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 877
	mov r22, r7
	mov r23, r8
	jarl _Csm_ChkKeyEleSetParam, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 878
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 881
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 882
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _CryIf_KeyElementSet, r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 885
	dispose 0x00000000, 0x00000079, [r31]
_Csm_KeySetValid:
	.stack _Csm_KeySetValid = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 902
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x00000067, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 908
	jarl _Csm_ChkKeySetValid, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 909
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 912
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 913
	jarl _CryIf_KeySetValid, r31
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 916
	dispose 0x00000000, 0x00000041, [r31]
_Csm_KeyElementGet:
	.stack _Csm_KeyElementGet = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 945
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000068, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 955
	mov r22, r7
	mov r23, r8
	jarl _Csm_ChkKeyEleGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 956
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 959
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 960
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _CryIf_KeyElementGet, r31
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 963
	dispose 0x00000000, 0x00000079, [r31]
_Csm_KeyElementCopy:
	.stack _Csm_KeyElementCopy = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 985
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000071, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 996
	mov r22, r7
	jarl _Csm_ChkKeyEleCopy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 997
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1001
	shl 0x00000003, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1000
	mov #_Csm_KeyCfg, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1001
	add r2, r22
	ld.w 0x00000000[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1000
	shl 0x00000003, r20
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1002
	mov r21, r7
	mov r23, r9
	jarl _CryIf_KeyElementCopy, r31
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1005
	dispose 0x00000000, 0x00000079, [r31]
_Csm_KeyCopy:
	.stack _Csm_KeyCopy = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1029
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	movea 0x00000073, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1036
	jarl _Csm_ChkKeyCopy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1037
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1041
	shl 0x00000003, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1040
	mov #_Csm_KeyCfg, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1041
	add r2, r21
	ld.w 0x00000000[r21], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1040
	shl 0x00000003, r20
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1042
	jarl _CryIf_KeyCopy, r31
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1045
	dispose 0x00000000, 0x00000061, [r31]
_Csm_KeyElementCopyPartial:
	.stack _Csm_KeyElementCopyPartial = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1078
	prepare 0x00000479, 0x0000000C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000079, r0, r8
	ld.w 0x00000028[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1092
	mov r24, r7
	jarl _Csm_ChkKeyEleCopyPart, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1093
	cmp 0x00000000, r10
	ld.w 0x0000002C[r3], r2
	ld.w 0x00000024[r3], r5
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1097
	shl 0x00000003, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1096
	mov #_Csm_KeyCfg, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1097
	add r6, r24
	ld.w 0x00000000[r24], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1096
	shl 0x00000003, r20
	add r20, r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1098
	st.w r7, 0x00000004[r3]
	st.w r2, 0x00000008[r3]
	st.w r5, 0x00000000[r3]
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _CryIf_KeyElementCopyPartial, r31
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1108
	dispose 0x0000000C, 0x00000479, [r31]
_Csm_RandomSeed:
	.stack _Csm_RandomSeed = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1130
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x00000069, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1139
	jarl _Csm_ChkRandomSeed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1140
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1143
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1144
	mov r21, r7
	mov r22, r8
	jarl _CryIf_RandomSeed, r31
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1147
	dispose 0x00000000, 0x00000071, [r31]
_Csm_KeyGenerate:
	.stack _Csm_KeyGenerate = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1167
	prepare 0x00000041, 0x00000000
	mov r6, r20
	movea 0x0000006A, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1173
	jarl _Csm_ChkKeyGenerate, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1174
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1177
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1178
	jarl _CryIf_KeyGenerate, r31
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1181
	dispose 0x00000000, 0x00000041, [r31]
_Csm_KeyDerive:
	.stack _Csm_KeyDerive = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1208
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	movea 0x0000006B, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1215
	jarl _Csm_ChkKeyDerive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1216
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1220
	shl 0x00000003, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1219
	mov #_Csm_KeyCfg, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1220
	add r2, r21
	ld.w 0x00000000[r21], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1219
	shl 0x00000003, r20
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1221
	jarl _CryIf_KeyDerive, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1224
	dispose 0x00000000, 0x00000061, [r31]
_Csm_KeyExchangeCalcPubVal:
	.stack _Csm_KeyExchangeCalcPubVal = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1251
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x0000006C, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1260
	jarl _Csm_ChkExCalcPubVal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1261
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1264
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1265
	mov r21, r7
	mov r22, r8
	jarl _CryIf_KeyExchangeCalcPubVal, r31
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1268
	dispose 0x00000000, 0x00000071, [r31]
_Csm_KeyExchangeCalcSecret:
	.stack _Csm_KeyExchangeCalcSecret = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1293
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x0000006D, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1302
	jarl _Csm_ChkExCalcSecVal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1303
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1306
	shl 0x00000003, r20
	mov #_Csm_KeyCfg, r2
	add r20, r2
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1307
	mov r21, r7
	mov r22, r8
	jarl _CryIf_KeyExchangeCalcSecret, r31
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1310
	dispose 0x00000000, 0x00000071, [r31]
_Csm_JobKeySetValid:
	.stack _Csm_JobKeySetValid = 80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1329
	prepare 0x00000061, 0x00000044
	mov r6, r20
	mov r7, r21
	movea 0x0000007A, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1335
	jarl _Csm_ChkJobKeySetValid, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1336
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1339
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000003C[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1340
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.17_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1343
	dispose 0x00000044, 0x00000061, [r31]
_Csm_JobRandomSeed:
	.stack _Csm_JobRandomSeed = 92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1365
	prepare 0x00000079, 0x00000048
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x0000007B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1375
	st.w r2, 0x00000000[r3]
	jarl _Csm_ChkJobRandomSeed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1376
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1379
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000040[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1380
	st.w r22, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1381
	st.w r23, 0x00000008[r3]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1382
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1385
	dispose 0x00000048, 0x00000079, [r31]
_Csm_JobKeyGenerate:
	.stack _Csm_JobKeyGenerate = 80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1406
	prepare 0x00000061, 0x00000044
	mov r6, r20
	mov r7, r21
	movea 0x0000007C, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1412
	jarl _Csm_ChkJobKeyGenerate, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1413
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1416
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000003C[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1417
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1420
	dispose 0x00000044, 0x00000061, [r31]
_Csm_JobKeyDerive:
	.stack _Csm_JobKeyDerive = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1447
	prepare 0x00000071, 0x00000044
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x0000007D, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1456
	jarl _Csm_ChkJobKeyDerive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1457
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1460
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000003C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1461
	st.w r22, 0x00000040[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1462
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1465
	dispose 0x00000044, 0x00000071, [r31]
_Csm_JobKeyExchangeCalcPubVal:
	.stack _Csm_JobKeyExchangeCalcPubVal = 92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1493
	prepare 0x00000079, 0x00000048
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x0000007E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1505
	st.w r2, 0x00000000[r3]
	jarl _Csm_ChkJobExCalcPubVal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1506
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1509
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000040[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1510
	st.w r22, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1511
	ld.bu 0x00000000[r22], r2
	st.w r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1512
	st.w r23, 0x00000028[r3]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1513
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1516
	dispose 0x00000048, 0x00000079, [r31]
_Csm_JobKeyExchangeCalcSecret:
	.stack _Csm_JobKeyExchangeCalcSecret = 92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1542
	prepare 0x00000079, 0x00000048
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x0000007F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1552
	st.w r2, 0x00000000[r3]
	jarl _Csm_ChkJobExCalcSec, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1553
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1556
	shl 0x00000003, r21
	mov #_Csm_KeyCfg, r2
	add r21, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000040[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1557
	st.w r22, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1558
	st.w r23, 0x00000008[r3]
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1559
	mov r20, r7
	jarl _Csm_ProcessJobToCryIf.1, r31
.BB.LABEL.22_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1562
	dispose 0x00000048, 0x00000079, [r31]
_Csm_CancelJob:
	.stack _Csm_CancelJob = 112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1582
	prepare 0x00000071, 0x00000060
	mov r6, r20
	movea 0x0000006F, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1592
	jarl _Csm_ChkCancelJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1593
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1602
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1603
	mov r20, r2
	shl 0x00000002, r2
	mov #_Csm_JobStates, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1606
	mov r20, r21
	mul 0x00000014, r21, r0
	mov #_Csm_JobCfg, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1609
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1606
	ld.w 0x0000000C[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1607
	mov r22, r2
	shl 0x00000003, r2
	mov #_Csm_QueCfg, r5
	add r2, r5
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1609
	st.w r21, 0x00000050[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1611
	jarl _CryIf_CancelJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1612
	cmp 0x0000000C, r10
	mov r10, r21
	bnz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1627
	mov #_Csm_JobPostponeFlag, r2
	add r20, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.23_4:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1634
	mov r20, r6
	mov r22, r7
	jarl _Csm_DequeueJobInQue.1, r31
.BB.LABEL.23_5:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1636
	jarl _SchM_Exit_Csm_Area_Csm, r31
.BB.LABEL.23_6:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1639
	dispose 0x00000060, 0x00000071, [r31]
_Csm_MainFunction:
	.stack _Csm_MainFunction = 120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1653
	prepare 0x00000479, 0x00000060
	mov 0x00000000, r20
	br9 .BB.LABEL.24_9
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1669
	mov r20, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r20, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1676
	mov r20, r2
	shl 0x00000003, r2
	mov #_Csm_QueCfg, r5
	add r2, r5
	ld.w 0x00000004[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1677
	mov r20, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r22
	add r2, r22
	ld.w 0x00000000[r22], r2
	ld.w 0x00000048[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1679
	mov r23, r2
	mul 0x00000014, r2, r0
	mov #_Csm_JobCfg, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	st.w r2, 0x00000058[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1680
	ld.w 0x00000004[r5], r2
	st.w r2, 0x00000050[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1681
	ld.w 0x00000000[r5], r2
	st.w r2, 0x0000004C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1682
	st.w r23, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1683
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1684
	mov r23, r2
	shl 0x00000002, r2
	mov #_Csm_JobStates, r24
	add r2, r24
	ld.w 0x00000000[r24], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1685
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1686
	ld.w 0x00000000[r22], r2
	movea 0x00000044, r0, r5
	movea 0x00000008, r3, r6
	add r6, r5
	br9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_break_bb
	ld.w 0x00000000[r2], r7
	st.w r7, 0x00000000[r6]
	add 0x00000004, r6
.BB.LABEL.24_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	add 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1686
	cmp r6, r5
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1687
	mov r21, r6
	jarl _CryIf_ProcessJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1688
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_8
.BB.LABEL.24_7:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1690
	jarl _SchM_Enter_Csm_Area_Csm, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1691
	st.w r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1692
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1694
	mov r23, r6
	mov r20, r7
	jarl _Csm_DequeueJobInQue.1, r31
.BB.LABEL.24_8:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	add 0x00000001, r20
.BB.LABEL.24_9:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1666
	cmp 0x00000000, r20
	bz9 .BB.LABEL.24_1
.BB.LABEL.24_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1697
	dispose 0x00000060, 0x00000479, [r31]
_Csm_ProcessJobToCryIf.1:
	.stack _Csm_ProcessJobToCryIf.1 = 184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1706
	prepare 0x00000679, 0x0000007C
	movea 0xFFFFFFE0, r3, r3
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1722
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1723
	mov r21, r2
	shl 0x00000002, r2
	mov #_Csm_JobStates, r22
	add r2, r22
	ld.w 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1724
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1725
	mov r21, r2
	mul 0x00000014, r2, r0
	mov #_Csm_JobCfg, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	add 0x00000008, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_5
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	ld.w 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_2:	; bb.if_break_bb228_crit_edge
	mov 0x00000001, r23
.BB.LABEL.25_3:	; if_break_bb228
	mov r23, r10
	movea 0x00000020, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1836
	dispose 0x0000007C, 0x00000679, [r31]
.BB.LABEL.25_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	ld.w 0x0000001C[r20], r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1734
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000094[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1735
	mov r21, r2
	mul 0x00000014, r2, r0
	mov #_Csm_JobCfg, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	st.w r2, 0x0000008C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1736
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000088[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1737
	st.w r21, 0x0000003C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1738
	st.w r23, 0x00000040[r3]
	movea 0x00000044, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1739
	movea 0x00000044, r3, r6
	add r6, r2
	mov r20, r7
	br9 .BB.LABEL.25_7
.BB.LABEL.25_6:	; if_else_bb
	ld.w 0x00000000[r7], r8
	st.w r8, 0x00000000[r6]
	add 0x00000004, r7
	add 0x00000004, r6
.BB.LABEL.25_7:	; if_else_bb
	cmp r6, r2
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1741
	ld.w 0x0000000C[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1743
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1735
	add 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1743
	ld.w 0x0000000C[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1742
	mov r24, r2
	shl 0x00000003, r2
	mov #_Csm_QueCfg, r6
	add r2, r6
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1744
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.25_14
.BB.LABEL.25_9:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	movea 0x0000003C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1746
	jarl _CryIf_ProcessJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1747
	cmp 0x00000001, r25
	mov r10, r23
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_10:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1750
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1751
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.25_12
.BB.LABEL.25_11:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1757
	ld.w 0x00000038[r20], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.25_13
.BB.LABEL.25_12:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	st.w r0, 0x00000000[r22]
.BB.LABEL.25_13:	; if_break_bb109
	jarl _SchM_Exit_Csm_Area_Csm, r31
	br9 .BB.LABEL.25_3
.BB.LABEL.25_14:	; if_else_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1772
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.25_22
.BB.LABEL.25_15:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1775
	mov r24, r21
	shl 0x00000004, r21
	mov #_Csm_QueueChRunStatus.2, r23
	add r21, r23
	ld.w 0x00000004[r23], r21
	ld.w 0x00000000[r5], r23
	ld.w 0x00000004[r23], r23
	cmp r21, r23
	bh9 .BB.LABEL.25_18
.BB.LABEL.25_16:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r24, r21
	shl 0x00000004, r21
	mov #_Csm_QueueChRunStatus.2, r23
	add r21, r23
	ld.w 0x00000008[r23], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.25_18
.BB.LABEL.25_17:	; bb129.if_break_bb228_crit_edge
	mov 0x00000002, r23
	br9 .BB.LABEL.25_3
.BB.LABEL.25_18:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1777
	shl 0x00000004, r24
	mov #_Csm_QueueChRunStatus.2, r21
	add r24, r21
	mov 0x00000001, r23
	st.b r23, 0x0000000C[r21]
	movea 0x0000003C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1778
	jarl _CryIf_ProcessJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1777
	add 0x0000000C, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1780
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.25_21
.BB.LABEL.25_19:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	ld.w 0x00000038[r20], r20
	andi 0x00000004, r20, r0
	bnz9 .BB.LABEL.25_21
.BB.LABEL.25_20:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1783
	jarl _SchM_Enter_Csm_Area_Csm, r31
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1784
	st.w r20, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1785
	jarl _SchM_Exit_Csm_Area_Csm, r31
.BB.LABEL.25_21:	; if_break_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1788
	st.b r0, 0x00000000[r21]
	jr .BB.LABEL.25_3
.BB.LABEL.25_22:	; if_else_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1799
	mov r24, r23
	shl 0x00000004, r23
	mov #_Csm_QueueChRunStatus.2, r2
	add r23, r2
	ld.w 0x00000008[r2], r23
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.25_30
.BB.LABEL.25_23:	; if_then_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	movea 0x0000003C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1802
	jarl _CryIf_ProcessJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1803
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.25_25
.BB.LABEL.25_24:	; if_then_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1805
	jarl _SchM_Enter_Csm_Area_Csm, r31
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1806
	st.w r20, 0x00000000[r22]
	br9 .BB.LABEL.25_13
.BB.LABEL.25_25:	; if_else_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1809
	cmp 0x00000002, r23
	bnz17 .BB.LABEL.25_3
.BB.LABEL.25_26:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1812
	ld.w 0x00000000[r20], r8
	ld.w 0x00000004[r20], r9
	add 0x00000008, r20
	movea 0x0000003C, r0, r2
	add r3, r2
	mov r3, r5
	br9 .BB.LABEL.25_28
.BB.LABEL.25_27:	; if_then_bb199
	ld.w 0x00000000[r20], r6
	st.w r6, 0x00000000[r5]
	add 0x00000004, r20
	add 0x00000004, r5
.BB.LABEL.25_28:	; if_then_bb199
	cmp r5, r2
	bnz9 .BB.LABEL.25_27
.BB.LABEL.25_29:	; if_then_bb199
	mov r21, r6
	mov r24, r7
	jarl _Csm_EnqueueJobToQue.1, r31
	jr .BB.LABEL.25_3
.BB.LABEL.25_30:	; if_else_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1822
	mov r24, r2
	shl 0x00000003, r2
	mov #_Csm_QueCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp r2, r23
	bnc9 .BB.LABEL.25_17
.BB.LABEL.25_31:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1825
	ld.w 0x00000000[r20], r8
	ld.w 0x00000004[r20], r9
	add 0x00000008, r20
	movea 0x0000003C, r0, r23
	add r3, r23
	mov r3, r2
	br9 .BB.LABEL.25_33
.BB.LABEL.25_32:	; if_then_bb218
	ld.w 0x00000000[r20], r5
	st.w r5, 0x00000000[r2]
	add 0x00000004, r20
	add 0x00000004, r2
.BB.LABEL.25_33:	; if_then_bb218
	cmp r2, r23
	bnz9 .BB.LABEL.25_32
.BB.LABEL.25_34:	; if_then_bb218
	mov r21, r6
	mov r24, r7
	jarl _Csm_EnqueueJobToQue.1, r31
	mov 0x00000000, r10
	movea 0x00000020, r3, r3
	dispose 0x0000007C, 0x00000679, [r31]
_Csm_EnqueueJobToQue.1:
	.stack _Csm_EnqueueJobToQue.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1839
	add 0xFFFFFFF8, r3
	st23.dw r8, 0x00000000[r3]
	prepare 0x00000679, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1860
	mov r7, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r20
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1863
	ld.w 0x00000004[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1861
	ld.w 0x00000000[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1863
	addi 0x00000004, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1859
	mov r6, r8
	mul 0x00000014, r8, r0
	mov #_Csm_JobCfg, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1863
	cmp 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1859
	ld.w 0x00000004[r9], r8
	ld.w 0x00000004[r8], r22
	movea 0x00000020, r3, r23
	mov r6, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1863
	bz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	cmp r2, r22
	bnh9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1865
	st.w r22, 0x00000000[r5]
.BB.LABEL.26_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1867
	mov r7, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r25
	add r2, r25
	ld.w 0x00000008[r25], r2
	add 0x00000008, r25
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.26_10
.BB.LABEL.26_4:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1870
	jarl _Csm_FindIdleQueue.1, r31
	st.w r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1871
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_6
.BB.LABEL.26_5:	; if_then_bb55.if_break_bb215_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.26_13
.BB.LABEL.26_6:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1873
	st.w r24, 0x00000048[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1874
	ld.w 0x00000000[r20], r2
	st.w r22, 0x0000004C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1875
	ld.w 0x00000000[r20], r2
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1876
	ld.w 0x00000000[r20], r2
	ld.w 0x00000000[r3], r21
	st.w r21, 0x00000050[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1877
	ld.w 0x00000000[r20], r2
	add 0x00000004, r2
	movea 0x00000044, r0, r20
	add r2, r20
	br9 .BB.LABEL.26_8
.BB.LABEL.26_7:	; if_then_bb63
	ld.w 0x00000000[r23], r21
	st.w r21, 0x00000000[r2]
	add 0x00000004, r23
	add 0x00000004, r2
.BB.LABEL.26_8:	; if_then_bb63
	cmp r2, r20
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_9:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	mov 0x00000000, r10
	br9 .BB.LABEL.26_14
.BB.LABEL.26_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1883
	shl 0x00000003, r7
	mov #_Csm_QueCfg, r5
	add r7, r5
	ld.w 0x00000000[r5], r5
	cmp r5, r2
	bnc9 .BB.LABEL.26_5
.BB.LABEL.26_11:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1886
	jarl _Csm_FindIdleQueue.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1887
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_15
.BB.LABEL.26_12:	; if_then_bb99.if_break_bb215_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000002, r10
.BB.LABEL.26_13:	; if_break_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1941
	zxb r10
.BB.LABEL.26_14:	; if_break_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	dispose 0x00000004, 0x00000679
	add 0x00000008, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1941
	jmp [r31]
.BB.LABEL.26_15:	; if_else_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1894
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000050[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1895
	st.w r24, 0x00000048[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1896
	st.w r22, 0x0000004C[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1897
	addi 0x00000004, r10, r2
	movea 0x00000044, r0, r5
	add r2, r5
	br9 .BB.LABEL.26_17
.BB.LABEL.26_16:	; if_else_bb106
	ld.w 0x00000000[r23], r6
	st.w r6, 0x00000000[r2]
	add 0x00000004, r23
	add 0x00000004, r2
.BB.LABEL.26_17:	; if_else_bb106
	cmp r2, r5
	bnz9 .BB.LABEL.26_16
.BB.LABEL.26_18:	; if_else_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000000, r2
	mov r2, r5
	mov r2, r6
	br9 .BB.LABEL.26_28
.BB.LABEL.26_19:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1901
	ld.w 0x00000000[r20], r7
	ld.w 0x0000004C[r7], r8
	cmp r8, r22
	bnh9 .BB.LABEL.26_23
.BB.LABEL.26_20:	; if_then_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1904
	st.w r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1905
	st.w r7, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1906
	ld.w 0x0000004C[r21], r6
	cmp r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1908
	cmov 0x0000000B, r10, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1910
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.26_22
.BB.LABEL.26_21:	; if_then_bb129.if_break_bb186_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000001, r6
	br9 .BB.LABEL.26_26
.BB.LABEL.26_22:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1912
	ld.w 0x00000000[r20], r6
	st.w r6, 0x00000000[r2]
	mov 0x00000001, r6
	br9 .BB.LABEL.26_26
.BB.LABEL.26_23:	; if_else_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1918
	ld.w 0x00000000[r7], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.26_25
.BB.LABEL.26_24:	; if_then_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1920
	st.w r8, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1921
	ld.w 0x00000000[r20], r6
	st.w r10, 0x00000000[r6]
	mov 0x00000001, r6
	br9 .BB.LABEL.26_26
.BB.LABEL.26_25:	; if_else_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1927
	st.w r8, 0x00000000[r20]
	mov r7, r2
.BB.LABEL.26_26:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1930
	andi 0x000000FF, r6, r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.26_29
.BB.LABEL.26_27:	; if_break_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	add 0x00000001, r5
.BB.LABEL.26_28:	; bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1898
	ld.w 0x00000000[r25], r7
	cmp r7, r5
	bl9 .BB.LABEL.26_19
.BB.LABEL.26_29:	; bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1935
	st.w r21, 0x00000000[r20]
	br9 .BB.LABEL.26_9
_Csm_DequeueJobInQue.1:
	.stack _Csm_DequeueJobInQue.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1944
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1956
	mov r7, r2
	shl 0x00000004, r2
	mov #_Csm_QueueChRunStatus.2, r20
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1957
	ld.w 0x00000000[r20], r2
	ld.w 0x00000048[r2], r5
	cmp r5, r6
	mov r7, r21
	bz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry.bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000001, r5
	br9 .BB.LABEL.27_9
.BB.LABEL.27_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1960
	mov r21, r5
	shl 0x00000004, r5
	mov #_Csm_QueueChRunStatus.2, r6
	add r5, r6
	add 0x00000004, r6
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0xFFFFFFFF, r2
	br9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1962
	ld.w 0x0000004C[r2], r2
.BB.LABEL.27_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1968
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1969
	ld.w 0x00000000[r20], r2
	ld.w 0x00000050[r2], r2
	mov #_Csm_JobQueBufUsed.3, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1970
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1971
	ld.w 0x00000000[r20], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1972
	shl 0x00000004, r21
	mov #_Csm_QueueChRunStatus.2, r2
	add r21, r2
	ld.w 0x00000008[r2], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000008[r2]
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.27_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1979
	ld.w 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1981
	ld.w 0x00000048[r23], r7
	cmp r7, r6
	bnz9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1983
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1984
	ld.w 0x00000050[r23], r2
	mov #_Csm_JobQueBufUsed.3, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1985
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1986
	ld.w 0x00000000[r23], r2
	ld.w 0x00000000[r20], r5
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1987
	ld.w 0x00000000[r22], r2
	add 0xFFFFFFFF, r2
	st.w r2, 0x00000000[r22]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1989
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.27_8:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	add 0x00000001, r5
.BB.LABEL.27_9:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1976
	mov r21, r7
	shl 0x00000004, r7
	mov #_Csm_QueueChRunStatus.2, r22
	add r7, r22
	ld.w 0x00000008[r22], r7
	add 0x00000008, r22
	cmp r7, r5
	bl9 .BB.LABEL.27_6
.BB.LABEL.27_10:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1994
	dispose 0x00000000, 0x00000079, [r31]
_Csm_FindIdleQueue.1:
	.stack _Csm_FindIdleQueue.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 1997
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2003
	jarl _SchM_Enter_Csm_Area_Csm, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.28_3
.BB.LABEL.28_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2006
	mov #_Csm_JobQueBufUsed.3, r2
	add r21, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_4
.BB.LABEL.28_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	add 0x00000001, r21
.BB.LABEL.28_3:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2004
	cmp 0x00000005, r21
	bl9 .BB.LABEL.28_1
.BB.LABEL.28_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2011
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2012
	cmp 0x00000005, r21
	bz9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2015
	st.w r21, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2016
	jarl _SchM_Enter_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2017
	mov #_Csm_JobQueBufUsed.3, r2
	add r21, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2018
	jarl _SchM_Exit_Csm_Area_Csm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2014
	mul 0x00000054, r21, r0
	mov #_Csm_JobQueBuf.1, r10
	add r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2018
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.28_6:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2021
	dispose 0x00000000, 0x00000061, [r31]
_Csm_CheckOperaMode.1:
	.stack _Csm_CheckOperaMode.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2024
	cmp 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2028
	setf 0x00000002, r2
	addi 0xFFFFFFFF, r6, r5
	cmp 0x00000002, r5
	setf 0x00000001, r5
	or r2, r5
	cmp 0x00000004, r6
	setf 0x00000002, r2
	or r2, r5
	cmp 0x00000007, r6
	setf 0x00000002, r2
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2032
	xori 0x00000001, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Crypto/CSM/Csm.c", 2035
	jmp [r31]
	.section .bss, bss
	.align 4
_Csm_JobQueBuf.1:
	.ds (420)
	.align 4
_Csm_QueueChRunStatus.2:
	.ds (16)
_Csm_JobQueBufUsed.3:
	.ds (5)
_Csm_InitStatus:
	.ds (1)
_Csm_JobPostponeFlag:
	.ds (2)
	.align 4
_Csm_JobStates:
	.ds (8)
