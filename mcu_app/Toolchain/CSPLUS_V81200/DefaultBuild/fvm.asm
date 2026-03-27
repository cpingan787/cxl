#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\CDD_FVM\fvm.c -oDefaultBuild\fvm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ac4154029fe34ea6a0e3c86ad82f3ecehfjtmxdm.cqc
#@	compiled at Fri Mar 27 09:50:11 2026

	.file "..\..\ASW\CDD_FVM\fvm.c"

	$reg_mode 32
	.dbl_size 8

	.public _Fvm_Init
	.public _Fvm_Deinit
	.public _Fvm_SetTripCounter
	.public _Fvm_GetTripCounter
	.public _Fvm_SetmessageCounter
	.public _Fvm_GetmessageCounter
	.public _Fvm_SetResetCounter
	.public _Fvm_GetResetCounter
	.public _Fvm_GetFreshnessValue
	.public _Fvm_VerifyFreshnessValue
	.public _Fvm_ResetTripCounter
	.public _Fvm_UpdateSynCounters
	.public _Fvm_GetStatus

	.section .text, text
_Fvm_Init:
	.stack _Fvm_Init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 40
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 44
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 46
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 48
	ld.w 0x00000008[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 90
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_4:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 55
	ld.w 0x00000000[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000004[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 57
	ld.w 0x00000008[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_7:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 90
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_8:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 65
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	st.w r6, LOWW(#_g_pFvmConfig.3)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 66
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	st.w r0, LOWW(#_g_tripCounter.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 67
	movhi HIGHW1(#_g_resetCounter.2), r0, r2
	st.h r0, LOWW(#_g_resetCounter.2)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 70
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000014[r5], r5
	add r6, r5
	st.w r0, 0x00000008[r5]
	add 0x00000001, r2
.BB.LABEL.1_10:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 68
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r5
	ld.w LOWW(#_g_pFvmConfig.3)[r5], r5
	ld.hu 0x0000001C[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.1_9
.BB.LABEL.1_11:	; bb66.bb87_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 74
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000018[r5], r5
	add r6, r5
	st.w r0, 0x00000008[r5]
	add 0x00000001, r2
.BB.LABEL.1_13:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 72
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r5
	ld.w LOWW(#_g_pFvmConfig.3)[r5], r5
	ld.hu 0x0000001E[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.1_12
.BB.LABEL.1_14:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 78
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_15:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000004[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 80
	ld.w 0x00000004[r2], r2
	mov #_g_tripCounter.1, r20
	mov r20, r6
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 81
	ld.w 0x00000000[r20], r2
	movhi 0x00000100, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 83
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	st.w r0, LOWW(#_g_tripCounter.1)[r2]
.BB.LABEL.1_18:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 87
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_fvmStatus.4)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 89
	dispose 0x00000000, 0x00000041, [r31]
_Fvm_Deinit:
	.stack _Fvm_Deinit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 102
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	st.w r0, LOWW(#_g_fvmStatus.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 103
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	st.w r0, LOWW(#_g_pFvmConfig.3)[r2]
	jmp [r31]
_Fvm_SetTripCounter:
	.stack _Fvm_SetTripCounter = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 114
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 116
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_13
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 118
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 120
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_then_bb9.bb91_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
.BB.LABEL.3_4:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 156
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_5:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000002, r6
.BB.LABEL.3_6:	; if_then_bb16
	ld.w 0x00000008[r2], r2
	jarl [r2], r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 156
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_7:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	movhi 0x00000100, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 127
	cmp r2, r6
	bl9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 129
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_9:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 131
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_10:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 136
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	ld.w LOWW(#_g_tripCounter.1)[r2], r2
	cmp r2, r6
	bnc9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 138
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_12:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000005, r6
	br9 .BB.LABEL.3_6
.BB.LABEL.3_13:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 145
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	ld.w LOWW(#_g_tripCounter.1)[r2], r2
	cmp r2, r6
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_14:	; if_break_bb58.bb91_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_4
.BB.LABEL.3_15:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 149
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	st.w r6, LOWW(#_g_tripCounter.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 150
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_16:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_17:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 152
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
	br9 .BB.LABEL.3_14
_Fvm_GetTripCounter:
	.stack _Fvm_GetTripCounter = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 166
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 168
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 170
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 172
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 174
	ld.w 0x00000008[r2], r2
	mov 0x00000002, r6
	jarl [r2], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 179
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 181
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_6:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 183
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_7:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 189
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	ld.w LOWW(#_g_tripCounter.1)[r2], r2
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 191
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_8:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 192
	dispose 0x00000000, 0x00000041, [r31]
_Fvm_SetmessageCounter:
	.stack _Fvm_SetmessageCounter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 204
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 209
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 211
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 213
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 215
	ld.w 0x00000008[r20], r20
	mov 0x00000002, r6
	jarl [r20], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 222
	mov r21, r7
	jarl _Fvm_FindMessageIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 223
	cmp 0x00000000, r10
	bn9 .BB.LABEL.5_9
.BB.LABEL.5_5:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 228
	cmp 0x00000001, r21
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 230
	ld.w 0x00000014[r2], r2
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 234
	ld.w 0x00000018[r2], r2
.BB.LABEL.5_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mulh 0x0000000C, r10
	add r10, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 237
	st.w r20, 0x00000008[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 239
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_9:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 240
	dispose 0x00000000, 0x00000061, [r31]
_Fvm_GetmessageCounter:
	.stack _Fvm_GetmessageCounter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 251
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 256
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 258
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 260
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.6_12
.BB.LABEL.6_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 262
	ld.w 0x00000008[r20], r20
	mov 0x00000002, r6
	jarl [r20], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_4:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 266
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 268
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.6_12
.BB.LABEL.6_6:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 270
	ld.w 0x00000008[r20], r20
	mov 0x00000001, r21
	mov r21, r6
	jarl [r20], r31
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_7:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 277
	mov r21, r7
	jarl _Fvm_FindMessageIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 278
	cmp 0x00000000, r10
	bn9 .BB.LABEL.6_12
.BB.LABEL.6_8:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 283
	cmp 0x00000001, r21
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 285
	ld.w 0x00000014[r2], r2
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 289
	ld.w 0x00000018[r2], r2
.BB.LABEL.6_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mulh 0x0000000C, r10
	add r10, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 292
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 294
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_12:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 295
	dispose 0x00000000, 0x00000061, [r31]
_Fvm_SetResetCounter:
	.stack _Fvm_SetResetCounter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 305
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 307
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 309
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 311
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 313
	ld.w 0x00000008[r2], r2
	mov 0x00000002, r6
	jarl [r2], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_4:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 319
	movhi HIGHW1(#_g_resetCounter.2), r0, r2
	st.h r6, LOWW(#_g_resetCounter.2)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 321
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_5:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 322
	dispose 0x00000000, 0x00000001, [r31]
_Fvm_GetResetCounter:
	.stack _Fvm_GetResetCounter = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 332
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 334
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 336
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 338
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 340
	ld.w 0x00000008[r2], r2
	mov 0x00000002, r6
	jarl [r2], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 345
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 347
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_6:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 349
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_7:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 355
	movhi HIGHW1(#_g_resetCounter.2), r0, r2
	ld.h LOWW(#_g_resetCounter.2)[r2], r2
	st.h r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 357
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_8:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 358
	dispose 0x00000000, 0x00000041, [r31]
_Fvm_GetFreshnessValue:
	.stack _Fvm_GetFreshnessValue = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 368
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 374
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bz9 .BB.LABEL.9_7
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 376
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 378
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 380
	ld.w 0x00000008[r20], r20
	mov 0x00000002, r6
	jarl [r20], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_4:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 385
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 387
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_6:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 389
	ld.w 0x00000008[r20], r20
	mov 0x00000001, r21
	mov r21, r6
	jarl [r20], r31
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_7:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 405
	jarl _Fvm_FindMessageIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 406
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bp9 .BB.LABEL.9_10
.BB.LABEL.9_8:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 408
	ld.w 0x00000008[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_9:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 410
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_10:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 415
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 416
	mulh 0x0000000C, r10
	add r10, r2
	ld.w 0x00000008[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 425
	addi 0x00000001, r5, r6
	mov 0x003FFFFE, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 419
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 425
	cmov 0x0000000B, 0x00000000, r6, r6
	st.w r6, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 429
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	ld.w LOWW(#_g_tripCounter.1)[r2], r6
	shr 0x00000010, r6
	st.b r6, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 430
	ld.w LOWW(#_g_tripCounter.1)[r2], r6
	shr 0x00000008, r6
	st.b r6, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 431
	ld.w LOWW(#_g_tripCounter.1)[r2], r2
	st.b r2, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 432
	movhi HIGHW1(#_g_resetCounter.2), r0, r2
	ld.hu LOWW(#_g_resetCounter.2)[r2], r6
	shr 0x00000008, r6
	st.b r6, 0x00000003[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 433
	ld.b LOWW(#_g_resetCounter.2)[r2], r6
	st.b r6, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 434
	mov r5, r6
	shr 0x0000000E, r6
	st.b r6, 0x00000005[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 435
	mov r5, r6
	shr 0x00000006, r6
	st.b r6, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 436
	shl 0x00000002, r5
	ld.hu LOWW(#_g_resetCounter.2)[r2], r2
	andi 0x00000003, r2, r2
	or r2, r5
	st.b r5, 0x00000007[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 438
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_11:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 439
	dispose 0x00000000, 0x00000061, [r31]
_Fvm_VerifyFreshnessValue:
	.stack _Fvm_VerifyFreshnessValue = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 451
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 462
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 464
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 466
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r21
	cmp 0x00000000, r21
	bz17 .BB.LABEL.10_24
.BB.LABEL.10_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 468
	ld.w 0x00000008[r20], r20
	mov 0x00000002, r6
	jarl [r20], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.10_4:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 473
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 475
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r21
	cmp 0x00000000, r21
	bz17 .BB.LABEL.10_24
.BB.LABEL.10_6:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 477
	ld.w 0x00000008[r20], r20
	mov 0x00000001, r21
	mov r21, r6
	jarl [r20], r31
	mov r21, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.10_7:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 483
	jarl _Fvm_FindMessageIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 484
	cmp 0x00000000, r10
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bp9 .BB.LABEL.10_10
.BB.LABEL.10_8:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 486
	ld.w 0x00000008[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 488
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	jr .BB.LABEL.10_30
.BB.LABEL.10_10:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 493
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 497
	mulhi 0x0000000C, r10, r5
	add r2, r5
	ld.hu 0x00000004[r5], r6
	ld.w 0x00000000[r5], r7
	mov r7, r8
	shl 0x00000010, r8
	or r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 495
	movhi HIGHW1(#_g_resetCounter.2), r0, r6
	ld.hu LOWW(#_g_resetCounter.2)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 496
	movhi HIGHW1(#_g_tripCounter.1), r0, r9
	ld.w LOWW(#_g_tripCounter.1)[r9], r9
	mov r9, r11
	shl 0x00000010, r11
	or r6, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 497
	addi 0x00000004, r5, r12
	shr 0x00000010, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 496
	shr 0x00000010, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 495
	andi 0x00000003, r6, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 499
	cmp r21, r13
	bz9 .BB.LABEL.10_20
.BB.LABEL.10_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 503
	andi 0x00000003, r6, r13
	add 0xFFFFFFFF, r13
	cmp r21, r13
	bnz9 .BB.LABEL.10_13
.BB.LABEL.10_12:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 506
	add 0xFFFFFFFF, r11
	br9 .BB.LABEL.10_19
.BB.LABEL.10_13:	; if_else_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 508
	andi 0x00000003, r6, r13
	add 0x00000001, r13
	cmp r21, r13
	bnz9 .BB.LABEL.10_15
.BB.LABEL.10_14:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 511
	add 0x00000001, r11
	br9 .BB.LABEL.10_19
.BB.LABEL.10_15:	; if_else_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 513
	andi 0x00000003, r6, r13
	add 0xFFFFFFFE, r13
	cmp r21, r13
	bnz9 .BB.LABEL.10_17
.BB.LABEL.10_16:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 516
	add 0xFFFFFFFE, r11
	br9 .BB.LABEL.10_19
.BB.LABEL.10_17:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 518
	andi 0x00000003, r6, r6
	add 0x00000002, r6
	cmp r21, r6
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_18:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 521
	add 0x00000002, r11
.BB.LABEL.10_19:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	adf 0x00000001, r6, r9, r9
.BB.LABEL.10_20:	; if_break_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 533
	mov r11, r6
	xor r8, r6
	mov r9, r13
	xor r7, r13
	or r13, r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_25
.BB.LABEL.10_21:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 535
	mulhi 0x0000000C, r10, r7
	add r2, r7
	ld.w 0x00000008[r7], r7
	andi 0x0000003F, r7, r8
	mov 0x003FFFC0, r9
	and r9, r7
	movea 0x00000040, r7, r9
	cmp r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 543
	cmov 0x0000000B, r7, r9, r7
	or r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 548
	ld.hu 0x00000000[r12], r11
	mov r5, r8
	br9 .BB.LABEL.10_27
.BB.LABEL.10_22:	; if_else_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 526
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_23:	; bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.10_30
.BB.LABEL.10_24:	; bb323
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 583
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.10_25:	; if_else_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 550
	cmp r11, r8
	sbf 0x00000001, r9, r7, r0
	bnc9 .BB.LABEL.10_28
.BB.LABEL.10_26:	; if_then_bb226
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 555
	mov #_g_tripCounter.1, r8
	mov r22, r7
.BB.LABEL.10_27:	; if_break_bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000000[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 568
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 569
	st.h r11, 0x00000000[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 570
	mulh 0x0000000C, r10
	add r10, r2
	st.w r7, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 573
	mov r6, r2
	shr 0x00000010, r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 574
	mov r6, r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 575
	st.b r6, 0x00000002[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 576
	mov r11, r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 577
	st.b r11, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 578
	mov r7, r2
	shr 0x0000000E, r2
	st.b r2, 0x00000005[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 579
	mov r7, r2
	shr 0x00000006, r2
	st.b r2, 0x00000006[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 580
	movhi HIGHW1(#_g_resetCounter.2), r0, r2
	ld.hu LOWW(#_g_resetCounter.2)[r2], r2
	andi 0x00000003, r2, r2
	shl 0x00000002, r7
	or r2, r7
	st.b r7, 0x00000007[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 582
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.10_28:	; if_else_bb235
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 560
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_29:	; bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_24
.BB.LABEL.10_30:	; if_then_bb253
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 583
	dispose 0x00000000, 0x00000071, [r31]
_Fvm_ResetTripCounter:
	.stack _Fvm_ResetTripCounter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 592
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 594
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_6
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 596
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 598
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_3:	; if_then_bb8.bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
.BB.LABEL.11_4:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 614
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_5:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 600
	ld.w 0x00000008[r2], r2
	mov 0x00000002, r6
	jarl [r2], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_6:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 606
	movhi HIGHW1(#_g_tripCounter.1), r0, r2
	st.w r0, LOWW(#_g_tripCounter.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 608
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_break_bb20.bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.11_4
.BB.LABEL.11_8:	; bb24
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_9:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 610
	movhi HIGHW1(#_g_tripCounter.1), r0, r5
	ld.w LOWW(#_g_tripCounter.1)[r5], r6
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
	br9 .BB.LABEL.11_7
_Fvm_UpdateSynCounters:
	.stack _Fvm_UpdateSynCounters = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 625
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 630
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 632
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 634
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r20
	ld.w LOWW(#_g_pFvmConfig.3)[r20], r20
	ld.w 0x00000008[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb12.bb90_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.12_14
.BB.LABEL.12_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 636
	ld.w 0x00000008[r20], r20
	mov 0x00000002, r6
	jarl [r20], r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 643
	jarl _Fvm_SetTripCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 644
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_14
.BB.LABEL.12_6:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 650
	mov r20, r6
	jarl _Fvm_SetResetCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 651
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_14
.BB.LABEL.12_7:	; if_break_bb35.bb57_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.12_9
.BB.LABEL.12_8:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 658
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000014[r5], r5
	add r6, r5
	st.w r0, 0x00000008[r5]
	add 0x00000001, r2
.BB.LABEL.12_9:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 656
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r5
	ld.w LOWW(#_g_pFvmConfig.3)[r5], r5
	ld.hu 0x0000001C[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.12_8
.BB.LABEL.12_10:	; bb57.bb78_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 662
	andi 0x0000FFFF, r2, r6
	mul 0x0000000C, r6, r0
	ld.w 0x00000018[r5], r5
	add r6, r5
	st.w r0, 0x00000008[r5]
	add 0x00000001, r2
.BB.LABEL.12_12:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 660
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r5
	ld.w LOWW(#_g_pFvmConfig.3)[r5], r5
	ld.hu 0x0000001E[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.12_11
.BB.LABEL.12_13:	; bb78.bb90_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r10
.BB.LABEL.12_14:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 666
	dispose 0x00000000, 0x00000041, [r31]
_Fvm_GetStatus:
	.stack _Fvm_GetStatus = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 676
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 678
	cmp 0x00000000, r6
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 682
	ld.w 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 684
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r20
	mov r20, r6
	jarl [r2], r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_4:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 690
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 692
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_5:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 693
	dispose 0x00000000, 0x00000041, [r31]
_Fvm_FindMessageIndex.1:
	.stack _Fvm_FindMessageIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 704
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 710
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry.bb71_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ori 0x0000FFFF, r0, r10
.BB.LABEL.14_2:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 740
	sxh r10
	jmp [r31]
.BB.LABEL.14_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	movhi HIGHW1(#_g_fvmStatus.4), r0, r2
	ld.w LOWW(#_g_fvmStatus.4)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_1
.BB.LABEL.14_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 715
	cmp 0x00000001, r7
	movhi HIGHW1(#_g_pFvmConfig.3), r0, r2
	ld.w LOWW(#_g_pFvmConfig.3)[r2], r2
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 717
	movea 0x0000001C, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 718
	add 0x0000000C, r2
	br9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 723
	movea 0x00000010, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 722
	movea 0x0000001E, r2, r5
	mov r7, r2
.BB.LABEL.14_7:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 726
	cmp 0x00000000, r2
	ld.hu 0x00000000[r5], r5
	bz9 .BB.LABEL.14_1
.BB.LABEL.14_8:	; if_break_bb36.bb61_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.14_11
.BB.LABEL.14_9:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 733
	andi 0x0000FFFF, r10, r7
	shl 0x00000003, r7
	add r2, r7
	ld.w 0x00000000[r7], r7
	cmp r7, r6
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_10:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 0
	add 0x00000001, r10
.BB.LABEL.14_11:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/CDD_FVM/fvm.c", 731
	andi 0x0000FFFF, r10, r7
	cmp r5, r7
	bl9 .BB.LABEL.14_9
	br9 .BB.LABEL.14_1
	.section .data, data
	.align 4
_g_tripCounter.1:
	.ds (4)
	.align 2
_g_resetCounter.2:
	.ds (2)
	.align 4
_g_pFvmConfig.3:
	.ds (4)
	.align 4
_g_fvmStatus.4:
	.ds (4)
