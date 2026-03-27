#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\mcu\src\Mcu.c -oDefaultBuild\Mcu.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_bf5fbfb417604f07bfa1c34007961d9equ3lj1jm.3ff
#@	compiled at Fri Mar 27 09:50:58 2026

	.file "..\..\Bsw\Mcal\mcu\src\Mcu.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Mcu_WriteProtReg_BaseAddress
	.extern _LviReg_BaseAddress
	.extern _Mcu_IoHoldRegister_BaseAddress
	.extern _Mcu_ResfRegister_BaseAddress
	.extern _Clma0Reg_BaseAddress
	.extern _Clma1Reg_BaseAddress
	.extern _Clma2Reg_BaseAddress
	.extern _Mcu_Stbc0Register_BaseAddress
	.extern _WufReg_BaseAddress
	.extern _WufIsoReg_BaseAddress
	.extern _FEIntMsk_BaseAddress
	.extern _Mcu_ClkCtrlReg_BaseAddress
	.extern _Mcu_GstCkscSetting
	.extern _Mcu_GstClockSetting
	.extern _Mcu_GstModeSetting
	.extern _Mcu_GaaPortGroup
	.extern _Mcu_GpConfigPtr
	.extern _Mcu_GpClockSetting
	.extern _Mcu_GpCkscSetting
	.extern _Mcu_GddClkMntrReg0RamMirror
	.extern _Mcu_GddClkMntrReg1RamMirror
	.extern _Mcu_GddClkMntrReg2RamMirror
	.extern _Mcu_GddClkCntlRegRamMirror
	.extern _Mcu_GblDriverStatus
	.extern _Mcu_GblWakeUpPreparation
	.extern _Mcu_GblResetFlag
	.extern _Mcu_GblPllActCheck
	.extern _Mcu_GstRamSetting
	.public _Mcu_Init
	.extern _Det_ReportError
	.extern _Dem_ReportErrorStatus
	.public _Mcu_InitRamSection
	.public _Mcu_InitClock
	.public _Mcu_DistributePllClock
	.public _Mcu_GetPllStatus
	.public _Mcu_GetResetReason
	.extern _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION
	.extern _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION
	.extern _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION
	.extern _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION
	.public _Mcu_GetResetRawValue
	.public _Mcu_PerformReset
	.public _Mcu_SetMode
	.public _Mcu_WakeUpFactor_Preparation
	.public _Mcu_GetVersionInfo
	.public _Mcu_CheckHWConsistency

	.section .text, text
_Mcu_Init:
	.stack _Mcu_Init = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1469
	prepare 0x00000071, 0x00000008
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1496
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000A, r9
.BB.LABEL.1_2:	; if_then_bb
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	mov r7, r8
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1904
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1507
	ld.w 0x00000000[r20], r2
	mov 0x0ED94110, r5
	cmp r5, r2
	bnz17 .BB.LABEL.1_38
