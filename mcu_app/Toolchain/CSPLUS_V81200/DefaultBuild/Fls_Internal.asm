#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\fls\src\Fls_Internal.c -oDefaultBuild\Fls_Internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bc107176162b4e7981892d86bf3566d1yks4bgj4.lhi
#@	compiled at Fri Mar 27 09:50:56 2026

	.file "..\..\Bsw\Mcal\fls\src\Fls_Internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _FLS_GpFACIReg_BaseAddress
	.extern _FLS_GpECCReg_BaseAddress
	.extern _Fls_GulTempBuffer
	.extern _Fls_GpConfigPtr
	.extern _Fls_GstVar
	.extern _Fls_GstBackUpVar
	.extern _Fls_GenJobResult
	.extern _Fls_GenState
	.extern _Fls_GenCurrentMode
	.extern _Fls_GblTimeOutMonitor
	.extern _Fls_GblJobSuspended
	.extern _Fls_GblJobSuspendRequest
	.extern _Fls_GulTimeOutCounter
	.public _Fls_InitiateEraseJob
	.extern _Fls_FcuErasePreCheck
	.extern _Fls_FcuSwitchMode
	.extern _SchM_Enter_Fls_FLS_REGISTER_PROTECTION
	.extern _SchM_Exit_Fls_FLS_REGISTER_PROTECTION
	.extern _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION
	.extern _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION
	.public _Fls_MainErase
	.extern _Fls_FcuCheckJobStatus
	.public _Fls_InitiateWriteJob
	.extern _Fls_FcuWritePreCheck
	.public _Fls_MainWrite
	.public _Fls_MainRead
	.public _Fls_ProcessRead
	.public _Fls_PerformBlankCheckForReadOp
	.public _Fls_PerformReadCheckECC
	.extern _Det_ReportRuntimeError
	.extern _Fls_FcuBlankCheckResult
	.public _Fls_MainCompare
	.public _Fls_CompareWithTargetBuff
	.public _Fls_ProcessCompare
	.public _Fls_MainReadImm
	.public _Fls_ProcessReadImm
	.extern _Fls_FcuDataCopy
	.extern _Fls_FcuOffsetDataCopy
	.public _Fls_ReadMisAlignHandler
	.public _Fls_GetMaxReadBytes
	.public _Fls_ReportECCErrorToCbk
	.public _Fls_CopyToTargetBuff
	.public _Fls_ProcessCancel
	.extern _Fls_FcuForcedStop
	.extern _Fls_FcuClearStatus
	.public _Fls_InitiateBlankCheckJob
	.extern _Fls_FcuCalculateBlankCheckAddr
	.extern _Fls_FcuPerformBlankCheck
	.public _Fls_MainBlankCheck
	.public _Fls_ProcessJobResult
	.public _Fls_CallJobNotification
	.extern _Fls_FcuCheckBCJobStatus
	.extern _Fls_FcuResetErrorBits
	.public _Fls_ProcessResume
	.public _Fls_RestoreJobData
	.public _Fls_ClearBackUpData
	.public _Fls_ProcessSuspend
	.public _Fls_BackupJobData
	.public _Fls_TimeOutCheckAndProcessing
	.public _Fls_SuspendPreCheck

	.section .text, text