.BB.LABEL.1_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1511
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	st.w r20, LOWW(#_Mcu_GpConfigPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1515
	jarl _Mcu_InitRamMirror.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1557
	ld.w 0x00000008[r20], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1559
	ld.w 0x00000004[r3], r2
	andi 0x00000007, r2, r0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb21.if_break_bb244_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	mov r21, r22
	jr .BB.LABEL.1_28
.BB.LABEL.1_6:	; if_then_bb31
	mov 0x00000004, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1562
	st.w r21, 0x00000004[r3]
	mov 0x00000005, r21
.BB.LABEL.1_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1564
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r22
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r22], r22
	movea 0x000000A5, r0, r2
	st.w r2, 0x00000000[r22]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r22
	ld.w LOWW(#_LviReg_BaseAddress)[r22], r2
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000080[r2]
	ld.w LOWW(#_LviReg_BaseAddress)[r22], r2
	ld.w 0x00000004[r3], r5
	not r5, r5
	st.w r5, 0x00000080[r2]
	ld.w LOWW(#_LviReg_BaseAddress)[r22], r22
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000080[r22]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r22
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r22], r22
	ld.w 0x00000004[r22], r22
	cmp 0x00000001, r22
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_9:	; bb64
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	ld.w 0x00000004[r21], r21
	cmp 0x00000001, r21
	setf 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1569
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb64.if_break_bb80_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb78
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1575
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_12:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1583
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.1_28
.BB.LABEL.1_13:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1587
	movhi HIGHW1(#_FEIntMsk_BaseAddress), r0, r22
	ld.w LOWW(#_FEIntMsk_BaseAddress)[r22], r22
	ld.w 0x00000004[r22], r2
	ori 0x00008001, r2, r2
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1594
	ld.w 0x00000008[r20], r22
	ori 0x00000004, r22, r22
	andi 0x00000007, r22, r22
	st.w r22, 0x00000004[r3]
	mov 0x00000005, r22
.BB.LABEL.1_14:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1596
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00000000[r2]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r2
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000080[r5]
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r3], r6
	not r6, r6
	st.w r6, 0x00000080[r5]
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000080[r2]
	add 0xFFFFFFFF, r22
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_16:	; bb133
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r22
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r22], r22
	ld.w 0x00000004[r22], r22
	cmp 0x00000001, r22
	setf 0x00000002, r22
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb148
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1607
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_18:	; if_break_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1615
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r2
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r2
	ld.w 0x00000080[r2], r2
	andi 0x00000007, r2, r0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1618
	st.w r0, 0x00000000[r3]
.BB.LABEL.1_20:	; bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1622
	ld.w 0x00000000[r3], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r3]
	movea 0x00000500, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1619
	ld.w 0x00000000[r3], r5
	cmp r2, r5
	bl9 .BB.LABEL.1_20
.BB.LABEL.1_21:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1632
	ld.w 0x00000008[r20], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1635
	movhi HIGHW1(#_FEIntMsk_BaseAddress), r0, r2
	ld.w LOWW(#_FEIntMsk_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r5
	mov 0xFFFF7FFE, r6
	and r6, r5
	st.w r5, 0x00000004[r2]
	br9 .BB.LABEL.1_28
.BB.LABEL.1_23:	; if_else_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1641
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r22
	ld.w LOWW(#_LviReg_BaseAddress)[r22], r22
	ld.w 0x00000080[r22], r22
	mov 0xFFFFFFF3, r2
	and r2, r22
	st.w r22, 0x00000004[r3]
	mov 0x00000005, r22
.BB.LABEL.1_24:	; bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1644
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00000000[r2]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r2
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000080[r5]
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r3], r6
	not r6, r6
	st.w r6, 0x00000080[r5]
	ld.w LOWW(#_LviReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000080[r2]
	add 0xFFFFFFFF, r22
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_26:	; bb222
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r22
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r22], r22
	ld.w 0x00000004[r22], r22
	cmp 0x00000001, r22
	setf 0x00000002, r22
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; if_then_bb237
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1655
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_28:	; if_break_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1674
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_29:	; if_then_bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1678
	movhi HIGHW1(#_Mcu_IoHoldRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_IoHoldRegister_BaseAddress)[r2], r2
	ld.w 0x00000000[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.1_32
.BB.LABEL.1_30:	; if_then_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1692
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.w 0x0000001C[r2], r2
	mov 0x00000000, r5
.BB.LABEL.1_31:	; bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1698
	andi 0x000000FF, r5, r6
	shl 0x00000002, r6
	mov #_Mcu_GaaPortGroup, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1703
	ld.w 0x00000000[r2], r7
	movhi 0x0000FFFF, r0, r8
	or r8, r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1709
	cmp 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1711
	cmov 0x00000002, 0x00000001, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1721
	add 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1727
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1696
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.1_31
.BB.LABEL.1_32:	; if_break_bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1841
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r2
	st.b r0, LOWW(#_Mcu_GucSelectedSrcClock.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1845
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; if_then_bb298
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1848
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_GblDriverStatus)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1849
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r2
	st.b r0, LOWW(#_Mcu_GblWakeUpPreparation)[r2]
	br9 .BB.LABEL.1_35
.BB.LABEL.1_34:	; if_else_bb299
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000011, r0, r9
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1855
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_35:	; if_break_bb301
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1861
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1862
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r2
	ld.w 0x00000100[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1865
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1866
	andi 0x00000400, r5, r0
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_36:	; if_then_bb316
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1869
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r2
	st.b r0, LOWW(#_Mcu_GucClockSettingValue.3)[r2]
.BB.LABEL.1_37:	; if_break_bb318
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1882
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r2
	ld.bu LOWW(#_Mcu_GucClockSettingValue.3)[r2], r2
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.bu 0x00000010[r5], r5
	add r2, r5
	mulhi 0x00000028, r5, r2
	mov #_Mcu_GstClockSetting, r5
	add r2, r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	st.w r5, LOWW(#_Mcu_GpClockSetting)[r2]
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.1_38:	; if_else_bb327
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000000ED, r0, r9
	jr .BB.LABEL.1_2
_Mcu_InitRamSection:
	.stack _Mcu_InitRamSection = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1955
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1974
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	mov 0x0000000F, r9
	mov 0x00000001, r21
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1977
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1986
	cmp 0x00000000, r20
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000D, r9
	mov 0x00000001, r21
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1989
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.2_5:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 1998
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.2_33
.BB.LABEL.2_6:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2004
	mov r20, r2
	shl 0x00000004, r2
	mov #_Mcu_GstRamSetting, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2005
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2004
	ld.w 0x00000004[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2005
	add 0x0000000C, r5
	cmp 0x00000001, r2
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_7:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_8:	; if_then_bb27
	cmp 0x00000003, r2
	bz9 .BB.LABEL.2_18
.BB.LABEL.2_9:	; if_then_bb27.switch_break_bb_crit_edge
	mov 0x00000000, r2
	mov 0x00000001, r21
	mov r2, r7
	mov r2, r8
	mov r21, r9
	br9 .BB.LABEL.2_16
.BB.LABEL.2_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2010
	mov r20, r2
	shl 0x00000004, r2
	mov #_Mcu_GstRamSetting, r7
	add r2, r7
	ld.w 0x00000000[r7], r2
	mov 0x00000000, r7
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2013
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; switch_clause_bb.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r9
	br9 .BB.LABEL.2_16
.BB.LABEL.2_12:	; if_then_bb44
	mov 0x00000001, r21
	mov r21, r9
	br9 .BB.LABEL.2_16
.BB.LABEL.2_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2025
	mov r20, r2
	shl 0x00000004, r2
	mov #_Mcu_GstRamSetting, r7
	add r2, r7
	ld.w 0x00000000[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2028
	cmp 0x00000002, r6
	bl9 .BB.LABEL.2_17
.BB.LABEL.2_14:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000001, r6, r0
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_15:	; bb.switch_break_bb_crit_edge
	mov 0x00000002, r9
	mov 0x00000000, r2
	mov r2, r8
.BB.LABEL.2_16:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2058
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_32
	br9 .BB.LABEL.2_33
.BB.LABEL.2_17:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.2_15
.BB.LABEL.2_18:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2041
	mov r20, r2
	shl 0x00000004, r2
	mov #_Mcu_GstRamSetting, r7
	add r2, r7
	ld.w 0x00000000[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2044
	cmp 0x00000004, r6
	bl9 .BB.LABEL.2_21
.BB.LABEL.2_19:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000003, r6, r0
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; bb79.switch_break_bb_crit_edge
	mov 0x00000004, r9
	mov 0x00000000, r2
	mov r2, r7
	br9 .BB.LABEL.2_16
.BB.LABEL.2_21:	; if_then_bb94
	mov 0x00000001, r21
	br9 .BB.LABEL.2_20
.BB.LABEL.2_22:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2062
	ld.w 0x00000000[r5], r10
	cmp 0x00000001, r10
	bz9 .BB.LABEL.2_27
.BB.LABEL.2_23:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r10
	bz9 .BB.LABEL.2_29
.BB.LABEL.2_24:	; bb104
	cmp 0x00000003, r10
	bnz9 .BB.LABEL.2_31
.BB.LABEL.2_25:	; switch_clause_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2096
	cmp 0x00000000, r8
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_26:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2098
	mov r20, r10
	shl 0x00000004, r10
	mov #_Mcu_GstRamSetting, r11
	add r10, r11
	ld.w 0x00000008[r11], r10
	st.w r10, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2101
	add 0x00000004, r8
	br9 .BB.LABEL.2_31
.BB.LABEL.2_27:	; switch_clause_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2066
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_28:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2068
	mov r20, r10
	shl 0x00000004, r10
	mov #_Mcu_GstRamSetting, r11
	add r10, r11
	ld.w 0x00000008[r11], r10
	st.b r10, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2071
	add 0x00000001, r2
	br9 .BB.LABEL.2_31
.BB.LABEL.2_29:	; switch_clause_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2081
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_30:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2083
	mov r20, r10
	shl 0x00000004, r10
	mov #_Mcu_GstRamSetting, r11
	add r10, r11
	ld.w 0x00000008[r11], r10
	st.h r10, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2086
	add 0x00000002, r7
.BB.LABEL.2_31:	; switch_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2116
	andi 0x000000FF, r9, r10
	sub r10, r6
.BB.LABEL.2_32:	; bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2060
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_22
.BB.LABEL.2_33:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2131
	dispose 0x00000000, 0x00000061, [r31]
_Mcu_InitClock:
	.stack _Mcu_InitClock = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2206
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2251
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	br9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2262
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_then_bb21
	mov 0x0000000B, r9
.BB.LABEL.3_5:	; if_then_bb21
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r21
.BB.LABEL.3_6:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2278
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.3_69
.BB.LABEL.3_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2285
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.bu 0x00000010[r2], r2
	add r20, r2
	mulhi 0x00000028, r2, r2
	mov #_Mcu_GstClockSetting, r5
	add r2, r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	st.w r5, LOWW(#_Mcu_GpClockSetting)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2304
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r5
	st.b r20, LOWW(#_Mcu_GucClockSettingValue.3)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2309
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	ld.bu 0x00000012[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2314
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r2
	st.b r20, LOWW(#_Mcu_GucSelectedSrcClock.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2319
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	st.w r0, 0x00001800[r2]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r2
	st.w r0, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2329
	andi 0x00000001, r20, r0
	bz17 .BB.LABEL.3_23
.BB.LABEL.3_8:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2333
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2337
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r2
	ld.bu 0x00000013[r2], r2
	ori 0x00000004, r2, r2
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	st.w r2, 0x00000108[r6]
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r2
	ld.bu 0x00000013[r2], r2
	ori 0x00000004, r2, r2
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	st.w r2, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2348
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r5
	ld.w 0x0000000C[r5], r5
	st.w r5, 0x0000010C[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	ld.w 0x0000000C[r21], r21
	st.w r21, 0x00000010[r6]
	mov 0x00000005, r21
.BB.LABEL.3_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2359
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00000000[r2]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.w r6, 0x00000100[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	mov 0xFFFFFFFE, r7
	st.w r7, 0x00000100[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	st.w r6, 0x00000100[r2]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_12:	; bb112
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	ld.w 0x00000004[r21], r21
	cmp 0x00000001, r21
	setf 0x00000002, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2365
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2371
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.3_14:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2379
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	br9 .BB.LABEL.3_16
.BB.LABEL.3_15:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2385
	add 0xFFFFFFFF, r2
.BB.LABEL.3_16:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2381
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_15
.BB.LABEL.3_18:	; bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2387
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_19:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2391
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.3_20:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2404
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	tst1 0x00000000, 0x00000014[r2]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2407
	ld.w 0x00000118[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2409
	ori 0x00000001, r2, r2
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st.w r2, 0x00000118[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r5]
	br9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; if_else_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2420
	st.w r5, 0x00000118[r2]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r2
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r2]
.BB.LABEL.3_23:	; if_break_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2582
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_29
.BB.LABEL.3_24:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2588
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2592
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2597
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.3_26:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2605
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	tst1 0x00000002, 0x00000014[r2]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	bz9 .BB.LABEL.3_28
.BB.LABEL.3_27:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2608
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2610
	ori 0x00000001, r2, r2
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st.w r2, 0x00000018[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r5]
	br9 .BB.LABEL.3_29
.BB.LABEL.3_28:	; if_else_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2621
	st.w r5, 0x00000018[r2]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r2
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r2]
.BB.LABEL.3_29:	; if_break_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2641
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.3_75
.BB.LABEL.3_30:	; bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000008, r20, r0
	bz17 .BB.LABEL.3_75
.BB.LABEL.3_31:	; if_then_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2646
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	ld.bu 0x0000001A[r2], r22
	bnz9 .BB.LABEL.3_37
.BB.LABEL.3_32:	; if_then_bb259.bb272_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r2
.BB.LABEL.3_33:	; bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2652
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	movea 0x000000A5, r0, r5
	st23.w r5, 0x00008000[r21]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r5
	st23.w r22, 0x00009700[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r5
	not r22, r6
	st23.w r6, 0x00009700[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	st23.w r22, 0x00009700[r21]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.3_35
.BB.LABEL.3_34:	; bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	cmp 0x00000001, r21
	bz9 .BB.LABEL.3_33
.BB.LABEL.3_35:	; bb306
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2659
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r21
	st.w r22, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r21]
	cmp 0x00000001, r2
	setf 0x00000002, r21
	bz17 .BB.LABEL.3_74
.BB.LABEL.3_36:	; if_then_bb422
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	jarl _Mcu_StartPLL.1, r31
	br9 .BB.LABEL.3_40
.BB.LABEL.3_37:	; if_else_bb326
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2683
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2682
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2683
	ld23.w 0x00009708[r5], r5
	cmp r5, r22
	bnz9 .BB.LABEL.3_39
.BB.LABEL.3_38:	; bb340
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008008[r5], r5
	andi 0x0000183F, r5, r5
	cmp r5, r2
	bz9 .BB.LABEL.3_41
.BB.LABEL.3_39:	; if_then_bb356
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2690
	jarl _Mcu_StandByPrepare.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2692
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_70
.BB.LABEL.3_40:	; if_then_bb356.if_break_bb451_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r21
.BB.LABEL.3_41:	; if_break_bb451
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2886
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_50
.BB.LABEL.3_42:	; bb456
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000001, r20, r0
	bnz9 .BB.LABEL.3_50
.BB.LABEL.3_43:	; if_then_bb472
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2889
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.3_50
.BB.LABEL.3_44:	; if_then_bb480
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2899
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2902
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_48
.BB.LABEL.3_45:	; if_then_bb487
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2907
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	andi 0x00000004, r21, r0
	bz9 .BB.LABEL.3_48
.BB.LABEL.3_46:	; bb494
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld23.w 0x00009700[r21], r21
	andi 0x00000001, r21, r0
	bz9 .BB.LABEL.3_48
.BB.LABEL.3_47:	; if_then_bb509
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2914
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.3_48:	; if_break_bb514
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2951
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_78
.BB.LABEL.3_49:	; if_break_bb514.if_break_bb527_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r21
.BB.LABEL.3_50:	; if_break_bb527
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2972
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	st.w r2, LOWW(#_Mcu_GpCkscSetting)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2977
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_53
.BB.LABEL.3_51:	; if_then_bb537
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2980
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2984
	ld.bu 0x00000015[r21], r20
	ld.bu 0x0000001B[r21], r7
	mov r20, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2986
	mov r20, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2988
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_79
.BB.LABEL.3_52:	; if_then_bb537.if_break_bb577_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r21
.BB.LABEL.3_53:	; if_break_bb577
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3015
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_55
.BB.LABEL.3_54:	; if_then_bb583
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3018
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.hu 0x00000010[r6], r6
	st.w r6, 0x00001800[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.hu 0x00000010[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r5]
.BB.LABEL.3_55:	; if_break_bb595
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3033
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_56:	; bb600
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r2
	tst1 0x00000000, 0x00000000[r2]
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_57:	; if_then_bb618
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3041
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r21
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r21], r2
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.h 0x0000001E[r6], r6
	st.h r6, 0x0000000C[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.h 0x0000001E[r2], r2
	mov #_Mcu_GddClkMntrReg0RamMirror, r6
	st.h r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3053
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r21], r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.h 0x0000001C[r2], r2
	st.h r2, 0x00000008[r21]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r21
	ld.h 0x0000001C[r21], r21
	st.h r21, 0x00000002[r6]
	mov 0x00000005, r21
.BB.LABEL.3_58:	; bb635
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3064
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r5
	movea 0xFFFFFFA5, r0, r6
	st.b r6, 0x00000010[r5]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.b r6, 0x00000000[r5]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r5
	mov 0xFFFFFFFE, r7
	st.b r7, 0x00000000[r5]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r2
	st.b r6, 0x00000000[r2]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.3_60
.BB.LABEL.3_59:	; bb652
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r2
	ld.bu 0x00000014[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_58
.BB.LABEL.3_60:	; bb667
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r21
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r21], r21
	ld.bu 0x00000014[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3073
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_GddClkMntrReg0RamMirror)[r2]
	cmp 0x00000001, r21
	setf 0x00000002, r21
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_61:	; if_then_bb683
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3082
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.3_62:	; if_break_bb687
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3097
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_63:	; bb692
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	tst1 0x00000000, 0x00000000[r2]
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_64:	; if_then_bb710
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3105
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r21
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r21], r2
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.h 0x00000022[r6], r6
	st.h r6, 0x0000000C[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.h 0x00000022[r2], r2
	mov #_Mcu_GddClkMntrReg1RamMirror, r6
	st.h r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3117
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r21], r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.h 0x00000020[r2], r2
	st.h r2, 0x00000008[r21]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r21
	ld.h 0x00000020[r21], r21
	st.h r21, 0x00000002[r6]
	mov 0x00000005, r21
.BB.LABEL.3_65:	; bb727
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3128
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	movea 0xFFFFFFA5, r0, r6
	st.b r6, 0x00000010[r5]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.b r6, 0x00000000[r5]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	mov 0xFFFFFFFE, r7
	st.b r7, 0x00000000[r5]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	st.b r6, 0x00000000[r2]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.3_67
.BB.LABEL.3_66:	; bb744
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.bu 0x00000014[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_65
.BB.LABEL.3_67:	; bb759
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r21
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r21], r21
	ld.bu 0x00000014[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3137
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r2]
	cmp 0x00000001, r21
	setf 0x00000002, r21
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_68:	; if_then_bb775
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3146
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.3_69:	; if_break_bb781
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3168
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.3_70:	; if_then_bb356.bb364_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r21
.BB.LABEL.3_71:	; bb364
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2697
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st23.w r5, 0x00008000[r2]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	st23.w r22, 0x00009700[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	not r22, r6
	st23.w r6, 0x00009700[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	st23.w r22, 0x00009700[r2]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.3_73
.BB.LABEL.3_72:	; bb384
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_71
.BB.LABEL.3_73:	; bb398
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2704
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r2
	st.w r22, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r2]
	cmp 0x00000001, r21
	setf 0x00000002, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2707
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_74:	; if_then_bb414
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	jarl _Dem_ReportErrorStatus, r31
	jr .BB.LABEL.3_41
.BB.LABEL.3_75:	; if_else_bb431
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2745
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.3_41
.BB.LABEL.3_76:	; if_then_bb437
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2747
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	bz17 .BB.LABEL.3_41
.BB.LABEL.3_77:	; if_then_bb445
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2752
	jarl _Mcu_StandByPrepare.1, r31
	jr .BB.LABEL.3_40
.BB.LABEL.3_78:	; if_then_bb520
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2953
	jarl _Mcu_MainOscDisable.1, r31
	jr .BB.LABEL.3_49
.BB.LABEL.3_79:	; if_then_bb555
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2993
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r2
	ld.w 0x00000000[r2], r5
	ld.bu 0x00000015[r2], r2
	shl 0x00000003, r2
	add r2, r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r2
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 2999
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3003
	ld.bu 0x0000001B[r21], r8
	ld.bu 0x00000016[r21], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
	jr .BB.LABEL.3_52
_Mcu_DistributePllClock:
	.stack _Mcu_DistributePllClock = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3234
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3258
	jarl _Mcu_GetPllStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3260
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
.BB.LABEL.4_2:	; if_then_bb
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3469
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3270
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000E, r9
	br9 .BB.LABEL.4_2
.BB.LABEL.4_5:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3285
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.bu 0x00000004[r5], r6
	ld.bu 0x00000019[r5], r5
	add r5, r6
	shl 0x00000003, r6
	mov #_Mcu_GstCkscSetting, r5
	add r6, r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3291
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3295
	ld.bu 0x00000017[r2], r20
	ld.bu 0x0000001B[r2], r7
	mov r20, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3297
	mov r20, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3299
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3301
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.bu 0x00000019[r5], r6
	ld.bu 0x00000017[r5], r7
	add r7, r6
	ld.bu 0x00000004[r5], r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3305
	zxb r6
	shl 0x00000003, r6
	mov #_Mcu_GstCkscSetting, r5
	add r6, r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3309
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3313
	ld.bu 0x0000001B[r2], r8
	ld.bu 0x00000018[r2], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
.BB.LABEL.4_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3320
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3323
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.hu 0x00000010[r6], r6
	st.w r6, 0x00001800[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r2
	ld.hu 0x00000010[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r5]
.BB.LABEL.4_9:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3338
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	tst1 0x00000000, 0x00000000[r2]
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_11:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3346
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.h 0x00000026[r7], r7
	st.h r7, 0x0000000C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000026[r5], r5
	mov #_Mcu_GddClkMntrReg2RamMirror, r7
	st.h r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3358
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000024[r5], r5
	st.h r5, 0x00000008[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r2
	ld.h 0x00000024[r2], r2
	st.h r2, 0x00000002[r7]
	mov 0x00000005, r2
.BB.LABEL.4_12:	; bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3369
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	movea 0xFFFFFFA5, r0, r7
	st.b r7, 0x00000010[r6]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.b r7, 0x00000000[r6]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.b r8, 0x00000000[r6]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	st.b r7, 0x00000000[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.4_14
.BB.LABEL.4_13:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; bb163
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.bu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3378
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GddClkMntrReg2RamMirror)[r5]
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3381
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; bb163.if_break_bb185_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
.BB.LABEL.4_16:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3469
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_17:	; if_then_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3387
	jarl _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.4_15
_Mcu_GetPllStatus:
	.stack _Mcu_GetPllStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3520
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3537
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000004, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3540
	jarl _Det_ReportError, r31
	mov 0x00000001, r2
	mov 0x00000002, r5
	br9 .BB.LABEL.5_8
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3558
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3562
	tst1 0x00000003, LOWW(#_Mcu_GucSelectedSrcClock.1)[r2]
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_7
.BB.LABEL.5_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3568
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb17.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; if_then_bb25
	mov 0x00000001, r5
.BB.LABEL.5_7:	; if_then_bb25
	mov r5, r2
.BB.LABEL.5_8:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3616
	cmp 0x00000000, r2
	cmov 0x00000002, 0x00000001, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3623
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_GetResetReason:
	.stack _Mcu_GetResetReason = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3675
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3684
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3687
	jarl _Det_ReportError, r31
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3690
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3696
	jarl _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3698
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r2
	ld.bu LOWW(#_Mcu_GblResetFlag)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_else_bb.if_break_bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3701
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r20
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r20], r2
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r5
	st.w r2, LOWW(#_Mcu_GulResetValue.4)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3702
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r2
	st.b r0, LOWW(#_Mcu_GblResetFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3703
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r20], r20
	ld.w 0x00000100[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3705
	ld.w LOWW(#_Mcu_GulResetValue.4)[r5], r2
	cmp r20, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3709
	or r20, r2
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r20
	st.w r2, LOWW(#_Mcu_GulResetValue.4)[r20]
	mov 0x00000001, r20
.BB.LABEL.6_6:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3720
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r2
	ld.w LOWW(#_Mcu_GulResetValue.4)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3722
	jarl _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3724
	xori 0x00000001, r20, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3727
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.6_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3736
	addi 0xFFFFFFE1, r21, r0
	bgt9 .BB.LABEL.6_18
.BB.LABEL.6_9:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r21
	bgt9 .BB.LABEL.6_14
.BB.LABEL.6_10:	; if_break_bb41
	cmp 0xFFFFFFFF, r21
	bz9 .BB.LABEL.6_34
.BB.LABEL.6_11:	; if_break_bb41
	cmp 0x00000001, r21
	bz9 .BB.LABEL.6_27
.BB.LABEL.6_12:	; if_break_bb41
	cmp 0x00000002, r21
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_13:	; switch_clause_bb44
	mov 0x00000002, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_14:	; if_break_bb41
	cmp 0x00000004, r21
	bz9 .BB.LABEL.6_28
.BB.LABEL.6_15:	; if_break_bb41
	cmp 0x00000008, r21
	bz9 .BB.LABEL.6_29
.BB.LABEL.6_16:	; if_break_bb41
	addi 0xFFFFFFF0, r21, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_17:	; switch_clause_bb47
	mov 0x00000005, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_18:	; if_break_bb41
	addi 0xFFFFFF01, r21, r0
	bgt9 .BB.LABEL.6_23
.BB.LABEL.6_19:	; if_break_bb41
	addi 0xFFFFFFE0, r21, r0
	bz9 .BB.LABEL.6_30
.BB.LABEL.6_20:	; if_break_bb41
	addi 0xFFFFFFC0, r21, r0
	bz9 .BB.LABEL.6_31
.BB.LABEL.6_21:	; if_break_bb41
	addi 0xFFFFFF80, r21, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_22:	; switch_clause_bb50
	mov 0x00000008, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_23:	; if_break_bb41
	addi 0xFFFFFF00, r21, r0
	bz9 .BB.LABEL.6_32
.BB.LABEL.6_24:	; if_break_bb41
	addi 0xFFFFFC00, r21, r0
	bz9 .BB.LABEL.6_33
.BB.LABEL.6_25:	; if_break_bb41
	addi 0xFFFFFE00, r21, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_26:	; if_break_bb41.switch_break_bb_crit_edge
	mov 0x0000000A, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_27:	; switch_clause_bb43
	mov 0x00000001, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_28:	; switch_clause_bb45
	mov 0x00000003, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_29:	; switch_clause_bb46
	mov 0x00000004, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_30:	; switch_clause_bb48
	mov 0x00000006, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_31:	; switch_clause_bb49
	mov 0x00000007, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_32:	; switch_clause_bb51
	mov 0x00000009, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_33:	; switch_clause_bb52
	mov 0x0000000B, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_34:	; if_then_bb58
	movea 0x00000010, r0, r21
	br9 .BB.LABEL.6_47
.BB.LABEL.6_35:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3803
	andi 0x00000200, r21, r0
	bnz9 .BB.LABEL.6_26
.BB.LABEL.6_36:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3807
	andi 0x00000100, r21, r0
	bnz9 .BB.LABEL.6_32
.BB.LABEL.6_37:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3811
	andi 0x00000002, r21, r0
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_38:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3815
	andi 0x00000004, r21, r0
	bnz9 .BB.LABEL.6_28
.BB.LABEL.6_39:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3819
	andi 0x00000008, r21, r0
	bnz9 .BB.LABEL.6_29
.BB.LABEL.6_40:	; if_else_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3823
	andi 0x00000010, r21, r0
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_41:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3827
	andi 0x00000020, r21, r0
	bnz9 .BB.LABEL.6_30
.BB.LABEL.6_42:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3831
	andi 0x00000080, r21, r0
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_43:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3835
	andi 0x00000040, r21, r0
	bnz9 .BB.LABEL.6_31
.BB.LABEL.6_44:	; if_else_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3840
	andi 0x00000001, r21, r0
	bnz9 .BB.LABEL.6_27
.BB.LABEL.6_45:	; if_else_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3844
	andi 0x00000400, r21, r0
	bnz9 .BB.LABEL.6_33
.BB.LABEL.6_46:	; if_else_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000012, r0, r21
.BB.LABEL.6_47:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3865
	jarl _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3868
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r5
	movea 0x000007FF, r0, r6
	st.w r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3876
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r2
	st.w r6, 0x00000108[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3884
	jarl _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
_Mcu_GetResetRawValue:
	.stack _Mcu_GetResetRawValue = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3940
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3948
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3951
	jarl _Det_ReportError, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3954
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3960
	jarl _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3962
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r2
	ld.bu LOWW(#_Mcu_GblResetFlag)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3965
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r5
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r6
	st.w r5, LOWW(#_Mcu_GulResetValue.4)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3966
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r5
	st.b r0, LOWW(#_Mcu_GblResetFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3967
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r2
	ld.w 0x00000100[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3969
	ld.w LOWW(#_Mcu_GulResetValue.4)[r6], r5
	cmp r2, r5
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3973
	or r2, r5
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r2
	st.w r5, LOWW(#_Mcu_GulResetValue.4)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3985
	jarl _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 3990
	jarl _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_break_bb39.critedge1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	jarl _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
.BB.LABEL.7_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4000
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r2
	ld.w LOWW(#_Mcu_GulResetValue.4)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4002
	jarl _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4005
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r5
	movea 0x000007FF, r0, r6
	st.w r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4013
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r2
	st.w r6, 0x00000108[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4021
	jarl _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_PerformReset:
	.stack _Mcu_PerformReset = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4081
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4093
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4096
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4106
	jarl _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	mov 0x00000005, r2
.BB.LABEL.8_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4109
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.w r7, 0x000002A4[r6]
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.w r8, 0x000002A4[r6]
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	st.w r7, 0x000002A4[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; bb36
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4116
	jarl _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4119
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4125
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.8_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4134
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_SetMode:
	.stack _Mcu_SetMode = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4199
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4236
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r2
	ld.bu LOWW(#_Mcu_GblWakeUpPreparation)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	movea 0x000000EF, r0, r9
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4239
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4248
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	br9 .BB.LABEL.9_7
.BB.LABEL.9_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4259
	cmp 0x00000001, r20
	bnh9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000C, r9
.BB.LABEL.9_7:	; if_then_bb31
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.9_8:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4275
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_9:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4279
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.bu 0x00000011[r2], r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4290
	mulhi 0x0000000C, r21, r2
	mov #_Mcu_GstModeSetting, r20
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4310
	ld.bu 0x0000000A[r20], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4312
	ld.bu 0x00000008[r20], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4310
	add 0x0000000A, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4312
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.9_17
.BB.LABEL.9_10:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4318
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4322
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.9_19
.BB.LABEL.9_11:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4328
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_15
.BB.LABEL.9_12:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4330
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.9_15
.BB.LABEL.9_13:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00009708[r2], r2
	zxb r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_15
.BB.LABEL.9_14:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4335
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.9_15:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4371
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_16:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4373
	jarl _Mcu_MainOscDisable.1, r31
	br9 .BB.LABEL.9_19
.BB.LABEL.9_17:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4387
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_then_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4390
	jarl _Mcu_MainOscEnable.1, r31
.BB.LABEL.9_19:	; if_break_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4399
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_20:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4401
	cmp 0x00000001, r23
	bz9 .BB.LABEL.9_25
.BB.LABEL.9_21:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r23
	bz17 .BB.LABEL.9_61
.BB.LABEL.9_22:	; if_then_bb132
	cmp 0x00000003, r23
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4404
	mulh 0x0000000C, r21
	mov #_Mcu_GstModeSetting, r20
	add r21, r20
	ld.bu 0x00000009[r20], r20
	cmp 0x00000001, r20
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_24:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4410
	halt
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4414
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4415
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4416
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4417
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4418
	nop
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.9_25:	; switch_clause_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4426
	mulh 0x0000000C, r21
	mov #_Mcu_GstModeSetting, r2
	add r21, r2
	ld.bu 0x00000009[r2], r21
	cmp 0x00000001, r21
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_26:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4429
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	tst1 0x00000003, 0x00000012[r21]
	bz9 .BB.LABEL.9_31
.BB.LABEL.9_27:	; if_then_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4434
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.9_29
.BB.LABEL.9_28:	; if_then_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r6
	br9 .BB.LABEL.9_30
.BB.LABEL.9_29:	; if_else_bb170
	mov 0x00000000, r6
.BB.LABEL.9_30:	; if_else_bb170
	mov r6, r7
	jarl _Mcu_ShiftClockDomain.1, r31
.BB.LABEL.9_31:	; if_break_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4479
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_34
.BB.LABEL.9_32:	; bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	andi 0x00000004, r21, r0
	bz9 .BB.LABEL.9_34
.BB.LABEL.9_33:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4483
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.9_34:	; if_break_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4533
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_71
.BB.LABEL.9_35:	; if_break_bb197.bb204_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r21
.BB.LABEL.9_36:	; bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4540
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00000000[r2]
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r2], r5
	mov 0x00000001, r6
	st.w r6, 0x00000010[r5]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r2], r5
	mov 0xFFFFFFFE, r7
	st.w r7, 0x00000010[r5]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r2], r2
	st.w r6, 0x00000010[r2]
	add 0xFFFFFFFF, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.9_38
.BB.LABEL.9_37:	; bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.9_36
.BB.LABEL.9_38:	; bb238
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r21], r21
	ld.w 0x00000004[r21], r21
	cmp 0x00000001, r21
	setf 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4546
	bnz9 .BB.LABEL.9_40
.BB.LABEL.9_39:	; if_then_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4552
	jarl _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.9_41
.BB.LABEL.9_40:	; bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4557
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r2], r2
	ld.w 0x00000010[r2], r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.9_40
.BB.LABEL.9_41:	; if_break_bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4567
	cmp 0x00000001, r21
	bz9 .BB.LABEL.9_46
.BB.LABEL.9_42:	; if_then_bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4569
	ld.bu 0x00000000[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4570
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.9_46
.BB.LABEL.9_43:	; if_then_bb279
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4572
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4573
	tst1 0x00000000, 0x00000012[r21]
	bz9 .BB.LABEL.9_46
.BB.LABEL.9_44:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4579
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld.w 0x00000104[r21], r21
	andi 0x00000004, r21, r0
	bnz9 .BB.LABEL.9_46
.BB.LABEL.9_45:	; if_then_bb299
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4583
	jarl _Mcu_MainOscEnable.1, r31
	mov r10, r22
.BB.LABEL.9_46:	; if_break_bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4609
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.9_58
.BB.LABEL.9_47:	; if_then_bb314
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4611
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r21
	ld.w LOWW(#_Mcu_GpClockSetting)[r21], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4613
	tst1 0x00000003, 0x00000012[r21]
	bnz9 .BB.LABEL.9_49
.BB.LABEL.9_48:	; if_then_bb314.if_break_bb339_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.9_51
.BB.LABEL.9_49:	; if_then_bb326
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4618
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	andi 0x00000004, r21, r0
	bnz9 .BB.LABEL.9_48
.BB.LABEL.9_50:	; if_then_bb334
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4622
	jarl _Mcu_StartPLL.1, r31
	mov 0x00000001, r21
	mov r10, r22
.BB.LABEL.9_51:	; if_break_bb339
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4658
	cmp 0x00000000, r21
	bz9 .BB.LABEL.9_58
.BB.LABEL.9_52:	; if_break_bb339.bb361_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r21
	br9 .BB.LABEL.9_54
.BB.LABEL.9_53:	; bb358
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4697
	add 0xFFFFFFFF, r21
.BB.LABEL.9_54:	; bb361
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4692
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r2
	andi 0x0000FFFF, r21, r0
	bz9 .BB.LABEL.9_56
.BB.LABEL.9_55:	; bb361
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_53
.BB.LABEL.9_56:	; bb381
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4701
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r21
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r21], r21
	ld23.w 0x00008004[r21], r21
	andi 0x00000004, r21, r0
	bnz9 .BB.LABEL.9_58
.BB.LABEL.9_57:	; if_then_bb389
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4705
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.9_58:	; if_break_bb395
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4753
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.9_71
.BB.LABEL.9_59:	; if_then_bb401
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4757
	jarl _Mcu_ReinitClockConfiguration.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4759
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_71
.BB.LABEL.9_60:	; if_then_bb408
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4762
	jarl _Mcu_ResumeCpuClock.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.9_61:	; switch_clause_bb418
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4795
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.w 0x0000001C[r2], r2
	mov 0x00000000, r5
.BB.LABEL.9_62:	; bb422
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4803
	andi 0x000000FF, r5, r6
	shl 0x00000002, r6
	mov #_Mcu_GaaPortGroup, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4806
	add 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4808
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4797
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.9_62
.BB.LABEL.9_63:	; bb439
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4815
	jarl _Mcu_StandByPrepare.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4817
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_71
.BB.LABEL.9_64:	; if_then_bb446
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4820
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r5
	movea 0x000007FF, r0, r6
	st.w r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4828
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r2], r2
	st.w r6, 0x00000108[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4836
	mulh 0x0000000C, r21
	mov #_Mcu_GstModeSetting, r2
	add r21, r2
	ld.bu 0x00000009[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_71
.BB.LABEL.9_65:	; if_then_bb446.bb459_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r2
.BB.LABEL.9_66:	; bb459
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4842
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r6
	mov 0x00000002, r7
	st.w r7, 0x00000000[r6]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r6
	mov 0xFFFFFFFD, r8
	st.w r8, 0x00000000[r6]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r5
	st.w r7, 0x00000000[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.9_68
.BB.LABEL.9_67:	; bb479
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.9_66
.BB.LABEL.9_68:	; bb493
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_70
.BB.LABEL.9_69:	; if_then_bb508
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4854
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.9_70:	; bb510
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4865
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4866
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4867
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4868
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4869
	nop
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4859
	br9 .BB.LABEL.9_70
.BB.LABEL.9_71:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 4906
	dispose 0x00000000, 0x00000079, [r31]
_Mcu_CkscConfigure.1:
	.stack _Mcu_CkscConfigure.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5039
	prepare 0x000007F9, 0x00000000
	mov 0x00000000, r20
	mov r8, r21
	mov r7, r22
	mov r20, r23
	mov r6, r24
	jr .BB.LABEL.10_97
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5075
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r27
	ld.w LOWW(#_Mcu_GpCkscSetting)[r27], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5078
	ld.bu 0x00000006[r2], r7
	ld.hu 0x00000002[r2], r6
	jarl _Mcu_ReloadClockDomainSTPM.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5084
	ld.w LOWW(#_Mcu_GpCkscSetting)[r27], r2
	ld.bu 0x00000000[r2], r2
	addi 0xFFFFFFE5, r2, r0
	bgt9 .BB.LABEL.10_11
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFEE, r2, r0
	bgt9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; bb
	cmp 0x00000004, r2
	bz17 .BB.LABEL.10_23
.BB.LABEL.10_4:	; bb
	cmp 0x00000009, r2
	bz17 .BB.LABEL.10_24
.BB.LABEL.10_5:	; bb
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_6:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5120
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000040, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5114
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5118
	ld.w 0x00001508[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5116
	movea 0x00001508, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5114
	movea 0x00001500, r26, r26
	jr .BB.LABEL.10_32
.BB.LABEL.10_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFED, r2, r0
	bz17 .BB.LABEL.10_25
.BB.LABEL.10_8:	; bb
	addi 0xFFFFFFEA, r2, r0
	bz17 .BB.LABEL.10_26
.BB.LABEL.10_9:	; bb
	addi 0xFFFFFFE6, r2, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_10:	; switch_clause_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5166
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5170
	ld23.w 0x00009208[r26], r2
	ori 0x00009208, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5168
	add r26, r25
	ori 0x00009200, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5166
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5172
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000070, r20, r20
	jr .BB.LABEL.10_32
.BB.LABEL.10_11:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDA, r2, r0
	bgt9 .BB.LABEL.10_16
.BB.LABEL.10_12:	; bb
	addi 0xFFFFFFE4, r2, r0
	bz17 .BB.LABEL.10_28
.BB.LABEL.10_13:	; bb
	addi 0xFFFFFFE2, r2, r0
	bz17 .BB.LABEL.10_29
.BB.LABEL.10_14:	; bb
	addi 0xFFFFFFE0, r2, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_15:	; switch_clause_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5206
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5210
	ld23.w 0x00009508[r26], r2
	ori 0x00009508, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5208
	add r26, r25
	ori 0x00009500, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5206
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5212
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x0000007C, r20, r20
	jr .BB.LABEL.10_32
.BB.LABEL.10_16:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD2, r2, r0
	bgt9 .BB.LABEL.10_20
.BB.LABEL.10_17:	; bb
	addi 0xFFFFFFD9, r2, r0
	bz17 .BB.LABEL.10_30
.BB.LABEL.10_18:	; bb
	addi 0xFFFFFFD3, r2, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_19:	; switch_clause_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5233
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5237
	ld23.w 0x00009B08[r26], r2
	ori 0x00009B08, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5235
	add r26, r25
	ori 0x00009B00, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5233
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5239
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x000000A4, r20, r20
	jr .BB.LABEL.10_32
.BB.LABEL.10_20:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD1, r2, r0
	bz17 .BB.LABEL.10_31
.BB.LABEL.10_21:	; bb
	addi 0xFFFFFFCF, r2, r0
	bz9 .BB.LABEL.10_27
.BB.LABEL.10_22:	; bb.switch_break_bb_crit_edge
	mov 0xFFFFFFFF, r2
	jr .BB.LABEL.10_32
.BB.LABEL.10_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5094
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000028, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5088
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5092
	ld.w 0x00001108[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5090
	movea 0x00001108, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5088
	movea 0x00001100, r26, r26
	jr .BB.LABEL.10_32
.BB.LABEL.10_24:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5106
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000034, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5101
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5104
	ld.w 0x00001308[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5103
	movea 0x00001308, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5101
	movea 0x00001300, r26, r26
	jr .BB.LABEL.10_32
.BB.LABEL.10_25:	; switch_clause_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5133
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x0000004C, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5127
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5131
	ld.w 0x00001708[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5129
	movea 0x00001708, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5127
	movea 0x00001700, r26, r26
	br9 .BB.LABEL.10_32
.BB.LABEL.10_26:	; switch_clause_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5140
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5144
	ld23.w 0x00009008[r26], r2
	ori 0x00009008, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5142
	add r26, r25
	ori 0x00009000, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5140
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5146
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000064, r20, r20
	br9 .BB.LABEL.10_32
.BB.LABEL.10_27:	; switch_clause_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5153
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5157
	ld23.w 0x00009018[r26], r2
	ori 0x00009018, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5155
	add r26, r25
	ori 0x00009010, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5153
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5159
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000068, r20, r20
	br9 .BB.LABEL.10_32
.BB.LABEL.10_28:	; switch_clause_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5179
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5183
	ld23.w 0x00009308[r26], r2
	ori 0x00009308, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5181
	add r26, r25
	ori 0x00009300, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5179
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5185
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000074, r20, r20
	br9 .BB.LABEL.10_32
.BB.LABEL.10_29:	; switch_clause_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5192
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5196
	ld23.w 0x00009408[r26], r2
	ori 0x00009408, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5194
	add r26, r25
	ori 0x00009400, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5192
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5198
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000078, r20, r20
	br9 .BB.LABEL.10_32
.BB.LABEL.10_30:	; switch_clause_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5220
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5224
	ld23.w 0x00009908[r26], r2
	ori 0x00009908, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5222
	add r26, r25
	ori 0x00009900, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5220
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5226
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000094, r20, r20
	br9 .BB.LABEL.10_32
.BB.LABEL.10_31:	; switch_clause_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5246
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5250
	ld23.w 0x00009C08[r26], r2
	ori 0x00009C08, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5248
	add r26, r25
	ori 0x00009C00, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5246
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5252
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x000000A8, r20, r20
.BB.LABEL.10_32:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5264
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r5
	tst1 0x00000000, 0x00000006[r5]
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_33:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.bu 0x00000000[r5], r6
	cmp 0x00000000, r6
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_34:	; bb142
	cmp 0xFFFFFFFF, r2
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_35:	; if_then_bb
	mov 0xFFF8A000, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5272
	cmp r23, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5269
	ld.bu 0x00000004[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5272
	bnz9 .BB.LABEL.10_37
.BB.LABEL.10_36:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5275
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r23
	st.w r27, LOWW(#_Mcu_GulCpuClockSetting.2)[r23]
.BB.LABEL.10_37:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5283
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.10_41
.BB.LABEL.10_38:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5286
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st23.w r5, 0x00008000[r2]
	st.w r27, 0x00000000[r26]
	not r27, r2
	st.w r2, 0x00000000[r26]
	st.w r27, 0x00000000[r26]
	add 0xFFFFFFFF, r23
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.10_40
.BB.LABEL.10_39:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_38
.BB.LABEL.10_40:	; bb213
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r23
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r23], r23
	ld23.w 0x00008004[r23], r23
	br9 .BB.LABEL.10_44
.BB.LABEL.10_41:	; bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5313
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00000000[r2]
	st.w r27, 0x00000000[r26]
	not r27, r2
	st.w r2, 0x00000000[r26]
	st.w r27, 0x00000000[r26]
	add 0xFFFFFFFF, r23
	andi 0x000000FF, r23, r0
	bz9 .BB.LABEL.10_43
.BB.LABEL.10_42:	; bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_41
.BB.LABEL.10_43:	; bb265
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r23
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r23], r23
	ld.w 0x00000004[r23], r23
.BB.LABEL.10_44:	; bb265
	st.w r27, 0x00000000[r20]
	cmp 0x00000001, r23
	setf 0x00000002, r23
	bnz9 .BB.LABEL.10_46
.BB.LABEL.10_45:	; if_then_bb282
	mov 0x00000001, r7
	mov 0x00000002, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.10_46:	; if_break_bb285
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.10_48
.BB.LABEL.10_47:	; bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5343
	add 0xFFFFFFFF, r2
.BB.LABEL.10_48:	; bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5339
	ld.w 0x00000000[r25], r5
	cmp r5, r27
	bz9 .BB.LABEL.10_50
.BB.LABEL.10_49:	; bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.10_47
.BB.LABEL.10_50:	; bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5345
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r2
	ld.w LOWW(#_Mcu_GpCkscSetting)[r2], r2
	ld.bu 0x00000000[r2], r2
	addi 0xFFFFFFCF, r2, r0
	bnz9 .BB.LABEL.10_53
.BB.LABEL.10_51:	; bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.10_53
.BB.LABEL.10_52:	; bb308.if_break_bb330_crit_edge
	mov 0x00000000, r2
	mov r2, r27
	br9 .BB.LABEL.10_54
.BB.LABEL.10_53:	; if_else_bb329
	mov 0x00000001, r2
.BB.LABEL.10_54:	; if_break_bb330
	movhi HIGHW1(#_Mcu_GblPllActCheck), r0, r5
	st.b r2, LOWW(#_Mcu_GblPllActCheck)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5356
	ld.w 0x00000000[r25], r2
	cmp r2, r27
	bz9 .BB.LABEL.10_56
.BB.LABEL.10_55:	; if_then_bb337
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r23
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5359
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.10_56:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5376
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r2
	ld.w LOWW(#_Mcu_GpCkscSetting)[r2], r2
	ld.bu 0x00000001[r2], r2
	addi 0xFFFFFFE9, r2, r0
	bgt9 .BB.LABEL.10_64
.BB.LABEL.10_57:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000A, r2
	bgt9 .BB.LABEL.10_61
.BB.LABEL.10_58:	; if_break_bb341
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_71
.BB.LABEL.10_59:	; if_break_bb341
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_60:	; switch_clause_bb366
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5412
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x0000002C, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5407
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5410
	ld.w 0x00001208[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5409
	movea 0x00001208, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5407
	movea 0x00001200, r26, r26
	jr .BB.LABEL.10_78
.BB.LABEL.10_61:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000B, r2
	bz9 .BB.LABEL.10_74
.BB.LABEL.10_62:	; if_break_bb341
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_63:	; switch_clause_bb382
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5434
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000044, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5429
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5432
	ld.w 0x00001608[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5431
	movea 0x00001608, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5429
	movea 0x00001600, r26, r26
	jr .BB.LABEL.10_78
.BB.LABEL.10_64:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDD, r2, r0
	bgt9 .BB.LABEL.10_68
.BB.LABEL.10_65:	; if_break_bb341
	addi 0xFFFFFFE8, r2, r0
	bz9 .BB.LABEL.10_75
.BB.LABEL.10_66:	; if_break_bb341
	addi 0xFFFFFFDE, r2, r0
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_67:	; switch_clause_bb398
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5452
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5455
	ld23.w 0x00009608[r26], r2
	ori 0x00009608, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5454
	add r26, r25
	ori 0x00009600, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5452
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5457
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x00000080, r20, r20
	br9 .BB.LABEL.10_78
.BB.LABEL.10_68:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDC, r2, r0
	bz9 .BB.LABEL.10_77
.BB.LABEL.10_69:	; if_break_bb341
	addi 0xFFFFFFD6, r2, r0
	bz9 .BB.LABEL.10_76
.BB.LABEL.10_70:	; if_break_bb341.switch_break_bb423_crit_edge
	mov 0xFFFFFFFF, r2
	br9 .BB.LABEL.10_78
.BB.LABEL.10_71:	; switch_clause_bb346
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5379
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001000[r5], r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00001008[r2], r2
	cmp r2, r5
	bz9 .BB.LABEL.10_73
.BB.LABEL.10_72:	; if_then_bb356
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r23
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5386
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
	mov 0xFFFFFFFF, r2
	br9 .BB.LABEL.10_78
.BB.LABEL.10_73:	; if_else_bb357
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5400
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000020, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5395
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5398
	ld.w 0x00001008[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5397
	movea 0x00001008, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5395
	movea 0x00001000, r26, r26
	br9 .BB.LABEL.10_78
.BB.LABEL.10_74:	; switch_clause_bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5423
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000038, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5418
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5421
	ld.w 0x00001408[r26], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5420
	movea 0x00001408, r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5418
	movea 0x00001400, r26, r26
	br9 .BB.LABEL.10_78
.BB.LABEL.10_75:	; switch_clause_bb390
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5440
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5443
	ld23.w 0x00009108[r26], r2
	ori 0x00009108, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5442
	add r26, r25
	ori 0x00009100, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5440
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5445
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x0000006C, r20, r20
	br9 .BB.LABEL.10_78
.BB.LABEL.10_76:	; switch_clause_bb406
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5465
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5469
	ld23.w 0x00009A08[r26], r2
	ori 0x00009A08, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5467
	add r26, r25
	ori 0x00009A00, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5465
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5471
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x0000009C, r20, r20
	br9 .BB.LABEL.10_78
.BB.LABEL.10_77:	; switch_clause_bb414
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5477
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5480
	ld23.w 0x00009808[r26], r2
	ori 0x00009808, r0, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5479
	add r26, r25
	ori 0x00009800, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5477
	add r20, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5482
	mov #_Mcu_GddClkCntlRegRamMirror, r20
	movea 0x0000008C, r20, r20
.BB.LABEL.10_78:	; switch_break_bb423
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5493
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r5
	tst1 0x00000001, 0x00000006[r5]
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_79:	; bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.bu 0x00000001[r5], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_80:	; bb433
	cmp 0xFFFFFFFF, r2
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_81:	; if_then_bb459
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5502
	cmp 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5498
	ld.bu 0x00000005[r5], r27
	bnz9 .BB.LABEL.10_85
.BB.LABEL.10_82:	; bb470
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5505
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	st.w r27, 0x00000000[r26]
	not r27, r5
	st.w r5, 0x00000000[r26]
	st.w r27, 0x00000000[r26]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.10_84
.BB.LABEL.10_83:	; bb487
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_82
.BB.LABEL.10_84:	; bb501
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	br9 .BB.LABEL.10_88
.BB.LABEL.10_85:	; bb522
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5532
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	st.w r27, 0x00000000[r26]
	not r27, r5
	st.w r5, 0x00000000[r26]
	st.w r27, 0x00000000[r26]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.10_87
.BB.LABEL.10_86:	; bb539
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_85
.BB.LABEL.10_87:	; bb553
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
.BB.LABEL.10_88:	; bb553
	st.w r27, 0x00000000[r20]
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_90
.BB.LABEL.10_89:	; if_then_bb570
	mov 0x00000001, r23
	mov 0x00000002, r6
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.10_90:	; if_break_bb573
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.10_92
.BB.LABEL.10_91:	; bb574
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5561
	add 0xFFFFFFFF, r2
.BB.LABEL.10_92:	; bb577
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5558
	ld.w 0x00000000[r25], r5
	cmp r5, r27
	bz9 .BB.LABEL.10_94
.BB.LABEL.10_93:	; bb577
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.10_91
.BB.LABEL.10_94:	; bb596
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5563
	ld.w 0x00000000[r25], r2
	cmp r2, r27
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_95:	; if_then_bb603
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r23
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5566
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.10_96:	; if_break_bb607
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5580
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r2
	ld.w LOWW(#_Mcu_GpCkscSetting)[r2], r5
	add 0x00000008, r5
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5583
	add 0xFFFFFFFF, r24
.BB.LABEL.10_97:	; bb612
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5071
	andi 0x000000FF, r23, r0
	bnz9 .BB.LABEL.10_99
.BB.LABEL.10_98:	; bb612
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x000000FF, r24, r0
	bnz17 .BB.LABEL.10_1
.BB.LABEL.10_99:	; bb630
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 5586
	andi 0x000000FF, r23, r10
	dispose 0x00000000, 0x000007F9, [r31]
_Mcu_StopPLL.1:
	.stack _Mcu_StopPLL.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6313
	prepare 0x00000041, 0x00000000
	mov 0x00000005, r2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6326
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0x00000002, r7
	st23.w r7, 0x00008000[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0xFFFFFFFD, r8
	st23.w r8, 0x00008000[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st23.w r7, 0x00008000[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; bb31
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6333
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb31.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_then_bb43
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6340
	jarl _Dem_ReportErrorStatus, r31
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6352
	add 0xFFFFFFFF, r2
.BB.LABEL.11_7:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6348
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_9:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6354
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6356
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_11:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6364
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_StartPLL.1:
	.stack _Mcu_StartPLL.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6414
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6423
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00008008[r5], r6
	movea 0xFFFFE7C0, r0, r7
	and r7, r6
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r8
	ld.w LOWW(#_Mcu_GpClockSetting)[r8], r9
	ld.w 0x00000008[r9], r9
	or r9, r6
	st23.w r6, 0x00008008[r5]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008008[r2], r2
	and r7, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r8], r5
	ld.w 0x00000008[r5], r5
	or r5, r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000005C), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000005C)[r5]
	mov 0x00000005, r2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6437
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st23.w r7, 0x00008000[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st23.w r8, 0x00008000[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st23.w r7, 0x00008000[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb48
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6444
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6450
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.12_5:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6458
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_StandByPrepare.1:
	.stack _Mcu_StandByPrepare.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6706
	prepare 0x00000001, 0x00000000
	mov r6, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6732
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6756
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6759
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6774
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_MainOscDisable.1:
	.stack _Mcu_MainOscDisable.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6830
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6841
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	mov 0x00000002, r5
	st.w r5, 0x00000118[r2]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r2
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r2]
	mov 0x00000005, r2
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6850
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0x00000002, r7
	st.w r7, 0x00000100[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0xFFFFFFFD, r8
	st.w r8, 0x00000100[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st.w r7, 0x00000100[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; bb33
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6856
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; bb33.bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.14_7
.BB.LABEL.14_5:	; if_then_bb45
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6862
	jarl _Dem_ReportErrorStatus, r31
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6874
	add 0xFFFFFFFF, r2
.BB.LABEL.14_7:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6870
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_9:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6876
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.14_11
.BB.LABEL.14_10:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r20
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6879
	mov r20, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.14_11:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6889
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_ReloadClockDomainSTPM.1:
	.stack _Mcu_ReloadClockDomainSTPM.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6937
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6950
	cmp r2, r6
	bz17 .BB.LABEL.15_27
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6956
	addi 0xFFFFFFEC, r6, r0
	bgt9 .BB.LABEL.15_9
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000C, r6
	bgt9 .BB.LABEL.15_6
.BB.LABEL.15_3:	; if_then_bb
	cmp 0x00000003, r6
	bz9 .BB.LABEL.15_16
.BB.LABEL.15_4:	; if_then_bb
	cmp 0x00000008, r6
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_5:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6971
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000030, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6968
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movea 0x00001218, r2, r2
	br9 .BB.LABEL.15_21
.BB.LABEL.15_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000D, r6
	bz9 .BB.LABEL.15_17
.BB.LABEL.15_7:	; if_then_bb
	addi 0xFFFFFFEE, r6, r0
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_8:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6989
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000048, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6986
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movea 0x00001618, r2, r2
	br9 .BB.LABEL.15_21
.BB.LABEL.15_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD8, r6, r0
	bgt9 .BB.LABEL.15_13
.BB.LABEL.15_10:	; if_then_bb
	addi 0xFFFFFFEB, r6, r0
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_11:	; if_then_bb
	addi 0xFFFFFFDA, r6, r0
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_12:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7004
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ori 0x00009818, r0, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7007
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000090, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_13:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD7, r6, r0
	bz9 .BB.LABEL.15_19
.BB.LABEL.15_14:	; if_then_bb
	addi 0xFFFFFFD4, r6, r0
	bz9 .BB.LABEL.15_20
.BB.LABEL.15_15:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_16:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6962
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000024, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6959
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movea 0x00001018, r2, r2
	br9 .BB.LABEL.15_21
.BB.LABEL.15_17:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6980
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x0000003C, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6977
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movea 0x00001418, r2, r2
	br9 .BB.LABEL.15_21
.BB.LABEL.15_18:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6998
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000050, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 6995
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	movea 0x00001718, r2, r2
	br9 .BB.LABEL.15_21
.BB.LABEL.15_19:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7013
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ori 0x00009918, r0, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7016
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000098, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_20:	; switch_clause_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7022
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ori 0x00009A18, r0, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7025
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x000000A0, r5, r5
.BB.LABEL.15_21:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7039
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_27
.BB.LABEL.15_22:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.15_27
.BB.LABEL.15_23:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7045
	andi 0x00000004, r7, r0
	bz9 .BB.LABEL.15_26
.BB.LABEL.15_24:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000003, r6
.BB.LABEL.15_25:	; if_then_bb56
	st.w r6, 0x00000000[r2]
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7079
	jmp [r31]
.BB.LABEL.15_26:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r6
	br9 .BB.LABEL.15_25
.BB.LABEL.15_27:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7079
	jmp [r31]
_Mcu_ShiftClockDomain.1:
	.stack _Mcu_ShiftClockDomain.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7135
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7190
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7172
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r8
	ld.w LOWW(#_Mcu_GpConfigPtr)[r8], r8
	ld.w 0x0000000C[r8], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7190
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r8
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7197
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	ld.b 0x00000015[r2], r21
	ld.b 0x00000016[r2], r5
	add r5, r21
	ld.b 0x00000017[r2], r5
	add r5, r21
	ld.b 0x00000018[r2], r2
	add r2, r21
	mov 0x00000000, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7205
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r25
	ld.w LOWW(#_Mcu_GpCkscSetting)[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7208
	ld.bu 0x00000006[r2], r7
	ld.hu 0x00000002[r2], r6
	jarl _Mcu_ReloadClockDomainSTPM.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7211
	ld.w LOWW(#_Mcu_GpCkscSetting)[r25], r2
	add 0x00000008, r2
	st.w r2, LOWW(#_Mcu_GpCkscSetting)[r25]
	add 0x00000001, r22
.BB.LABEL.16_2:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7202
	andi 0x000000FF, r22, r2
	andi 0x000000FF, r21, r5
	cmp r5, r2
	bl9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; bb63.bb1350_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r21
	mov r21, r22
	jr .BB.LABEL.16_153
.BB.LABEL.16_4:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7225
	ld.bu 0x00000000[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7229
	addi 0xFFFFFFE3, r25, r0
	bgt17 .BB.LABEL.16_25
.BB.LABEL.16_5:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFEE, r25, r0
	bgt9 .BB.LABEL.16_17
.BB.LABEL.16_6:	; bb71
	cmp 0x00000004, r25
	bz17 .BB.LABEL.16_42
.BB.LABEL.16_7:	; bb71
	cmp 0x00000009, r25
	bz17 .BB.LABEL.16_55
.BB.LABEL.16_8:	; bb71
	cmp 0x0000000E, r25
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_9:	; switch_clause_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7372
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7373
	addi 0x00000004, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7392
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7374
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7376
	movea 0x00001508, r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7374
	movea 0x00001500, r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7377
	ld.w 0x00001500[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7380
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7382
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7385
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7387
	ld23.w 0x00009700[r6], r6
	bnz17 .BB.LABEL.16_57
.BB.LABEL.16_10:	; if_then_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7395
	cmp 0x00000001, r23
	bnz17 .BB.LABEL.16_56
.BB.LABEL.16_11:	; if_then_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7397
	cmp 0x00000002, r7
	bz9 .BB.LABEL.16_16
.BB.LABEL.16_12:	; if_else_bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7401
	cmp 0x00000003, r7
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_13:	; if_then_bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7403
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_16
.BB.LABEL.16_14:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7407
	cmp 0x00000003, r27
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_15:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_16:	; if_then_bb316
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000040, r6, r6
	mov 0x00000001, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_17:	; bb71
	addi 0xFFFFFFE7, r25, r0
	bgt9 .BB.LABEL.16_21
.BB.LABEL.16_18:	; bb71
	addi 0xFFFFFFED, r25, r0
	bz17 .BB.LABEL.16_60
.BB.LABEL.16_19:	; bb71
	addi 0xFFFFFFEA, r25, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_20:	; switch_clause_bb462
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7579
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7577
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7582
	ld23.w 0x00009000[r8], r7
	ori 0x00009008, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7581
	add r8, r26
	ori 0x00009000, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7579
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7578
	add r2, r5
	ori 0x00008000, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7577
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7588
	cmp 0x00000001, r24
	setf 0x00000002, r6
	cmp 0x00000002, r7
	setf 0x00000002, r27
	and r27, r6
	cmp 0x00000003, r7
	setf 0x00000002, r27
	or r27, r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7597
	cmov 0x0000000A, 0x00000001, r7, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7600
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000064, r6, r6
	jr .BB.LABEL.16_135
.BB.LABEL.16_21:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE6, r25, r0
	bz17 .BB.LABEL.16_74
.BB.LABEL.16_22:	; bb71
	addi 0xFFFFFFE4, r25, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_23:	; switch_clause_bb617
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7711
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7709
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7714
	ld23.w 0x00009300[r8], r7
	ori 0x00009308, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7713
	add r8, r26
	ori 0x00009300, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7711
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7710
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7709
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7729
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7717
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7719
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7722
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7724
	ld23.w 0x00009700[r6], r6
	bz17 .BB.LABEL.16_81
.BB.LABEL.16_24:	; switch_clause_bb617.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000074, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_25:	; bb71
	addi 0xFFFFFFD7, r25, r0
	bgt9 .BB.LABEL.16_34
.BB.LABEL.16_26:	; bb71
	addi 0xFFFFFFE2, r25, r0
	bz17 .BB.LABEL.16_86
.BB.LABEL.16_27:	; bb71
	addi 0xFFFFFFE0, r25, r0
	bz17 .BB.LABEL.16_100
.BB.LABEL.16_28:	; bb71
	addi 0xFFFFFFD9, r25, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_29:	; switch_clause_bb896
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7956
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7954
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7959
	ld23.w 0x00009900[r8], r7
	ori 0x00009908, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7958
	add r8, r26
	ori 0x00009900, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7956
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7955
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7954
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7974
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7962
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7964
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7967
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7969
	ld23.w 0x00009700[r6], r6
	bnz17 .BB.LABEL.16_112
.BB.LABEL.16_30:	; if_then_bb921
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7977
	cmp 0x00000001, r7
	bz17 .BB.LABEL.16_111
.BB.LABEL.16_31:	; if_then_bb921
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r23
	bnz17 .BB.LABEL.16_111
.BB.LABEL.16_32:	; if_else_bb933
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7983
	addi 0xFFFFFFFE, r7, r9
	cmp 0x00000002, r9
	bl17 .BB.LABEL.16_108
.BB.LABEL.16_33:	; if_else_bb933.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000094, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_34:	; bb71
	addi 0xFFFFFFD2, r25, r0
	bgt9 .BB.LABEL.16_39
.BB.LABEL.16_35:	; bb71
	addi 0xFFFFFFD6, r25, r0
	bz17 .BB.LABEL.16_128
.BB.LABEL.16_36:	; bb71
	addi 0xFFFFFFD3, r25, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_37:	; switch_clause_bb1008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8053
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8051
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8056
	ld23.w 0x00009B00[r8], r7
	ori 0x00009B08, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8055
	add r8, r26
	ori 0x00009B00, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8053
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8052
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8051
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8071
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8059
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8061
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8064
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8066
	ld23.w 0x00009700[r6], r6
	bz17 .BB.LABEL.16_115
.BB.LABEL.16_38:	; switch_clause_bb1008.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x000000A4, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_39:	; bb71
	addi 0xFFFFFFD1, r25, r0
	bz17 .BB.LABEL.16_121
.BB.LABEL.16_40:	; bb71
	addi 0xFFFFFFCF, r25, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_41:	; switch_clause_bb504
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7611
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7609
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7614
	ld23.w 0x00009010[r8], r7
	ori 0x00009018, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7613
	add r8, r26
	ori 0x00009010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7611
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7610
	add r2, r5
	ori 0x00008000, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7609
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7615
	cmp 0x00000001, r24
	setf 0x00000002, r6
	cmp 0x00000002, r7
	setf 0x00000002, r27
	and r27, r6
	cmp 0x00000003, r7
	setf 0x00000002, r27
	or r27, r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7623
	cmov 0x0000000A, 0x00000001, r7, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7626
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000068, r6, r6
	jr .BB.LABEL.16_135
.BB.LABEL.16_42:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7237
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7238
	addi 0x00000004, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7258
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7239
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7241
	movea 0x00001108, r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7239
	movea 0x00001100, r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7242
	ld.w 0x00001100[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7246
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7248
	ld23.w 0x00009010[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7251
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7253
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7258
	bnz9 .BB.LABEL.16_52
.BB.LABEL.16_43:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7261
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.16_50
.BB.LABEL.16_44:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7263
	cmp 0x00000002, r7
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_45:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7267
	cmp 0x00000004, r7
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_46:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7269
	cmp 0x00000002, r9
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_47:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7273
	cmp 0x00000003, r9
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_48:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_49:	; if_then_bb177
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000028, r6, r6
	mov 0x00000001, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_50:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7291
	cmp 0x00000002, r7
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_51:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000004, r7
	bz9 .BB.LABEL.16_49
	br9 .BB.LABEL.16_54
.BB.LABEL.16_52:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7306
	cmp 0x00000004, r7
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_53:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.16_49
.BB.LABEL.16_54:	; if_else_bb165.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000028, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_55:	; switch_clause_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7347
	cmp 0x00000001, r24
	setf 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7343
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7341
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7346
	ld.w 0x00001300[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7347
	cmp 0x00000002, r7
	setf 0x00000002, r6
	tst r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7353
	cmov 0x0000000A, 0x00000003, r7, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7356
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000034, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7345
	movea 0x00001308, r8, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7343
	movea 0x00001300, r8, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7342
	addi 0x00000004, r2, r5
	jr .BB.LABEL.16_135
.BB.LABEL.16_56:	; if_else_bb284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7425
	addi 0xFFFFFFFE, r7, r6
	cmp 0x00000002, r6
	bl17 .BB.LABEL.16_16
	br9 .BB.LABEL.16_59
.BB.LABEL.16_57:	; if_else_bb304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7440
	cmp 0x00000003, r7
	bnz9 .BB.LABEL.16_59
.BB.LABEL.16_58:	; if_else_bb304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r23
	bnz17 .BB.LABEL.16_16
.BB.LABEL.16_59:	; if_else_bb304.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000040, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_60:	; switch_clause_bb321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7475
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7476
	addi 0x00000004, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7495
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7477
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7479
	movea 0x00001708, r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7477
	movea 0x00001700, r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7480
	ld.w 0x00001700[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7483
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7485
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7488
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7490
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7495
	bnz9 .BB.LABEL.16_71
.BB.LABEL.16_61:	; if_then_bb346
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7498
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.16_68
.BB.LABEL.16_62:	; if_then_bb352
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7500
	cmp 0x00000001, r7
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_63:	; if_else_bb358
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7504
	addi 0xFFFFFFFB, r7, r9
	cmp 0x00000002, r9
	bnc9 .BB.LABEL.16_73
.BB.LABEL.16_64:	; if_then_bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7507
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_65:	; if_else_bb380
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7511
	cmp 0x00000003, r27
	bnz9 .BB.LABEL.16_73
.BB.LABEL.16_66:	; if_else_bb380
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_73
.BB.LABEL.16_67:	; if_then_bb457
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000004C, r6, r6
	mov 0x00000002, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_68:	; if_else_bb403
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7529
	cmp 0x00000001, r7
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_69:	; if_else_bb403
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000005, r7
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_70:	; if_else_bb403
	cmp 0x00000006, r7
	bz9 .BB.LABEL.16_67
	br9 .BB.LABEL.16_73
.BB.LABEL.16_71:	; if_else_bb434
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7545
	cmp 0x00000001, r23
	bz9 .BB.LABEL.16_73
.BB.LABEL.16_72:	; if_else_bb441
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7552
	addi 0xFFFFFFFB, r7, r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.16_67
.BB.LABEL.16_73:	; if_else_bb441.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000004C, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_74:	; switch_clause_bb546
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7644
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7642
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7647
	ld23.w 0x00009200[r8], r7
	ori 0x00009208, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7646
	add r8, r26
	ori 0x00009200, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7644
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7643
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7642
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7662
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7650
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7652
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7655
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7657
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7662
	bz9 .BB.LABEL.16_76
.BB.LABEL.16_75:	; switch_clause_bb546.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000070, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_76:	; if_then_bb571
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7664
	addi 0xFFFFFFFF, r7, r9
	cmp 0x00000001, r9
	bh9 .BB.LABEL.16_75
.BB.LABEL.16_77:	; if_then_bb587
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7667
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_80
.BB.LABEL.16_78:	; if_else_bb593
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7671
	cmp 0x00000003, r27
	bnz9 .BB.LABEL.16_75
.BB.LABEL.16_79:	; if_else_bb593
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_75
.BB.LABEL.16_80:	; if_then_bb609
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7674
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000070, r6, r6
	mov 0x00000000, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_81:	; if_then_bb642
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7731
	addi 0xFFFFFFFF, r7, r9
	cmp 0x00000001, r9
	bh17 .BB.LABEL.16_24
.BB.LABEL.16_82:	; if_then_bb658
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7734
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_85
.BB.LABEL.16_83:	; if_else_bb664
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7738
	cmp 0x00000003, r27
	bnz17 .BB.LABEL.16_24
.BB.LABEL.16_84:	; if_else_bb664
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.16_24
.BB.LABEL.16_85:	; if_then_bb680
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7741
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000074, r6, r6
	mov 0x00000000, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_86:	; switch_clause_bb688
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7778
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7776
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7781
	ld23.w 0x00009400[r8], r7
	ori 0x00009408, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7780
	add r8, r26
	ori 0x00009400, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7778
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7777
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7776
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7796
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7784
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7786
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7789
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7791
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7796
	bnz9 .BB.LABEL.16_96
.BB.LABEL.16_87:	; if_then_bb713
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7799
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.16_95
.BB.LABEL.16_88:	; if_then_bb719
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7801
	cmp 0x00000002, r7
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_89:	; if_else_bb725
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7805
	cmp 0x00000001, r7
	bz9 .BB.LABEL.16_92
.BB.LABEL.16_90:	; if_else_bb725
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r7
	bz9 .BB.LABEL.16_92
.BB.LABEL.16_91:	; if_else_bb725.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000078, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_92:	; if_then_bb741
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7808
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_93:	; if_else_bb747
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7812
	cmp 0x00000003, r27
	bnz9 .BB.LABEL.16_91
.BB.LABEL.16_94:	; if_else_bb747
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_91
	br9 .BB.LABEL.16_99
.BB.LABEL.16_95:	; if_else_bb770
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7830
	addi 0xFFFFFFFF, r7, r6
	cmp 0x00000002, r6
	bnc9 .BB.LABEL.16_98
	br9 .BB.LABEL.16_99
.BB.LABEL.16_96:	; if_else_bb801
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7846
	bz9 .BB.LABEL.16_91
.BB.LABEL.16_97:	; if_else_bb808
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7853
	cmp 0x00000001, r7
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_98:	; if_else_bb808
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r7
	bnz9 .BB.LABEL.16_91
.BB.LABEL.16_99:	; if_then_bb824
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000078, r6, r6
	mov 0x00000004, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_100:	; switch_clause_bb829
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7885
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7883
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7888
	ld23.w 0x00009500[r8], r7
	ori 0x00009508, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7887
	add r8, r26
	ori 0x00009500, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7885
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7884
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7883
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7903
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7891
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7893
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7896
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7898
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7903
	bz9 .BB.LABEL.16_102
.BB.LABEL.16_101:	; switch_clause_bb829.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000007C, r6, r6
	jr .BB.LABEL.16_134
.BB.LABEL.16_102:	; if_then_bb854
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7905
	cmp 0x00000002, r7
	bz9 .BB.LABEL.16_107
.BB.LABEL.16_103:	; if_else_bb860
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7909
	cmp 0x00000003, r7
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_104:	; if_then_bb865
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7911
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_107
.BB.LABEL.16_105:	; if_else_bb871
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7915
	cmp 0x00000003, r27
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_106:	; if_else_bb871
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_107:	; if_then_bb887
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7918
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000007C, r6, r6
	mov 0x00000001, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_108:	; if_then_bb949
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7986
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_111
.BB.LABEL.16_109:	; if_else_bb955
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7990
	cmp 0x00000003, r27
	bnz17 .BB.LABEL.16_33
.BB.LABEL.16_110:	; if_else_bb955
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.16_33
.BB.LABEL.16_111:	; if_then_bb971
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7993
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000094, r6, r6
	mov 0x00000000, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_112:	; if_else_bb980
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8015
	bz17 .BB.LABEL.16_33
.BB.LABEL.16_113:	; if_else_bb987
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8022
	addi 0xFFFFFFFE, r7, r6
	cmp 0x00000001, r6
	bh17 .BB.LABEL.16_33
.BB.LABEL.16_114:	; if_then_bb1003
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8025
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000094, r6, r6
	mov 0x00000001, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_115:	; if_then_bb1033
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8073
	addi 0xFFFFFFFF, r7, r9
	cmp 0x00000001, r9
	bh9 .BB.LABEL.16_119
.BB.LABEL.16_116:	; if_then_bb1049
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8076
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_120
.BB.LABEL.16_117:	; if_else_bb1055
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8080
	cmp 0x00000003, r27
	bnz17 .BB.LABEL.16_38
.BB.LABEL.16_118:	; if_else_bb1055
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.16_38
	br9 .BB.LABEL.16_120
.BB.LABEL.16_119:	; if_else_bb1075
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8090
	cmp 0x00000003, r7
	bnz17 .BB.LABEL.16_38
.BB.LABEL.16_120:	; if_then_bb1080
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x000000A4, r6, r6
	mov 0x00000004, r27
	jr .BB.LABEL.16_135
.BB.LABEL.16_121:	; switch_clause_bb1086
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8124
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8122
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8127
	ld23.w 0x00009C00[r8], r7
	ori 0x00009C08, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8126
	add r8, r26
	ori 0x00009C00, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8124
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8123
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8122
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8142
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8130
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8132
	ld23.w 0x00009010[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8135
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8137
	ld23.w 0x00009700[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8142
	bz9 .BB.LABEL.16_123
.BB.LABEL.16_122:	; switch_clause_bb1086.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x000000A8, r6, r6
	br9 .BB.LABEL.16_134
.BB.LABEL.16_123:	; if_then_bb1111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8144
	addi 0xFFFFFFFF, r7, r9
	cmp 0x00000001, r9
	bh9 .BB.LABEL.16_122
.BB.LABEL.16_124:	; if_then_bb1127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8147
	cmp 0x00000002, r27
	bz9 .BB.LABEL.16_127
.BB.LABEL.16_125:	; if_else_bb1133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8151
	cmp 0x00000003, r27
	bnz9 .BB.LABEL.16_122
.BB.LABEL.16_126:	; if_else_bb1133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.16_122
.BB.LABEL.16_127:	; if_then_bb1149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8154
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x000000A8, r6, r6
	mov 0x00000000, r27
	br9 .BB.LABEL.16_135
.BB.LABEL.16_128:	; switch_clause_bb1157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8191
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8189
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8194
	ld23.w 0x00009A00[r8], r7
	ori 0x00009A08, r0, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8193
	add r8, r26
	ori 0x00009A00, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8191
	add r5, r8
	ori 0x00008004, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8190
	add r2, r5
	ori 0x00008000, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8189
	add r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8204
	cmp 0x00000001, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8197
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8199
	ld23.w 0x00009900[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8204
	bnz9 .BB.LABEL.16_131
.BB.LABEL.16_129:	; if_then_bb1178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8206
	addi 0xFFFFFFFF, r7, r6
	cmp 0x00000002, r6
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000009C, r6, r6
	bnc9 .BB.LABEL.16_134
.BB.LABEL.16_130:	; if_then_bb1194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.16_135
.BB.LABEL.16_131:	; if_else_bb1197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8219
	cmp 0x00000001, r6
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x0000009C, r6, r6
	bnz9 .BB.LABEL.16_134
.BB.LABEL.16_132:	; if_then_bb1202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r27
	br9 .BB.LABEL.16_135
.BB.LABEL.16_133:	; switch_clause_bb1206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8250
	mov #_Mcu_GddClkCntlRegRamMirror, r2
	movea 0x00000028, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8244
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8246
	movea 0x00001108, r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8244
	movea 0x00001100, r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8242
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8243
	addi 0x00000004, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8247
	ld.w 0x00001100[r7], r7
.BB.LABEL.16_134:	; switch_clause_bb1206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r7, r27
.BB.LABEL.16_135:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8256
	cmp r7, r27
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_136:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_137:	; switch_break_bb
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_138:	; switch_break_bb.bb1246_crit_edge
	mov 0x00000005, r7
.BB.LABEL.16_139:	; bb1246
	movea 0x000000A5, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8262
	st.w r9, 0x00000000[r2]
	st.w r27, 0x00000000[r8]
	not r27, r9
	st.w r9, 0x00000000[r8]
	st.w r27, 0x00000000[r8]
	add 0xFFFFFFFF, r7
	andi 0x000000FF, r7, r0
	bz9 .BB.LABEL.16_141
.BB.LABEL.16_140:	; bb1262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.w 0x00000000[r5], r9
	cmp 0x00000001, r9
	bz9 .BB.LABEL.16_139
.BB.LABEL.16_141:	; bb1275
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8271
	st.w r27, 0x00000000[r6]
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_143
.BB.LABEL.16_142:	; if_then_bb1291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8279
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.16_143:	; if_break_bb1293
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r2
	br9 .BB.LABEL.16_145
.BB.LABEL.16_144:	; bb1294
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8294
	add 0xFFFFFFFF, r2
.BB.LABEL.16_145:	; bb1297
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8290
	ld.w 0x00000000[r26], r5
	cmp r5, r27
	bz9 .BB.LABEL.16_147
.BB.LABEL.16_146:	; bb1297
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.16_144
.BB.LABEL.16_147:	; bb1316
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8296
	addi 0xFFFFFFCF, r25, r0
	bnz9 .BB.LABEL.16_150
.BB.LABEL.16_148:	; bb1321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_GblPllActCheck), r0, r2
	ld.bu LOWW(#_Mcu_GblPllActCheck)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_150
.BB.LABEL.16_149:	; if_then_bb1334
	mov 0x00000000, r27
.BB.LABEL.16_150:	; if_break_bb1336
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8306
	ld.w 0x00000000[r26], r2
	cmp r2, r27
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_151:	; if_then_bb1343
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r21
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8309
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.16_152:	; if_break_bb1347
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	add 0x00000001, r22
.BB.LABEL.16_153:	; bb1350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 7217
	andi 0x000000FF, r22, r2
	add r20, r2
	ld.bu 0x00000000[r2], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.16_4
.BB.LABEL.16_154:	; bb1360
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8324
	andi 0x000000FF, r21, r10
	dispose 0x00000000, 0x000007F9, [r31]
_Mcu_ReinitClockConfiguration.1:
	.stack _Mcu_ReinitClockConfiguration.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8600
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8611
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8617
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8621
	ld.bu 0x00000015[r2], r20
	ld.bu 0x0000001B[r2], r7
	mov r20, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8623
	mov r20, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8625
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8630
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.w 0x00000000[r5], r6
	ld.bu 0x00000015[r5], r5
	shl 0x00000003, r5
	add r5, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8636
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8640
	ld.bu 0x0000001B[r2], r8
	ld.bu 0x00000016[r2], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8642
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8645
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.bu 0x00000004[r5], r6
	ld.bu 0x00000019[r5], r5
	add r5, r6
	shl 0x00000003, r6
	mov #_Mcu_GstCkscSetting, r5
	add r6, r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8650
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8654
	ld.bu 0x00000017[r2], r20
	ld.bu 0x0000001B[r2], r7
	mov r20, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8656
	mov r20, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8658
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8660
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r5
	ld.bu 0x00000019[r5], r6
	ld.bu 0x00000017[r5], r7
	add r7, r6
	ld.bu 0x00000004[r5], r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8664
	zxb r6
	shl 0x00000003, r6
	mov #_Mcu_GstCkscSetting, r5
	add r6, r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8668
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8672
	ld.bu 0x0000001B[r2], r8
	ld.bu 0x00000018[r2], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
.BB.LABEL.17_4:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8690
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_MainOscEnable.1:
	.stack _Mcu_MainOscEnable.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8742
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8760
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8763
	tst1 0x00000000, 0x00000012[r2]
	bz17 .BB.LABEL.18_19
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8767
	ld.bu 0x00000013[r2], r2
	ori 0x00000004, r2, r2
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	st.w r2, 0x00000108[r6]
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r6
	ld.bu 0x00000013[r6], r6
	ori 0x00000004, r6, r6
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	st.w r6, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8778
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r6
	ld.w 0x0000000C[r6], r6
	st.w r6, 0x0000010C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	ld.w 0x0000000C[r2], r2
	st.w r2, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8788
	jarl _Mcu_MainOscDefault.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8790
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_2:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8792
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r2], r2
	tst1 0x00000000, 0x00000014[r2]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8795
	ld.w 0x00000118[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8797
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ori 0x00000001, r2, r6
	st.w r6, 0x00000118[r5]
	br9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8809
	st.w r6, 0x00000118[r2]
.BB.LABEL.18_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r2
	st.w r6, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8820
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	br9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8826
	add 0xFFFFFFFF, r2
.BB.LABEL.18_7:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8822
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_9:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8828
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000104[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r20
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8832
	mov r20, r7
	jarl _Dem_ReportErrorStatus, r31
	mov r20, r10
.BB.LABEL.18_11:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8848
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_20
.BB.LABEL.18_12:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	tst1 0x00000000, 0x00000000[r2]
	bnz9 .BB.LABEL.18_20
.BB.LABEL.18_13:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8856
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.h 0x00000022[r7], r7
	st.h r7, 0x0000000C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000022[r5], r5
	mov #_Mcu_GddClkMntrReg1RamMirror, r7
	st.h r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8868
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000020[r5], r5
	st.h r5, 0x00000008[r2]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r2
	ld.h 0x00000020[r2], r2
	st.h r2, 0x00000002[r7]
	mov 0x00000005, r2
.BB.LABEL.18_14:	; bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8879
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r6
	movea 0xFFFFFFA5, r0, r7
	st.b r7, 0x00000010[r6]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.b r7, 0x00000000[r6]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.b r8, 0x00000000[r6]
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	st.b r7, 0x00000000[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.18_16
.BB.LABEL.18_15:	; bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.18_14
.BB.LABEL.18_16:	; bb172
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.bu 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8887
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r5]
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8890
	bz9 .BB.LABEL.18_18
.BB.LABEL.18_17:	; bb172.if_break_bb195_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
	br9 .BB.LABEL.18_20
.BB.LABEL.18_18:	; if_then_bb188
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8896
	jarl _Dem_ReportErrorStatus, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_19:	; if_else_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8912
	jarl _Mcu_MainOscDefault.1, r31
.BB.LABEL.18_20:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8922
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_ResumeCpuClock.1:
	.stack _Mcu_ResumeCpuClock.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8969
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8978
	movhi HIGHW1(#_WufReg_BaseAddress), r0, r2
	ld.w LOWW(#_WufReg_BaseAddress)[r2], r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_WufIsoReg_BaseAddress), r0, r2
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r2], r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_2:	; bb.if_break_bb123_crit_edge
	mov 0x00000000, r20
.BB.LABEL.19_3:	; if_break_bb123
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9069
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.19_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8987
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r20
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r20], r20
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r2
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r2], r2
	ld23.w 0x00009000[r20], r20
	cmp r20, r2
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8991
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r20
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r20], r20
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.19_13
.BB.LABEL.19_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 8994
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r20
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r20], r20
	ld.w 0x00000104[r20], r20
.BB.LABEL.19_7:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000004, r20, r0
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_8:	; if_then_bb31.bb65_crit_edge
	mov 0x00000005, r20
.BB.LABEL.19_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9026
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	movea 0x000000A5, r0, r5
	st23.w r5, 0x00008000[r2]
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r2
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r2], r5
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	st23.w r5, 0x00009000[r7]
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r2], r5
	not r5, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	st23.w r5, 0x00009000[r7]
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r2], r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r5
	st23.w r2, 0x00009000[r5]
	add 0xFFFFFFFF, r20
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.19_11
.BB.LABEL.19_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld23.w 0x00008004[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.19_9
.BB.LABEL.19_11:	; bb99
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r20
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r20], r20
	ld23.w 0x00008004[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9034
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r2
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000064), r0, r5
	st.w r2, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000064)[r5]
	cmp 0x00000001, r20
	setf 0x00000002, r20
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_12:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9044
	jarl _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.19_3
.BB.LABEL.19_13:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9004
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_14:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9007
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r20
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r20], r20
	ld23.w 0x00008004[r20], r20
	br9 .BB.LABEL.19_7
_Mcu_MainOscDefault.1:
	.stack _Mcu_MainOscDefault.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9116
	prepare 0x00000041, 0x00000000
	mov 0x00000005, r2
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9125
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.w r7, 0x00000100[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.w r8, 0x00000100[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st.w r7, 0x00000100[r5]
	add 0xFFFFFFFF, r2
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.20_1
.BB.LABEL.20_3:	; bb30
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000001, r2
	setf 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9132
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9138
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.20_5:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9146
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_WakeUpFactor_Preparation:
	.stack _Mcu_WakeUpFactor_Preparation = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9451
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9457
	jarl _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9461
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r2
	ld.w LOWW(#_Mcu_GpConfigPtr)[r2], r2
	ld.bu 0x00000011[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9473
	jarl _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9476
	jarl _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9480
	movhi HIGHW1(#_WufReg_BaseAddress), r0, r2
	ld.w LOWW(#_WufReg_BaseAddress)[r2], r5
	mov 0xFFFFFFFF, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9485
	movhi HIGHW1(#_WufIsoReg_BaseAddress), r0, r5
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r5], r7
	st.w r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9500
	ld.w LOWW(#_WufReg_BaseAddress)[r2], r6
	movea 0xFFFFFFE7, r0, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9503
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r5], r6
	movea 0x000001FE, r0, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9461
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9519
	mulh 0x0000000C, r21
	mov #_Mcu_GstModeSetting, r6
	add r21, r6
	ld.w 0x00000000[r6], r7
	ld.w LOWW(#_WufReg_BaseAddress)[r2], r2
	st.w r7, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9525
	ld.w 0x00000004[r6], r2
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r5], r5
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9541
	jarl _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9545
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_GblWakeUpPreparation)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_Mcu_GetVersionInfo:
	.stack _Mcu_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9600
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9607
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000010, r0, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9610
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9617
	st.h r2, 0x00000000[r6]
	movea 0x00000065, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9619
	st.h r2, 0x00000002[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9621
	st.b r2, 0x00000005[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9623
	st.b r2, 0x00000006[r6]
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9625
	st.b r2, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_CheckHWConsistency:
	.stack _Mcu_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9683
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9694
	jarl _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9703
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9705
	jarl _Det_ReportError, r31
	jr .BB.LABEL.23_85
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9712
	cmp 0x00000001, r20
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_else_bb.if_break_bb955_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r20
	jr .BB.LABEL.23_86
.BB.LABEL.23_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9778
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r20
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r20], r20
	ld.hu 0x0000000C[r20], r20
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror+0x00000004), r0, r2
	ld.hu LOWW(#_Mcu_GddClkMntrReg0RamMirror+0x00000004)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r20
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r20], r20
	ld.hu 0x00000008[r20], r20
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror+0x00000002), r0, r2
	ld.hu LOWW(#_Mcu_GddClkMntrReg0RamMirror+0x00000002)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_6:	; bb40
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r20
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r20], r20
	ld.bu 0x00000000[r20], r20
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror), r0, r2
	ld.bu LOWW(#_Mcu_GddClkMntrReg0RamMirror)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; bb40.if_break_bb_crit_edge
	mov 0x00000000, r20
	br9 .BB.LABEL.23_9
.BB.LABEL.23_8:	; if_then_bb57
	mov 0x00000001, r20
.BB.LABEL.23_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9793
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.hu 0x0000000C[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror+0x00000004), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg1RamMirror+0x00000004)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_10:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.hu 0x00000008[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror+0x00000002), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg1RamMirror+0x00000002)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; bb83
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r5
	ld.bu LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_13
.BB.LABEL.23_12:	; if_then_bb100
	mov 0x00000001, r20
.BB.LABEL.23_13:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9808
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.hu 0x0000000C[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror+0x00000004), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg2RamMirror+0x00000004)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_16
.BB.LABEL.23_14:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.hu 0x00000008[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror+0x00000002), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg2RamMirror+0x00000002)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_16
.BB.LABEL.23_15:	; bb127
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.bu 0x00000000[r2], r2
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror), r0, r5
	ld.bu LOWW(#_Mcu_GddClkMntrReg2RamMirror)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_then_bb144
	mov 0x00000001, r20
.BB.LABEL.23_17:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9865
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001800[r5], r5
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	ld.w 0x00000054[r6], r7
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9868
	cmov 0x0000000A, 0x00000001, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9876
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000108[r2], r2
	ld.w 0x0000000C[r6], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_20
.BB.LABEL.23_18:	; bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x0000010C[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000010), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000010)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_20
.BB.LABEL.23_19:	; bb177
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000118[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_21
.BB.LABEL.23_20:	; if_then_bb192
	mov 0x00000001, r20
.BB.LABEL.23_21:	; if_break_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9903
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000004[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_23
.BB.LABEL.23_22:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9908
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld.w 0x00000018[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_24
.BB.LABEL.23_23:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r20
.BB.LABEL.23_24:	; if_break_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9919
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00008008[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000005C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000005C)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_26
.BB.LABEL.23_25:	; bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00009700[r2], r2
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_27
.BB.LABEL.23_26:	; if_then_bb236
	mov 0x00000001, r20
.BB.LABEL.23_27:	; if_break_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9945
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000024), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000024)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_29
.BB.LABEL.23_28:	; bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001018[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_29:	; bb256
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000030), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000030)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_31
.BB.LABEL.23_30:	; bb260
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001218[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_31:	; bb281
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000003C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000003C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_33
.BB.LABEL.23_32:	; bb285
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001418[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_33:	; bb306
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000048), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000048)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_35
.BB.LABEL.23_34:	; bb310
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001618[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_35:	; bb331
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000050), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000050)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_37
.BB.LABEL.23_36:	; bb335
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001718[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_37:	; bb356
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000090), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000090)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_39
.BB.LABEL.23_38:	; bb360
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009818[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_39:	; bb381
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000098), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000098)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_41
.BB.LABEL.23_40:	; bb385
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009918[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_41:	; bb406
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A0), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A0)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_43
.BB.LABEL.23_42:	; bb410
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009A18[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_43:	; if_else_bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 9980
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000020), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000020)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_45
.BB.LABEL.23_44:	; bb437
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001000[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_45:	; bb451
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000002C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000002C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_47
.BB.LABEL.23_46:	; bb455
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001200[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_47:	; bb476
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000038), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000038)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_49
.BB.LABEL.23_48:	; bb480
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001400[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_49:	; bb501
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000044), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000044)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_51
.BB.LABEL.23_50:	; bb505
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001600[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_51:	; bb526
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000006C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000006C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_53
.BB.LABEL.23_52:	; bb530
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009100[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_53:	; bb551
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000080), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000080)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_55
.BB.LABEL.23_54:	; bb555
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009600[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_55:	; bb576
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000008C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000008C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_57
.BB.LABEL.23_56:	; bb580
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009800[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_57:	; bb601
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000009C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000009C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_59
.BB.LABEL.23_58:	; bb605
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009A00[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_59:	; if_else_bb628
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10017
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000028), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000028)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_61
.BB.LABEL.23_60:	; bb632
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001100[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_61:	; bb646
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000034), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000034)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_63
.BB.LABEL.23_62:	; bb650
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001300[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_63:	; bb671
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000040), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000040)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_65
.BB.LABEL.23_64:	; bb675
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001500[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_65:	; bb696
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000004C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000004C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_67
.BB.LABEL.23_66:	; bb700
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001700[r5], r5
	cmp r5, r2
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_67:	; bb721
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000064), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000064)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_69
.BB.LABEL.23_68:	; bb725
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009000[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_69:	; bb746
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000068), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000068)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_71
.BB.LABEL.23_70:	; bb750
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009010[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_71:	; bb771
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000070), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000070)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_73
.BB.LABEL.23_72:	; bb775
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009200[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_73:	; bb796
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000074), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000074)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_75
.BB.LABEL.23_74:	; bb800
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009300[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_75:	; bb821
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000078), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000078)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_77
.BB.LABEL.23_76:	; bb825
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009400[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_77:	; bb846
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000007C), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000007C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_79
.BB.LABEL.23_78:	; bb850
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009500[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_79:	; bb871
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000094), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000094)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_81
.BB.LABEL.23_80:	; bb875
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009900[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_81:	; bb896
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A4), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A4)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_83
.BB.LABEL.23_82:	; bb900
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009B00[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_83:	; bb921
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A8), r0, r2
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A8)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_86
.BB.LABEL.23_84:	; bb925
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009C00[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_86
.BB.LABEL.23_85:	; if_then_bb947
	mov 0x00000001, r20
.BB.LABEL.23_86:	; if_break_bb955
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10087
	jarl _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10091
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Mcu_InitRamMirror.1:
	.stack _Mcu_InitRamMirror.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10172
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r5
	ld.h 0x0000000C[r5], r5
	mov #_Mcu_GddClkMntrReg0RamMirror, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10174
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10175
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r2], r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10179
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	ld.h 0x0000000C[r5], r5
	mov #_Mcu_GddClkMntrReg1RamMirror, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10181
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10182
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r2], r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10186
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r2
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r5
	ld.h 0x0000000C[r5], r5
	mov #_Mcu_GddClkMntrReg2RamMirror, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10188
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10189
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r2], r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10218
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r2
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001800[r5], r5
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	st.w r5, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10223
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00000108[r5], r5
	st.w r5, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10224
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x0000010C[r5], r5
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10225
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00000118[r5], r5
	st.w r5, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10233
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00000004[r5], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10234
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00000018[r5], r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10238
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00008008[r5], r5
	st.w r5, 0x0000005C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10239
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009700[r5], r5
	st.w r5, 0x00000088[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10248
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001018[r5], r5
	st.w r5, 0x00000024[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10250
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001218[r5], r5
	st.w r5, 0x00000030[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10252
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001418[r5], r5
	st.w r5, 0x0000003C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10254
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001618[r5], r5
	st.w r5, 0x00000048[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10256
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001718[r5], r5
	st.w r5, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10258
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009818[r5], r5
	st.w r5, 0x00000090[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10260
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009918[r5], r5
	st.w r5, 0x00000098[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10262
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009A18[r5], r5
	st.w r5, 0x000000A0[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10264
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001000[r5], r5
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10266
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001200[r5], r5
	st.w r5, 0x0000002C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10268
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001400[r5], r5
	st.w r5, 0x00000038[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10270
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001600[r5], r5
	st.w r5, 0x00000044[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10272
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009100[r5], r5
	st.w r5, 0x0000006C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10275
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009600[r5], r5
	st.w r5, 0x00000080[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10278
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009800[r5], r5
	st.w r5, 0x0000008C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10280
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009A00[r5], r5
	st.w r5, 0x0000009C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10282
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001100[r5], r5
	st.w r5, 0x00000028[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10284
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001300[r5], r5
	st.w r5, 0x00000034[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10286
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001500[r5], r5
	st.w r5, 0x00000040[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10288
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld.w 0x00001700[r5], r5
	st.w r5, 0x0000004C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10290
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009000[r5], r5
	st.w r5, 0x00000064[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10292
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009010[r5], r5
	st.w r5, 0x00000068[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10294
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009200[r5], r5
	st.w r5, 0x00000070[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10296
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009300[r5], r5
	st.w r5, 0x00000074[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10298
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009400[r5], r5
	st.w r5, 0x00000078[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10301
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009500[r5], r5
	st.w r5, 0x0000007C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10304
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009900[r5], r5
	st.w r5, 0x00000094[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10306
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r5
	ld23.w 0x00009B00[r5], r5
	st.w r5, 0x000000A4[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10308
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r2], r2
	ld23.w 0x00009C00[r2], r2
	st.w r2, 0x000000A8[r6]
	jmp [r31]
_Mcu_IsoCkscCheck.1:
	.stack _Mcu_IsoCkscCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10369
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10395
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r2
	ld.w LOWW(#_Mcu_GpCkscSetting)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10397
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry.if_break_bb237_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.25_44
.BB.LABEL.25_2:	; entry.bb59_crit_edge
	movea 0x0000007F, r0, r5
	br9 .BB.LABEL.25_20
.BB.LABEL.25_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10403
	ld.bu 0x00000000[r2], r7
	addi 0xFFFFFFE1, r7, r0
	bgt9 .BB.LABEL.25_8
.BB.LABEL.25_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE6, r7, r0
	bz9 .BB.LABEL.25_15
.BB.LABEL.25_5:	; bb
	addi 0xFFFFFFE4, r7, r0
	bz9 .BB.LABEL.25_16
.BB.LABEL.25_6:	; bb
	addi 0xFFFFFFE2, r7, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_7:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10413
	andi 0x000000FB, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD4, r7, r0
	bgt9 .BB.LABEL.25_12
.BB.LABEL.25_9:	; bb
	addi 0xFFFFFFE0, r7, r0
	bz9 .BB.LABEL.25_17
.BB.LABEL.25_10:	; bb
	addi 0xFFFFFFD9, r7, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_11:	; switch_clause_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10419
	andi 0x000000EF, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD3, r7, r0
	bz9 .BB.LABEL.25_18
.BB.LABEL.25_13:	; bb
	addi 0xFFFFFFD1, r7, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_14:	; switch_clause_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10425
	andi 0x000000BF, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_15:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10407
	andi 0x000000FE, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_16:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10410
	andi 0x000000FD, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_17:	; switch_clause_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10416
	andi 0x000000F7, r5, r5
	br9 .BB.LABEL.25_19
.BB.LABEL.25_18:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10422
	andi 0x000000DF, r5, r5
.BB.LABEL.25_19:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10437
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10434
	add 0x00000008, r2
.BB.LABEL.25_20:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10399
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_21:	; bb59.bb229_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r2
	mov r2, r10
	br9 .BB.LABEL.25_43
.BB.LABEL.25_22:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10442
	andi 0x000000FF, r2, r6
	mov 0x00000001, r7
	shl r6, r7
	and r5, r7
	zxb r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10443
	cmp 0x00000007, r7
	bgt9 .BB.LABEL.25_28
.BB.LABEL.25_23:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.25_35
.BB.LABEL.25_24:	; bb66
	cmp 0x00000002, r7
	bz9 .BB.LABEL.25_36
.BB.LABEL.25_25:	; bb66
	cmp 0x00000004, r7
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_26:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10480
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10482
	ld23.w 0x00009400[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10484
	cmp 0x00000001, r6
	bz9 .BB.LABEL.25_41
.BB.LABEL.25_27:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r6
	bz9 .BB.LABEL.25_41
	br9 .BB.LABEL.25_42
.BB.LABEL.25_28:	; bb66
	addi 0xFFFFFFE1, r7, r0
	bgt9 .BB.LABEL.25_32
.BB.LABEL.25_29:	; bb66
	cmp 0x00000008, r7
	bz9 .BB.LABEL.25_37
.BB.LABEL.25_30:	; bb66
	add 0xFFFFFFF0, r7
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_31:	; switch_clause_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10515
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10517
	ld23.w 0x00009900[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10519
	add 0xFFFFFFFE, r6
	br9 .BB.LABEL.25_40
.BB.LABEL.25_32:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE0, r7, r0
	bz9 .BB.LABEL.25_38
.BB.LABEL.25_33:	; bb66
	addi 0xFFFFFFC0, r7, r0
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_34:	; switch_clause_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10548
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10550
	ld23.w 0x00009C00[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_35:	; switch_clause_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10448
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10450
	ld23.w 0x00009200[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_36:	; switch_clause_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10464
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10466
	ld23.w 0x00009300[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_37:	; switch_clause_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10498
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10500
	ld23.w 0x00009500[r6], r6
	br9 .BB.LABEL.25_27
.BB.LABEL.25_38:	; switch_clause_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10532
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10534
	ld23.w 0x00009B00[r6], r6
.BB.LABEL.25_39:	; switch_clause_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 0
	add 0xFFFFFFFF, r6
.BB.LABEL.25_40:	; switch_clause_bb179
	cmp 0x00000001, r6
	bh9 .BB.LABEL.25_42
.BB.LABEL.25_41:	; if_then_bb222
	mov 0x00000001, r10
.BB.LABEL.25_42:	; switch_break_bb226
	add 0x00000001, r2
.BB.LABEL.25_43:	; bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10440
	andi 0x000000FF, r2, r6
	cmp 0x00000007, r6
	blt9 .BB.LABEL.25_22
.BB.LABEL.25_44:	; if_break_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/mcu/src/Mcu.c", 10575
	zxb r10
	jmp [r31]
	.section .bss, bss
_Mcu_GucSelectedSrcClock.1:
	.ds (1)
	.align 4
_Mcu_GulCpuClockSetting.2:
	.ds (4)
_Mcu_GucClockSettingValue.3:
	.ds (1)
	.align 4
_Mcu_GulResetValue.4:
	.ds (4)