_Fls_InitiateEraseJob:
	.stack _Fls_InitiateEraseJob = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 713
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 736
	jarl _Fls_FcuErasePreCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 738
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 743
	movhi HIGHW1(#_Fls_GulTimeOutCounter), r0, r2
	movea 0x00002710, r0, r5
	st.w r5, LOWW(#_Fls_GulTimeOutCounter)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 748
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Fls_GblTimeOutMonitor)[r2]
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 752
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 754
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb.if_break_bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 758
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 760
	movhi HIGHW1(#_Fls_GstVar+0x00000010), r0, r21
	ld.w LOWW(#_Fls_GstVar+0x00000010)[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 766
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 760
	movhi 0x000000E0, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 766
	st.w r7, 0x00000030[r6]
	mov 0x00E0003F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 762
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 778
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	st.w r2, 0x00000034[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 793
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	movhi 0x0000FFA2, r0, r2
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 797
	st.b r5, 0x00000000[r2]
	movea 0xFFFFFFD0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 799
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 803
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 805
	ld.w LOWW(#_Fls_GstVar+0x00000010)[r21], r2
	movea 0x00000040, r2, r2
	st.w r2, LOWW(#_Fls_GstVar+0x00000010)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 808
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r2
.BB.LABEL.1_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r20, r10
.BB.LABEL.1_6:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 824
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 827
	mov r2, r10
	dispose 0x00000000, 0x00000061, [r31]
_Fls_MainErase:
	.stack _Fls_MainErase = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 875
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 933
	jarl _Fls_FcuCheckJobStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 935
	addi 0x00000000, r10, r20
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 939
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 943
	mov #_Fls_GstVar, r2
	ld.w 0x00000010[r2], r5
	ld.w 0x00000014[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 946
	jarl _Fls_InitiateEraseJob, r31
	cmp 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 981
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000006, r20
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_5:	; if_then_bb17
	cmp 0x0000000A, r20
	bz9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; if_else_bb
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 959
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.2_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000006, r20
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_8:	; if_then_bb48
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 986
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.2_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 998
	dispose 0x00000000, 0x00000041, [r31]
_Fls_InitiateWriteJob:
	.stack _Fls_InitiateWriteJob = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1045
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1070
	jarl _Fls_FcuWritePreCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1072
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_9
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1077
	movhi HIGHW1(#_Fls_GulTimeOutCounter), r0, r2
	movea 0x000006A4, r0, r5
	st.w r5, LOWW(#_Fls_GulTimeOutCounter)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1083
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Fls_GblTimeOutMonitor)[r2]
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1087
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1089
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb.if_break_bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_8
.BB.LABEL.3_4:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1093
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1095
	mov #_Fls_GstVar, r21
	ld.w 0x00000010[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1099
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1095
	movhi 0x000000E0, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1099
	st.w r7, 0x00000030[r6]
	mov 0x00E00003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1111
	add r6, r2
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	st.w r2, 0x00000034[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1133
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1136
	ld.w 0x00000000[r21], r2
	movhi 0x0000FFA2, r0, r5
	movea 0xFFFFFFE8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1140
	st.b r6, 0x00000000[r5]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1142
	st.b r6, 0x00000000[r5]
	mov 0x00000000, r5
	br9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1147
	ld.b 0x00000001[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1148
	shl 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1150
	ld.bu 0x00000000[r2], r7
	or r7, r6
	movhi 0x0000FFA2, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1153
	st.h r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1155
	add 0x00000001, r5
	add 0x00000002, r2
.BB.LABEL.3_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1143
	cmp 0x00000002, r5
	bl9 .BB.LABEL.3_5
.BB.LABEL.3_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1159
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1161
	mov #_Fls_GstVar, r2
	ld.w 0x00000010[r2], r5
	add 0x00000004, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1163
	ld.w 0x00000000[r2], r5
	add 0x00000004, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1166
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	movhi 0x0000FFA2, r0, r2
	movea 0xFFFFFFD0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1171
	st.b r5, 0x00000000[r2]
	mov 0x00000000, r2
.BB.LABEL.3_8:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r20, r10
.BB.LABEL.3_9:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1187
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1190
	mov r2, r10
	dispose 0x00000000, 0x00000061, [r31]
_Fls_MainWrite:
	.stack _Fls_MainWrite = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1577
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1634
	jarl _Fls_FcuCheckJobStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1636
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1653
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1658
	mov #_Fls_GstVar, r2
	ld.w 0x00000010[r2], r5
	ld.w 0x00000014[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1661
	jarl _Fls_InitiateWriteJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1662
	cmp 0x00000001, r10
	bz9 .BB.LABEL.4_8
	br9 .BB.LABEL.4_9
.BB.LABEL.4_5:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1742
	jarl _Fls_ProcessJobResult, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_6:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1759
	cmp 0x00000005, r10
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb54
	mov 0x00000001, r6
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.4_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1777
	dispose 0x00000000, 0x00000001, [r31]
_Fls_MainRead:
	.stack _Fls_MainRead = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1823
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1860
	jarl _Fls_ProcessRead, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1862
	cmp 0x00000002, r10
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1865
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1867
	movhi HIGHW1(#_Fls_GenState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fls_GenState)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1869
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	st.w r10, LOWW(#_Fls_GenJobResult)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1875
	jarl _Fls_CallJobNotification, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1888
	dispose 0x00000000, 0x00000001, [r31]
_Fls_ProcessRead:
	.stack _Fls_ProcessRead = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1944
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1960
	jarl _Fls_GetMaxReadBytes, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1963
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r2], r2
	cmp r2, r10
	mov r10, r20
	bnc9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1968
	mov #_Fls_GstVar, r2
	ld.w 0x00000018[r2], r5
	sub r20, r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1970
	ld.w 0x0000001C[r2], r5
	ld.bu 0x00000020[r2], r6
	sub r20, r6
	add r6, r5
	st.w r5, 0x0000001C[r2]
	mov 0x00000000, r21
	mov r20, r22
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1976
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r21
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r21], r22
	mov 0x00000001, r21
.BB.LABEL.6_3:	; bb.preheader
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	shr 0x00000002, r22
	mov 0x00000000, r23
.BB.LABEL.6_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1983
	movhi HIGHW1(#_Fls_GstVar+0x0000000C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000000C)[r2], r2
	movhi 0x000000E0, r2, r6
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1985
	jarl _Fls_PerformBlankCheckForReadOp, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1988
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1994
	movhi HIGHW1(#_Fls_GstVar+0x00000004), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000004)[r2], r2
	mov 0xFFFFFFFF, r5
	st.w r5, 0x00000000[r2]
	br9 .BB.LABEL.6_9
.BB.LABEL.6_6:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1999
	cmp 0x00000007, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2002
	mov #_Fls_GstVar, r2
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2004
	ld.w 0x0000000C[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2005
	jarl _Fls_PerformReadCheckECC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2007
	cmp 0x00000008, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2010
	mov #_Fls_GstVar, r23
	ld.w 0x0000000C[r23], r2
	st.w r2, 0x00000008[r23]
	mov 0x00000001, r23
.BB.LABEL.6_9:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2024
	mov #_Fls_GstVar, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2028
	ld.w 0x0000000C[r2], r5
	add 0x00000004, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2027
	add 0xFFFFFFFF, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 1980
	cmp 0x00000000, r22
	bz9 .BB.LABEL.6_12
.BB.LABEL.6_10:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000000, r24
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_11:	; bb70
	cmp 0x00000008, r24
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_12:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2035
	cmp 0x00000000, r24
	bz9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000008, r24
	bnz9 .BB.LABEL.6_15
.BB.LABEL.6_14:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2039
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000024)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2041
	mov r21, r6
	mov r20, r7
	jarl _Fls_CopyToTargetBuff, r31
	br9 .BB.LABEL.6_21
.BB.LABEL.6_15:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2044
	cmp 0x00000009, r24
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.6_20
.BB.LABEL.6_17:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2058
	cmp 0x0000000A, r24
	bz9 .BB.LABEL.6_19
.BB.LABEL.6_18:	; if_else_bb119.if_break_bb129_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_21
.BB.LABEL.6_19:	; if_then_bb124
	mov 0x00000003, r9
.BB.LABEL.6_20:	; if_then_bb124
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
.BB.LABEL.6_21:	; if_break_bb129
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2079
	andi 0x000000FF, r23, r7
	mov r24, r6
	jarl _Fls_ReportECCErrorToCbk, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2081
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	st.w r24, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2084
	mov r20, r10
	dispose 0x00000000, 0x00000479, [r31]
_Fls_PerformBlankCheckForReadOp:
	.stack _Fls_PerformBlankCheckForReadOp = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2142
	prepare 0x00000061, 0x00000004
	mov r6, r20
	mov r7, r21
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2170
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2171
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2176
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2181
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r2
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r2], r5
	st.w r20, 0x00000030[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2168
	add r20, r21
	add 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2188
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r2], r2
	st.w r21, 0x00000034[r2]
	movhi 0x0000FFA2, r0, r2
	movea 0x00000071, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2195
	st.b r5, 0x00000000[r2]
	movea 0xFFFFFFD0, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2197
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2202
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	movea 0x00000100, r0, r2
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2210
	movhi HIGHW1(#_FLS_GpFACIReg_BaseAddress), r0, r5
	ld.w LOWW(#_FLS_GpFACIReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2212
	add 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2208
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	ld.w 0x00000000[r3], r5
	andi 0x00008000, r5, r0
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2227
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2229
	jarl _Fls_ProcessCancel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2231
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2233
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2235
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2244
	jarl _Fls_CallJobNotification, r31
.BB.LABEL.7_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2253
	jarl _Fls_FcuBlankCheckResult, r31
	mov r10, r20
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2255
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2256
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2258
	mov r20, r10
.BB.LABEL.7_8:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2283
	dispose 0x00000004, 0x00000061, [r31]
_Fls_PerformReadCheckECC:
	.stack _Fls_PerformReadCheckECC = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2328
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2341
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2345
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r2
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.b r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2356
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2376
	ld.bu 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2357
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r6
	st.b r0, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2371
	ld.w 0x00000000[r20], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2373
	st.w r6, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2375
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r2
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2376
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.if_break_bb34_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2378
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb.if_break_bb34_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000009, r20
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb
	mov 0x00000008, r20
.BB.LABEL.8_5:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2394
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r2
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r2
	st.b r5, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2408
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2413
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
_Fls_MainCompare:
	.stack _Fls_MainCompare = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2458
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2463
	jarl _Fls_ProcessCompare, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2464
	cmp 0x00000002, r10
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2467
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2469
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	st.w r10, LOWW(#_Fls_GenJobResult)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2471
	movhi HIGHW1(#_Fls_GenState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fls_GenState)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2474
	jarl _Fls_CallJobNotification, r31
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2482
	dispose 0x00000000, 0x00000001, [r31]
_Fls_CompareWithTargetBuff:
	.stack _Fls_CompareWithTargetBuff = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2529
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2544
	cmp 0x00000001, r6
	mov r6, r20
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2547
	jarl _Fls_GetMaxReadBytes, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2549
	mov #_Fls_GstVar, r22
	ld.bu 0x00000020[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2553
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2549
	sub r23, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2556
	ld.w 0x00000004[r22], r2
	sub r21, r2
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2560
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2567
	mov #_Fls_GstVar, r21
	ld.w 0x00000018[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2571
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2574
	ld.w 0x00000004[r21], r2
	ld.bu 0x00000020[r21], r5
	add r5, r2
	sub r22, r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2578
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2581
	ld.w 0x0000001C[r21], r21
.BB.LABEL.10_3:	; bb47.preheader
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r22
	mov r22, r23
	br9 .BB.LABEL.10_7
.BB.LABEL.10_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2587
	mov #_Fls_GstVar, r2
	ld.w 0x00000000[r2], r5
	ld.bu 0x00000000[r5], r5
	ld.w 0x00000004[r2], r2
	ld.bu 0x00000000[r2], r2
	cmp r2, r5
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r23
	mov r21, r22
.BB.LABEL.10_6:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2602
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2605
	mov #_Fls_GstVar, r2
	ld.w 0x00000000[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2606
	ld.w 0x00000004[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2609
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2599
	add 0x00000001, r22
.BB.LABEL.10_7:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2584
	cmp r21, r22
	bl9 .BB.LABEL.10_4
.BB.LABEL.10_8:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2613
	andi 0x000000FF, r23, r0
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2615
	cmp 0x00000001, r20
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_10:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2619
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2623
	mov #_Fls_GstVar, r2
	ld.w 0x00000004[r2], r5
	ld.bu 0x00000020[r2], r6
	add r21, r6
	sub r6, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2627
	st.b r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2630
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2632
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.10_11:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000004, r20
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2648
	mov r20, r9
	jarl _Det_ReportRuntimeError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2652
	mov r20, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.10_12:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2656
	dispose 0x00000000, 0x00000079, [r31]
_Fls_ProcessCompare:
	.stack _Fls_ProcessCompare = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2707
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2726
	jarl _Fls_GetMaxReadBytes, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2729
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r2], r2
	cmp r2, r10
	mov r10, r20
	bnc9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2735
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2738
	mov #_Fls_GstVar, r2
	ld.w 0x00000018[r2], r5
	sub r20, r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2741
	ld.w 0x0000001C[r2], r5
	ld.bu 0x00000020[r2], r6
	sub r20, r6
	add r6, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2745
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000000, r21
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2751
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r20
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r20], r20
	mov 0x00000001, r21
.BB.LABEL.11_3:	; bb.preheader
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	shr 0x00000002, r20
	mov 0x00000000, r22
.BB.LABEL.11_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2758
	mov #_Fls_GstVar, r2
	ld.w 0x0000000C[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2760
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2762
	jarl _Fls_PerformReadCheckECC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2764
	cmp 0x00000008, r10
	mov r10, r23
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2767
	mov #_Fls_GstVar, r22
	ld.w 0x0000000C[r22], r2
	st.w r2, 0x00000008[r22]
	mov 0x00000001, r22
.BB.LABEL.11_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2778
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2781
	mov #_Fls_GstVar, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2785
	ld.w 0x0000000C[r2], r5
	add 0x00000004, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2789
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2791
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2756
	cmp 0x00000000, r20
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_7:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000000, r23
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_8:	; bb49
	cmp 0x00000008, r23
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_9:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2796
	cmp 0x00000000, r23
	bz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000008, r23
	bnz9 .BB.LABEL.11_12
.BB.LABEL.11_11:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2799
	mov r21, r6
	jarl _Fls_CompareWithTargetBuff, r31
	br9 .BB.LABEL.11_13
.BB.LABEL.11_12:	; if_else_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movea 0x00000010, r0, r9
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2809
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
.BB.LABEL.11_13:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2817
	andi 0x000000FF, r22, r7
	mov r23, r6
	jarl _Fls_ReportECCErrorToCbk, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2820
	mov r20, r10
	dispose 0x00000000, 0x00000079, [r31]
_Fls_MainReadImm:
	.stack _Fls_MainReadImm = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2864
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2869
	jarl _Fls_ProcessReadImm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2870
	cmp 0x00000002, r10
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2873
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2875
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	st.w r10, LOWW(#_Fls_GenJobResult)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2877
	movhi HIGHW1(#_Fls_GenState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fls_GenState)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2879
	jarl _Fls_CallJobNotification, r31
.BB.LABEL.12_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2887
	dispose 0x00000000, 0x00000001, [r31]
_Fls_ProcessReadImm:
	.stack _Fls_ProcessReadImm = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2942
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2968
	jarl _Fls_GetMaxReadBytes, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2971
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r2], r2
	cmp r2, r10
	mov r10, r20
	bnc9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2976
	mov #_Fls_GstVar, r2
	ld.w 0x00000018[r2], r5
	sub r20, r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2979
	ld.w 0x00000024[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb.if_break_bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r21
	mov r21, r22
	mov r20, r23
	br9 .BB.LABEL.13_7
.BB.LABEL.13_3:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2981
	mov #_Fls_GstVar, r21
	ld.w 0x0000001C[r21], r22
	ld.bu 0x00000020[r21], r23
	sub r20, r23
	add r23, r22
	st.w r22, 0x0000001C[r21]
	br9 .BB.LABEL.13_2
.BB.LABEL.13_4:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2991
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r21
	ld.w LOWW(#_Fls_GstVar+0x00000024)[r21], r21
	cmp 0x00000000, r21
	movhi HIGHW1(#_Fls_GstVar+0x00000018), r0, r21
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2994
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 2998
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r21], r23
	andi 0x00000003, r22, r21
	sub r21, r23
	mov 0x00000001, r22
	br9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3003
	ld.w LOWW(#_Fls_GstVar+0x00000018)[r21], r23
	mov 0x00000001, r22
	mov 0x00000000, r21
.BB.LABEL.13_7:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3008
	mov #_Fls_GstVar, r24
	ld.w 0x0000000C[r24], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3013
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3017
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r2
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.b r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3028
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3044
	ld.bu 0x00000014[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3029
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r2
	st.b r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3041
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3009
	add r25, r23
	add 0xFFFFFFFF, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3044
	ld.w 0x00000024[r24], r2
	mov 0x00000000, r24
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_11
.BB.LABEL.13_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3049
	movhi HIGHW1(#_Fls_GstVar+0x00000004), r0, r21
	ld.w LOWW(#_Fls_GstVar+0x00000004)[r21], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3051
	mov r25, r6
	jarl _Fls_FcuDataCopy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3055
	ld.w LOWW(#_Fls_GstVar+0x00000004)[r21], r2
	add 0x00000004, r2
	st.w r2, LOWW(#_Fls_GstVar+0x00000004)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3051
	or r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3053
	add 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3046
	cmp r23, r25
	bnh9 .BB.LABEL.13_8
.BB.LABEL.13_9:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3062
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r21
	ld.w LOWW(#_Fls_GstVar+0x00000008)[r21], r23
	add 0xFFFFFFFC, r23
	st.w r23, LOWW(#_Fls_GstVar+0x00000008)[r21]
	br9 .BB.LABEL.13_13
.BB.LABEL.13_10:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3071
	movhi HIGHW1(#_Fls_GstVar), r0, r27
	ld.w LOWW(#_Fls_GstVar)[r27], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3073
	jarl _Fls_FcuDataCopy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3075
	ld.w LOWW(#_Fls_GstVar)[r27], r2
	add 0x00000004, r2
	st.w r2, LOWW(#_Fls_GstVar)[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3073
	or r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3078
	add 0x00000004, r25
.BB.LABEL.13_11:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r25, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3068
	cmp r23, r25
	bl9 .BB.LABEL.13_10
.BB.LABEL.13_12:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3082
	movhi HIGHW1(#_Fls_GstVar), r0, r23
	ld.w LOWW(#_Fls_GstVar)[r23], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3084
	mov r21, r8
	jarl _Fls_FcuOffsetDataCopy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3087
	ld.w LOWW(#_Fls_GstVar)[r23], r2
	add r21, r2
	st.w r2, LOWW(#_Fls_GstVar)[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3084
	or r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3089
	add r21, r25
.BB.LABEL.13_13:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3093
	movhi HIGHW1(#_Fls_GstVar+0x0000000C), r0, r2
	st.w r25, LOWW(#_Fls_GstVar+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3095
	andi 0x000000FF, r24, r0
	bnz9 .BB.LABEL.13_15
.BB.LABEL.13_14:	; if_break_bb132.if_break_bb150_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r24
	mov r24, r21
	br9 .BB.LABEL.13_18
.BB.LABEL.13_15:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3097
	andi 0x00000002, r24, r0
	bz9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_then_bb139.if_break_bb150_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000009, r21
	mov 0x00000000, r24
	br9 .BB.LABEL.13_18
.BB.LABEL.13_17:	; if_else_bb147
	mov 0x00000008, r21
	mov 0x00000001, r24
.BB.LABEL.13_18:	; if_break_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3113
	cmp 0x00000000, r21
	bz9 .BB.LABEL.13_20
.BB.LABEL.13_19:	; if_break_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000008, r21
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_20:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3116
	mov r22, r6
	mov r20, r7
	jarl _Fls_CopyToTargetBuff, r31
	br9 .BB.LABEL.13_22
.BB.LABEL.13_21:	; if_else_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movea 0x00000010, r0, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3126
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
.BB.LABEL.13_22:	; if_break_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3134
	mov r21, r6
	mov r24, r7
	jarl _Fls_ReportECCErrorToCbk, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3138
	jarl _SchM_Enter_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3141
	movhi HIGHW1(#_FLS_GpECCReg_BaseAddress), r0, r2
	ld.w LOWW(#_FLS_GpECCReg_BaseAddress)[r2], r2
	st.b r26, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3155
	jarl _SchM_Exit_Fls_FLS_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3159
	mov r20, r10
	dispose 0x00000000, 0x000007F9, [r31]
_Fls_ReadMisAlignHandler:
	.stack _Fls_ReadMisAlignHandler = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3204
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3219
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000024)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3221
	andi 0x00000003, r6, r20
	cmp 0x00000000, r20
	mov r8, r21
	mov r6, r22
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3225
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3228
	mov #_Fls_GstVar, r2
	st.w r21, 0x0000001C[r2]
	mov 0xFFFFFFFC, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3233
	and r22, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3236
	st.b r20, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3239
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3235
	andi 0x00000003, r22, r20
	add r21, r20
	br9 .BB.LABEL.14_6
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3243
	andi 0x00000003, r7, r0
	bz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3247
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3250
	movhi HIGHW1(#_Fls_GstVar+0x0000001C), r0, r20
	st.w r21, LOWW(#_Fls_GstVar+0x0000001C)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3253
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	br9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3259
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r20
	mov 0x00000001, r2
	st.w r2, LOWW(#_Fls_GstVar+0x00000024)[r20]
.BB.LABEL.14_5:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov r21, r20
.BB.LABEL.14_6:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3262
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000024)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3266
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3271
	movhi HIGHW1(#_Fls_GstVar+0x00000004), r0, r2
	mov #_Fls_GulTempBuffer, r5
	st.w r5, LOWW(#_Fls_GstVar+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3275
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3278
	andi 0x00000003, r20, r0
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3281
	andi 0x00000003, r20, r2
	mov 0x00000004, r5
	sub r2, r5
	mov r20, r10
	add r5, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.14_9:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3294
	mov r20, r10
	dispose 0x00000000, 0x00000071, [r31]
_Fls_GetMaxReadBytes:
	.stack _Fls_GetMaxReadBytes = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3344
	movhi HIGHW1(#_Fls_GenCurrentMode), r0, r2
	ld.w LOWW(#_Fls_GenCurrentMode)[r2], r2
	cmp 0x00000001, r2
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3346
	movea 0x00000018, r2, r2
	br9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3350
	movea 0x00000014, r2, r2
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	ld.w 0x00000000[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3354
	jmp [r31]
_Fls_ReportECCErrorToCbk:
	.stack _Fls_ReportECCErrorToCbk = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3398
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3403
	cmp 0x00000009, r6
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3407
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3410
	mov #_Fls_GstVar, r2
	ld.w 0x0000000C[r2], r5
	add 0xFFFFFFFC, r5
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3412
	ld.w 0x00000008[r2], r5
	movhi 0x000000E0, r5, r5
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3416
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3420
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_2:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3423
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000008)[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3425
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x00000010[r2], r2
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_3:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3432
	cmp 0x00000008, r6
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_4:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3436
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3438
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000008)[r2], r5
	movhi 0x000000E0, r5, r5
	st.w r5, LOWW(#_Fls_GstVar+0x00000008)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3442
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3445
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3447
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000008)[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3449
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r2
	jarl [r2], r31
.BB.LABEL.16_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3461
	dispose 0x00000000, 0x00000001, [r31]
_Fls_CopyToTargetBuff:
	.stack _Fls_CopyToTargetBuff = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3510
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3521
	movhi HIGHW1(#_Fls_GstVar+0x00000024), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000024)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.17_8
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3523
	cmp 0x00000001, r6
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3526
	mov #_Fls_GstVar, r21
	ld.bu 0x00000020[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3530
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3526
	sub r22, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3533
	ld.w 0x00000004[r21], r2
	sub r20, r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3537
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov 0x00000002, r21
	br9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3546
	mov #_Fls_GstVar, r20
	ld.w 0x00000018[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3550
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3553
	ld.w 0x00000004[r20], r2
	ld.bu 0x00000020[r20], r5
	add r5, r2
	sub r21, r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3557
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3560
	ld.w 0x0000001C[r20], r20
	mov 0x00000000, r21
.BB.LABEL.17_4:	; bb40.preheader
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3570
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3573
	mov #_Fls_GstVar, r2
	ld.w 0x00000000[r2], r5
	ld.w 0x00000004[r2], r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3578
	ld.w 0x00000000[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3579
	ld.w 0x00000004[r2], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3583
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3576
	add 0x00000001, r22
.BB.LABEL.17_6:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3566
	cmp r20, r22
	bl9 .BB.LABEL.17_5
.BB.LABEL.17_7:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3588
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3592
	mov #_Fls_GstVar, r2
	ld.w 0x00000004[r2], r5
	ld.bu 0x00000020[r2], r6
	add r20, r6
	sub r6, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3596
	st.b r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3599
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	mov r21, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.17_8:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000001, r6
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3604
	add r10, r10
	dispose 0x00000000, 0x00000071, [r31]
_Fls_ProcessCancel:
	.stack _Fls_ProcessCancel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3662
	prepare 0x00000001, 0x00000000
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3667
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3668
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3671
	jarl _Fls_FcuForcedStop, r31
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3678
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3681
	jarl _Fls_FcuClearStatus, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3682
	jarl _Fls_FcuSwitchMode, r31
.BB.LABEL.18_4:	; if_break_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3690
	cmp 0x00000000, r10
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3696
	cmov 0x00000002, 0x0000000B, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3699
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r5
	st.w r2, LOWW(#_Fls_GstVar+0x0000002C)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Fls_InitiateBlankCheckJob:
	.stack _Fls_InitiateBlankCheckJob = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3834
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3847
	mov #_Fls_GstVar, r2
	ld.w 0x0000001C[r2], r5
	shr 0x00000002, r5
	mul 0x000000D5, r5, r0
	movhi HIGHW1(#_Fls_GulTimeOutCounter), r0, r6
	st.w r5, LOWW(#_Fls_GulTimeOutCounter)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3854
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Fls_GblTimeOutMonitor)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3858
	ld.w 0x00000008[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3859
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3858
	movhi 0x000000E0, r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3859
	movhi 0x000000E0, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3861
	mov r20, r6
	jarl _Fls_FcuCalculateBlankCheckAddr, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3865
	mov r20, r6
	mov r21, r7
	jarl _Fls_FcuPerformBlankCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3866
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_else_bb
	mov 0xFF200001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3872
	add r2, r21
	movhi HIGHW1(#_Fls_GstVar+0x00000008), r0, r2
	st.w r21, LOWW(#_Fls_GstVar+0x00000008)[r2]
	mov 0x00000000, r21
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3877
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3880
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
_Fls_MainBlankCheck:
	.stack _Fls_MainBlankCheck = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3924
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3967
	jarl _Fls_FcuCheckBCJobStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3969
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3972
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3973
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_8
.BB.LABEL.20_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3976
	jarl _Fls_FcuBlankCheckResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3979
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3981
	mov #_Fls_GstVar, r2
	ld.w 0x00000008[r2], r5
	ld.w 0x00000014[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.20_6
.BB.LABEL.20_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3984
	jarl _Fls_InitiateBlankCheckJob, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3986
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.20_9
.BB.LABEL.20_5:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r6
	jarl _Fls_ProcessJobResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4049
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 3993
	jarl _Fls_ProcessJobResult, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_7:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4018
	jarl _Fls_ProcessJobResult, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_8:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4025
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	st.w r10, LOWW(#_Fls_GstVar+0x0000002C)[r2]
	br9 .BB.LABEL.20_5
.BB.LABEL.20_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4049
	dispose 0x00000000, 0x00000001, [r31]
_Fls_ProcessJobResult:
	.stack _Fls_ProcessJobResult = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4100
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4146
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	st.w r6, LOWW(#_Fls_GenJobResult)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4148
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r2], r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4150
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r8
	br9 .BB.LABEL.21_6
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4171
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.21_12
.BB.LABEL.21_5:	; if_then_bb25
	mov 0x00000002, r8
.BB.LABEL.21_6:	; if_then_bb25
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	mov r8, r9
	jarl _Det_ReportRuntimeError, r31
	br9 .BB.LABEL.21_12
.BB.LABEL.21_7:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4190
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r2], r2
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_8:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4197
	mov r8, r9
	jarl _Det_ReportRuntimeError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4202
	jarl _Fls_FcuResetErrorBits, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4203
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_12
.BB.LABEL.21_9:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fls_GenState)[r2]
	br9 .BB.LABEL.21_13
.BB.LABEL.21_10:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4214
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x0000002C)[r2], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_11:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x0000005C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4221
	mov r8, r9
	jarl _Det_ReportRuntimeError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4226
	jarl _Fls_FcuResetErrorBits, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4227
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_9
.BB.LABEL.21_12:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GenState), r0, r2
	st.w r0, LOWW(#_Fls_GenState)[r2]
.BB.LABEL.21_13:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4244
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4247
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	st.b r0, LOWW(#_Fls_GblTimeOutMonitor)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4253
	jarl _Fls_CallJobNotification, r31
	dispose 0x00000000, 0x00000001, [r31]
_Fls_CallJobNotification:
	.stack _Fls_CallJobNotification = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4301
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4306
	movhi HIGHW1(#_Fls_GenJobResult), r0, r2
	ld.w LOWW(#_Fls_GenJobResult)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; bb.bb10_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; bb9
	mov 0x00000001, r2
.BB.LABEL.22_4:	; bb10
	cmp 0x00000000, r2
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4312
	ld.w 0x00000004[r2], r2
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4315
	ld.w 0x00000008[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4318
	movhi HIGHW1(#_Fls_GpConfigPtr), r0, r2
	ld.w LOWW(#_Fls_GpConfigPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	jarl [r2], r31
.BB.LABEL.22_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4325
	dispose 0x00000000, 0x00000001, [r31]
_Fls_ProcessResume:
	.stack _Fls_ProcessResume = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4673
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4678
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4682
	jarl _Fls_RestoreJobData, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4684
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4686
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r2, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4688
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	st.b r0, LOWW(#_Fls_GblJobSuspended)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4702
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstVar+0x00000028)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_3:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.23_6
.BB.LABEL.23_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4706
	jarl _Fls_InitiateEraseJob, r31
	br9 .BB.LABEL.23_6
.BB.LABEL.23_5:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4709
	jarl _Fls_InitiateWriteJob, r31
.BB.LABEL.23_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4718
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4720
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.23_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4732
	dispose 0x00000000, 0x00000001, [r31]
_Fls_RestoreJobData:
	.stack _Fls_RestoreJobData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4795
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4799
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4802
	mov #_Fls_GstBackUpVar, r2
	ld.w 0x00000000[r2], r5
	mov #_Fls_GstVar, r6
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4804
	ld.w 0x00000008[r2], r5
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4806
	ld.w 0x0000000C[r2], r5
	st.w r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4808
	ld.w 0x00000010[r2], r5
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4810
	ld.w 0x00000014[r2], r5
	st.w r5, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4812
	ld.w 0x00000018[r2], r5
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4814
	ld.w 0x0000001C[r2], r5
	st.w r5, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4816
	ld.b 0x00000020[r2], r5
	st.b r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4818
	ld.w 0x00000024[r2], r5
	st.w r5, 0x00000024[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4820
	ld.w 0x00000028[r2], r2
	st.w r2, 0x00000028[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4823
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000001, [r31]
_Fls_ClearBackUpData:
	.stack _Fls_ClearBackUpData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4892
	mov #_Fls_GstBackUpVar, r2
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4895
	st.w r0, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4897
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4899
	st.w r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4901
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4903
	st.w r0, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4905
	st.w r0, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4907
	st.b r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4909
	st.w r0, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4911
	st.w r0, 0x00000028[r2]
	jmp [r31]
_Fls_ProcessSuspend:
	.stack _Fls_ProcessSuspend = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4961
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4964
	jarl _Fls_FcuSwitchMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4965
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4969
	jarl _Fls_BackupJobData, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4971
	movhi HIGHW1(#_Fls_GenState), r0, r5
	st.w r2, LOWW(#_Fls_GenState)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4973
	movhi HIGHW1(#_Fls_GenJobResult), r0, r5
	st.w r0, LOWW(#_Fls_GenJobResult)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4975
	movhi HIGHW1(#_Fls_GstVar+0x00000028), r0, r5
	st.w r0, LOWW(#_Fls_GstVar+0x00000028)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4977
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r5
	st.b r2, LOWW(#_Fls_GblJobSuspended)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4981
	movhi HIGHW1(#_Fls_GblTimeOutMonitor), r0, r2
	st.b r0, LOWW(#_Fls_GblTimeOutMonitor)[r2]
	br9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4986
	jarl _Fls_ProcessJobResult, r31
.BB.LABEL.26_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 4988
	movhi HIGHW1(#_Fls_GblJobSuspendRequest), r0, r2
	st.b r0, LOWW(#_Fls_GblJobSuspendRequest)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fls_BackupJobData:
	.stack _Fls_BackupJobData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5049
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5053
	jarl _SchM_Enter_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5057
	mov #_Fls_GstVar, r2
	ld.w 0x00000000[r2], r5
	mov #_Fls_GstBackUpVar, r6
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5059
	ld.w 0x00000008[r2], r5
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5061
	ld.w 0x0000000C[r2], r5
	st.w r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5063
	ld.w 0x00000010[r2], r5
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5065
	ld.w 0x00000014[r2], r5
	st.w r5, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5067
	ld.w 0x00000018[r2], r5
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5069
	ld.w 0x0000001C[r2], r5
	st.w r5, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5071
	ld.b 0x00000020[r2], r5
	st.b r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5073
	ld.w 0x00000024[r2], r5
	st.w r5, 0x00000024[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5075
	ld.w 0x00000028[r2], r2
	st.w r2, 0x00000028[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5079
	jarl _SchM_Exit_Fls_FLS_DRIVERSTATE_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000001, [r31]
_Fls_TimeOutCheckAndProcessing:
	.stack _Fls_TimeOutCheckAndProcessing = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5129
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5132
	movhi HIGHW1(#_Fls_GulTimeOutCounter), r0, r2
	ld.w LOWW(#_Fls_GulTimeOutCounter)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5136
	jarl _Fls_ProcessCancel, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5141
	jarl _Fls_ProcessJobResult, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5151
	movhi HIGHW1(#_Fls_GulTimeOutCounter), r0, r2
	ld.w LOWW(#_Fls_GulTimeOutCounter)[r2], r5
	add 0xFFFFFFFF, r5
	st.w r5, LOWW(#_Fls_GulTimeOutCounter)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fls_SuspendPreCheck:
	.stack _Fls_SuspendPreCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5287
	movhi HIGHW1(#_Fls_GblJobSuspended), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5302
	ld.bu LOWW(#_Fls_GblJobSuspended)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; entry.if_break_bb61_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.29_8
.BB.LABEL.29_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5305
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.29_7
.BB.LABEL.29_4:	; bb12
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.29_7
.BB.LABEL.29_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5318
	add 0xFFFFFFFE, r6
	cmp 0x00000001, r6
	bh9 .BB.LABEL.29_1
.BB.LABEL.29_6:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 0
	movhi HIGHW1(#_Fls_GstBackUpVar+0x00000028), r0, r2
	ld.w LOWW(#_Fls_GstBackUpVar+0x00000028)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.29_1
.BB.LABEL.29_7:	; if_then_bb57
	mov 0x00000001, r10
.BB.LABEL.29_8:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5336
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.29_10
.BB.LABEL.29_9:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5339
	movhi HIGHW1(#_Fls_GstVar+0x0000002C), r0, r2
	mov 0x00000004, r5
	st.w r5, LOWW(#_Fls_GstVar+0x0000002C)[r2]
.BB.LABEL.29_10:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/fls/src/Fls_Internal.c", 5346
	jmp [r31]
