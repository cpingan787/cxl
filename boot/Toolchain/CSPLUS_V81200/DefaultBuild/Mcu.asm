#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\mcu\src\Mcu.c -oDefaultBuild\Mcu.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8334f5f176854a6c97284a5864b96bf32ktggfvz.n41
#@	compiled at Thu Jul 16 11:37:31 2026

	.file "..\..\Bsw\Mcal\mcu\src\Mcu.c"

	$reg_mode 22
	.dbl_size 4

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
	.stack _Mcu_Init = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1469
	prepare 0x00000301, 0x00000008
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1496
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000A, r9
.BB.LABEL.1_2:	; if_then_bb
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	mov r7, r8
	jarl32 _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1904
	dispose 0x00000008, 0x00000301, [r31]
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1507
	ld.w 0x00000000[r25], r5
	mov 0x0ED94110, r6
	cmp r6, r5
	bnz17 .BB.LABEL.1_36
.BB.LABEL.1_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1511
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	st.w r25, LOWW(#_Mcu_GpConfigPtr)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1515
	jarl _Mcu_InitRamMirror.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1557
	ld.w 0x00000008[r25], r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1559
	ld.w 0x00000004[r3], r5
	andi 0x00000007, r5, r0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb18.if_break_bb241_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r26
	jr .BB.LABEL.1_28
.BB.LABEL.1_6:	; if_then_bb28
	mov 0x00000004, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1562
	st.w r26, 0x00000004[r3]
	mov 0x00000005, r26
.BB.LABEL.1_7:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1564
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r5
	ld.w LOWW(#_LviReg_BaseAddress)[r5], r6
	ld.w 0x00000004[r3], r7
	st.w r7, 0x00000080[r6]
	ld.w LOWW(#_LviReg_BaseAddress)[r5], r6
	ld.w 0x00000004[r3], r7
	not r7, r7
	st.w r7, 0x00000080[r6]
	ld.w LOWW(#_LviReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000080[r5]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_9:	; bb61
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld.w 0x00000004[r26], r26
	cmp 0x00000001, r26
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb61.if_break_bb77_crit_edge
	mov 0x00000000, r26
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb75
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1575
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.1_12:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1583
	cmp 0x00000000, r26
	bnz17 .BB.LABEL.1_28
.BB.LABEL.1_13:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1587
	movhi HIGHW1(#_FEIntMsk_BaseAddress), r0, r5
	ld.w LOWW(#_FEIntMsk_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r6
	ori 0x00008001, r6, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1594
	ld.w 0x00000008[r25], r5
	ori 0x00000004, r5, r5
	andi 0x00000007, r5, r5
	st.w r5, 0x00000004[r3]
	mov 0x00000005, r5
.BB.LABEL.1_14:	; bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1596
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r6
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r7
	ld.w 0x00000004[r3], r8
	st.w r8, 0x00000080[r7]
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r7
	ld.w 0x00000004[r3], r8
	not r8, r8
	st.w r8, 0x00000080[r7]
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r3], r7
	st.w r7, 0x00000080[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_16:	; bb130
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb145
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1607
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.1_18:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1615
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r5
	ld.w LOWW(#_LviReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	andi 0x00000007, r5, r0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1618
	st.w r0, 0x00000000[r3]
.BB.LABEL.1_20:	; bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1622
	ld.w 0x00000000[r3], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r3]
	movea 0x00000500, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1619
	ld.w 0x00000000[r3], r6
	cmp r5, r6
	bl9 .BB.LABEL.1_20
.BB.LABEL.1_21:	; if_break_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1632
	ld.w 0x00000008[r25], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1635
	movhi HIGHW1(#_FEIntMsk_BaseAddress), r0, r5
	ld.w LOWW(#_FEIntMsk_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r6
	mov 0xFFFF7FFE, r7
	and r7, r6
	st.w r6, 0x00000004[r5]
	br9 .BB.LABEL.1_28
.BB.LABEL.1_23:	; if_else_bb180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1641
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r5
	ld.w LOWW(#_LviReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	mov 0xFFFFFFF3, r6
	and r6, r5
	st.w r5, 0x00000004[r3]
	mov 0x00000005, r5
.BB.LABEL.1_24:	; bb185
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1644
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_LviReg_BaseAddress), r0, r6
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r7
	ld.w 0x00000004[r3], r8
	st.w r8, 0x00000080[r7]
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r7
	ld.w 0x00000004[r3], r8
	not r8, r8
	st.w r8, 0x00000080[r7]
	ld.w LOWW(#_LviReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r3], r7
	st.w r7, 0x00000080[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; bb205
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_26:	; bb219
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; if_then_bb234
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1655
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.1_28:	; if_break_bb241
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1674
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; if_then_bb247
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1678
	movhi HIGHW1(#_Mcu_IoHoldRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_IoHoldRegister_BaseAddress)[r5], r5
	ld.w 0x00000000[r5], r5
.BB.LABEL.1_30:	; if_break_bb258
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1841
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r5
	st.b r0, LOWW(#_Mcu_GucSelectedSrcClock.1)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1845
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb264
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1848
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GblDriverStatus)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1849
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r5
	st.b r0, LOWW(#_Mcu_GblWakeUpPreparation)[r5]
	br9 .BB.LABEL.1_33
.BB.LABEL.1_32:	; if_else_bb265
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000011, r0, r9
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1855
	mov r7, r8
	jarl32 _Det_ReportError, r31
.BB.LABEL.1_33:	; if_break_bb267
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1861
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1862
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	ld.w 0x00000100[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1865
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1866
	andi 0x00000400, r6, r0
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_34:	; if_then_bb282
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1869
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r5
	st.b r0, LOWW(#_Mcu_GucClockSettingValue.3)[r5]
.BB.LABEL.1_35:	; if_break_bb284
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1882
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r5
	ld.bu LOWW(#_Mcu_GucClockSettingValue.3)[r5], r5
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r6
	ld.w LOWW(#_Mcu_GpConfigPtr)[r6], r6
	ld.bu 0x00000010[r6], r6
	add r5, r6
	mulhi 0x00000028, r6, r5
	mov #_Mcu_GstClockSetting, r6
	add r5, r6
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	st.w r6, LOWW(#_Mcu_GpClockSetting)[r5]
	dispose 0x00000008, 0x00000301, [r31]
.BB.LABEL.1_36:	; if_else_bb293
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000000ED, r0, r9
	jr .BB.LABEL.1_2
_Mcu_InitRamSection:
	.stack _Mcu_InitRamSection = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1955
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1974
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	mov r6, r25
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	mov 0x0000000F, r9
	mov 0x00000001, r26
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1977
	mov r26, r8
	jarl32 _Det_ReportError, r31
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1986
	cmp 0x00000000, r25
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000D, r9
	mov 0x00000001, r26
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1989
	mov r26, r8
	jarl32 _Det_ReportError, r31
.BB.LABEL.2_5:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 1998
	cmp 0x00000000, r26
	bnz17 .BB.LABEL.2_33
.BB.LABEL.2_6:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2004
	mov r25, r5
	shl 0x00000004, r5
	mov #_Mcu_GstRamSetting, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2005
	ld.w 0x0000000C[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2004
	ld.w 0x00000004[r6], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2005
	add 0x0000000C, r6
	cmp 0x00000001, r5
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_7:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r5
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_8:	; if_then_bb27
	cmp 0x00000003, r5
	bz9 .BB.LABEL.2_18
.BB.LABEL.2_9:	; if_then_bb27.switch_break_bb_crit_edge
	mov 0x00000000, r5
	mov 0x00000001, r26
	mov r5, r8
	mov r5, r9
	mov r26, r10
	br9 .BB.LABEL.2_16
.BB.LABEL.2_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2010
	mov r25, r5
	shl 0x00000004, r5
	mov #_Mcu_GstRamSetting, r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	mov 0x00000000, r8
	mov r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2013
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; switch_clause_bb.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.2_16
.BB.LABEL.2_12:	; if_then_bb44
	mov 0x00000001, r26
	mov r26, r10
	br9 .BB.LABEL.2_16
.BB.LABEL.2_13:	; switch_clause_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2025
	mov r25, r5
	shl 0x00000004, r5
	mov #_Mcu_GstRamSetting, r8
	add r5, r8
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2028
	cmp 0x00000002, r7
	bl9 .BB.LABEL.2_17
.BB.LABEL.2_14:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000001, r7, r0
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_15:	; bb.switch_break_bb_crit_edge
	mov 0x00000002, r10
	mov 0x00000000, r5
	mov r5, r9
.BB.LABEL.2_16:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2058
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_32
	br9 .BB.LABEL.2_33
.BB.LABEL.2_17:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	br9 .BB.LABEL.2_15
.BB.LABEL.2_18:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2041
	mov r25, r5
	shl 0x00000004, r5
	mov #_Mcu_GstRamSetting, r8
	add r5, r8
	ld.w 0x00000000[r8], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2044
	cmp 0x00000004, r7
	bl9 .BB.LABEL.2_21
.BB.LABEL.2_19:	; bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000003, r7, r0
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; bb79.switch_break_bb_crit_edge
	mov 0x00000004, r10
	mov 0x00000000, r5
	mov r5, r8
	br9 .BB.LABEL.2_16
.BB.LABEL.2_21:	; if_then_bb94
	mov 0x00000001, r26
	br9 .BB.LABEL.2_20
.BB.LABEL.2_22:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2062
	ld.w 0x00000000[r6], r11
	cmp 0x00000001, r11
	bz9 .BB.LABEL.2_27
.BB.LABEL.2_23:	; bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r11
	bz9 .BB.LABEL.2_29
.BB.LABEL.2_24:	; bb104
	cmp 0x00000003, r11
	bnz9 .BB.LABEL.2_31
.BB.LABEL.2_25:	; switch_clause_bb138
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2096
	cmp 0x00000000, r9
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_26:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2098
	mov r25, r11
	shl 0x00000004, r11
	mov #_Mcu_GstRamSetting, r12
	add r11, r12
	ld.w 0x00000008[r12], r11
	st.w r11, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2101
	add 0x00000004, r9
	br9 .BB.LABEL.2_31
.BB.LABEL.2_27:	; switch_clause_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2066
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_28:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2068
	mov r25, r11
	shl 0x00000004, r11
	mov #_Mcu_GstRamSetting, r12
	add r11, r12
	ld.w 0x00000008[r12], r11
	st.b r11, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2071
	add 0x00000001, r5
	br9 .BB.LABEL.2_31
.BB.LABEL.2_29:	; switch_clause_bb123
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2081
	cmp 0x00000000, r8
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_30:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2083
	mov r25, r11
	shl 0x00000004, r11
	mov #_Mcu_GstRamSetting, r12
	add r11, r12
	ld.w 0x00000008[r12], r11
	st.h r11, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2086
	add 0x00000002, r8
.BB.LABEL.2_31:	; switch_break_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2116
	andi 0x000000FF, r10, r11
	sub r11, r7
.BB.LABEL.2_32:	; bb158
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2060
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.2_22
.BB.LABEL.2_33:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2131
	dispose 0x00000000, 0x00000301, [r31]
_Mcu_InitClock:
	.stack _Mcu_InitClock = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2206
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2251
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	mov r6, r25
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	br9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2262
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_else_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_then_bb21
	mov 0x0000000B, r9
.BB.LABEL.3_5:	; if_then_bb21
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r26
.BB.LABEL.3_6:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2278
	cmp 0x00000000, r26
	bnz17 .BB.LABEL.3_69
.BB.LABEL.3_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2285
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.bu 0x00000010[r5], r5
	add r25, r5
	mulhi 0x00000028, r5, r5
	mov #_Mcu_GstClockSetting, r6
	add r5, r6
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	st.w r6, LOWW(#_Mcu_GpClockSetting)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2304
	movhi HIGHW1(#_Mcu_GucClockSettingValue.3), r0, r6
	st.b r25, LOWW(#_Mcu_GucClockSettingValue.3)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2309
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	ld.bu 0x00000012[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2314
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r5
	st.b r25, LOWW(#_Mcu_GucSelectedSrcClock.1)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2319
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st.w r0, 0x00001800[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r5
	st.w r0, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2329
	andi 0x00000001, r25, r0
	bz17 .BB.LABEL.3_23
.BB.LABEL.3_8:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2333
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bnz17 .BB.LABEL.3_20
.BB.LABEL.3_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2337
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r5
	ld.bu 0x00000013[r5], r5
	ori 0x00000004, r5, r5
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	st.w r5, 0x00000108[r7]
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r5
	ld.bu 0x00000013[r5], r5
	ori 0x00000004, r5, r5
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	st.w r5, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2348
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r6
	ld.w 0x0000000C[r6], r6
	st.w r6, 0x0000010C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	ld.w 0x0000000C[r26], r26
	st.w r26, 0x00000010[r7]
	mov 0x00000005, r26
.BB.LABEL.3_10:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2359
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
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_12:	; bb112
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld.w 0x00000004[r26], r26
	cmp 0x00000001, r26
	setf 0x00000002, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2365
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2371
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.3_14:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2379
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	br9 .BB.LABEL.3_16
.BB.LABEL.3_15:	; bb133
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2385
	add 0xFFFFFFFF, r5
.BB.LABEL.3_16:	; bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2381
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00000104[r6], r6
	andi 0x00000004, r6, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.3_15
.BB.LABEL.3_18:	; bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2387
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_19:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2391
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.3_20:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2404
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	tst1 0x00000000, 0x00000014[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2407
	ld.w 0x00000118[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2409
	ori 0x00000001, r5, r5
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st.w r5, 0x00000118[r6]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r6]
	br9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; if_else_bb188
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2420
	st.w r6, 0x00000118[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r5
	st.w r6, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r5]
.BB.LABEL.3_23:	; if_break_bb193
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2582
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_29
.BB.LABEL.3_24:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2588
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00000004[r6], r6
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror), r0, r7
	st.w r6, LOWW(#_Mcu_GddClkCntlRegRamMirror)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2592
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	andi 0x00000004, r5, r0
	bnz9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2597
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.3_26:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2605
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	tst1 0x00000002, 0x00000014[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	bz9 .BB.LABEL.3_28
.BB.LABEL.3_27:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2608
	ld.w 0x00000018[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2610
	ori 0x00000001, r5, r5
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st.w r5, 0x00000018[r6]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r6]
	br9 .BB.LABEL.3_29
.BB.LABEL.3_28:	; if_else_bb233
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2621
	st.w r6, 0x00000018[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r5
	st.w r6, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r5]
.BB.LABEL.3_29:	; if_break_bb238
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2641
	cmp 0x00000000, r26
	bnz17 .BB.LABEL.3_75
.BB.LABEL.3_30:	; bb243
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000008, r25, r0
	bz17 .BB.LABEL.3_75
.BB.LABEL.3_31:	; if_then_bb259
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2646
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	ld.bu 0x0000001A[r5], r27
	bnz9 .BB.LABEL.3_37
.BB.LABEL.3_32:	; if_then_bb259.bb272_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r5
.BB.LABEL.3_33:	; bb272
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2652
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r26]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r6
	st23.w r27, 0x00009700[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r6
	not r27, r7
	st23.w r7, 0x00009700[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	st23.w r27, 0x00009700[r26]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.3_35
.BB.LABEL.3_34:	; bb292
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	cmp 0x00000001, r26
	bz9 .BB.LABEL.3_33
.BB.LABEL.3_35:	; bb306
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2659
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r26
	st.w r27, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r26]
	cmp 0x00000001, r5
	setf 0x00000002, r26
	bz17 .BB.LABEL.3_74
.BB.LABEL.3_36:	; if_then_bb422
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	jarl _Mcu_StartPLL.1, r31
	br9 .BB.LABEL.3_40
.BB.LABEL.3_37:	; if_else_bb326
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2683
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2682
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2683
	ld23.w 0x00009708[r6], r6
	cmp r6, r27
	bnz9 .BB.LABEL.3_39
.BB.LABEL.3_38:	; bb340
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00008008[r6], r6
	andi 0x0000183F, r6, r6
	cmp r6, r5
	bz9 .BB.LABEL.3_41
.BB.LABEL.3_39:	; if_then_bb356
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2690
	jarl _Mcu_StandByPrepare.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2692
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_70
.BB.LABEL.3_40:	; if_then_bb356.if_break_bb451_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r26
.BB.LABEL.3_41:	; if_break_bb451
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2886
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_50
.BB.LABEL.3_42:	; bb456
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000001, r25, r0
	bnz9 .BB.LABEL.3_50
.BB.LABEL.3_43:	; if_then_bb472
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2889
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.3_50
.BB.LABEL.3_44:	; if_then_bb480
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2899
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2902
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_48
.BB.LABEL.3_45:	; if_then_bb487
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2907
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	andi 0x00000004, r26, r0
	bz9 .BB.LABEL.3_48
.BB.LABEL.3_46:	; bb494
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld23.w 0x00009700[r26], r26
	andi 0x00000001, r26, r0
	bz9 .BB.LABEL.3_48
.BB.LABEL.3_47:	; if_then_bb509
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2914
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.3_48:	; if_break_bb514
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2951
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_78
.BB.LABEL.3_49:	; if_break_bb514.if_break_bb527_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r26
.BB.LABEL.3_50:	; if_break_bb527
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2972
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2977
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_53
.BB.LABEL.3_51:	; if_then_bb537
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2980
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2984
	ld.bu 0x00000015[r26], r25
	ld.bu 0x0000001B[r26], r7
	mov r25, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2986
	mov r25, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2988
	cmp 0x00000000, r10
	bz17 .BB.LABEL.3_79
.BB.LABEL.3_52:	; if_then_bb537.if_break_bb577_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r10, r26
.BB.LABEL.3_53:	; if_break_bb577
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3015
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_55
.BB.LABEL.3_54:	; if_then_bb583
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3018
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.hu 0x00000010[r7], r7
	st.w r7, 0x00001800[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.hu 0x00000010[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r6]
.BB.LABEL.3_55:	; if_break_bb595
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3033
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_56:	; bb600
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r5
	tst1 0x00000000, 0x00000000[r5]
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_57:	; if_then_bb618
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3041
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r26
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r26], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.h 0x0000001E[r7], r7
	st.h r7, 0x0000000C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x0000001E[r5], r5
	mov #_Mcu_GddClkMntrReg0RamMirror, r7
	st.h r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3053
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r26], r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x0000001C[r5], r5
	st.h r5, 0x00000008[r26]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r26
	ld.h 0x0000001C[r26], r26
	st.h r26, 0x00000002[r7]
	mov 0x00000005, r26
.BB.LABEL.3_58:	; bb635
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3064
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r6
	movea 0xFFFFFFA5, r0, r7
	st.b r7, 0x00000010[r6]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.b r7, 0x00000000[r6]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.b r8, 0x00000000[r6]
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r5
	st.b r7, 0x00000000[r5]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.3_60
.BB.LABEL.3_59:	; bb652
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_58
.BB.LABEL.3_60:	; bb667
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r26
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r26], r26
	ld.bu 0x00000014[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3073
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GddClkMntrReg0RamMirror)[r5]
	cmp 0x00000001, r26
	setf 0x00000002, r26
	bnz9 .BB.LABEL.3_62
.BB.LABEL.3_61:	; if_then_bb683
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3082
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.3_62:	; if_break_bb687
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3097
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_63:	; bb692
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	tst1 0x00000000, 0x00000000[r5]
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_64:	; if_then_bb710
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3105
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r26
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r26], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.h 0x00000022[r7], r7
	st.h r7, 0x0000000C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000022[r5], r5
	mov #_Mcu_GddClkMntrReg1RamMirror, r7
	st.h r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3117
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r26], r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000020[r5], r5
	st.h r5, 0x00000008[r26]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r26
	ld.h 0x00000020[r26], r26
	st.h r26, 0x00000002[r7]
	mov 0x00000005, r26
.BB.LABEL.3_65:	; bb727
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3128
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
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.3_67
.BB.LABEL.3_66:	; bb744
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_65
.BB.LABEL.3_67:	; bb759
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r26
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r26], r26
	ld.bu 0x00000014[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3137
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r5]
	cmp 0x00000001, r26
	setf 0x00000002, r26
	bnz9 .BB.LABEL.3_69
.BB.LABEL.3_68:	; if_then_bb775
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3146
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.3_69:	; if_break_bb781
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3168
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.3_70:	; if_then_bb356.bb364_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r26
.BB.LABEL.3_71:	; bb364
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2697
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	st23.w r27, 0x00009700[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	not r27, r7
	st23.w r7, 0x00009700[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	st23.w r27, 0x00009700[r5]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.3_73
.BB.LABEL.3_72:	; bb384
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_71
.BB.LABEL.3_73:	; bb398
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2704
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r5
	st.w r27, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r5]
	cmp 0x00000001, r26
	setf 0x00000002, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2707
	bnz17 .BB.LABEL.3_36
.BB.LABEL.3_74:	; if_then_bb414
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	jarl32 _Dem_ReportErrorStatus, r31
	jr .BB.LABEL.3_41
.BB.LABEL.3_75:	; if_else_bb431
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2745
	cmp 0x00000000, r26
	bnz17 .BB.LABEL.3_41
.BB.LABEL.3_76:	; if_then_bb437
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2747
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz17 .BB.LABEL.3_41
.BB.LABEL.3_77:	; if_then_bb445
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2752
	jarl _Mcu_StandByPrepare.1, r31
	jr .BB.LABEL.3_40
.BB.LABEL.3_78:	; if_then_bb520
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2953
	jarl _Mcu_MainOscDisable.1, r31
	jr .BB.LABEL.3_49
.BB.LABEL.3_79:	; if_then_bb555
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2993
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r5
	ld.w 0x00000000[r5], r6
	ld.bu 0x00000015[r5], r5
	shl 0x00000003, r5
	add r5, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 2999
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3003
	ld.bu 0x0000001B[r26], r8
	ld.bu 0x00000016[r26], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
	jr .BB.LABEL.3_52
_Mcu_DistributePllClock:
	.stack _Mcu_DistributePllClock = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3234
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3258
	jarl _Mcu_GetPllStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3260
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
.BB.LABEL.4_2:	; if_then_bb
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3469
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3270
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000E, r9
	br9 .BB.LABEL.4_2
.BB.LABEL.4_5:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3285
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.bu 0x00000004[r6], r7
	ld.bu 0x00000019[r6], r6
	add r6, r7
	shl 0x00000003, r7
	mov #_Mcu_GstCkscSetting, r6
	add r7, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r7
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3291
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3295
	ld.bu 0x00000017[r5], r25
	ld.bu 0x0000001B[r5], r7
	mov r25, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3297
	mov r25, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3299
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3301
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.bu 0x00000019[r6], r7
	ld.bu 0x00000017[r6], r8
	add r8, r7
	ld.bu 0x00000004[r6], r6
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3305
	zxb r7
	shl 0x00000003, r7
	mov #_Mcu_GstCkscSetting, r6
	add r7, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r7
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3309
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3313
	ld.bu 0x0000001B[r5], r8
	ld.bu 0x00000018[r5], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
.BB.LABEL.4_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3320
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3323
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.hu 0x00000010[r7], r7
	st.w r7, 0x00001800[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.hu 0x00000010[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000054), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000054)[r6]
.BB.LABEL.4_9:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3338
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_10:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	tst1 0x00000000, 0x00000000[r5]
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_11:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3346
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r7
	ld.w LOWW(#_Mcu_GpClockSetting)[r7], r8
	ld.h 0x00000026[r8], r8
	st.h r8, 0x0000000C[r6]
	ld.w LOWW(#_Mcu_GpClockSetting)[r7], r6
	ld.h 0x00000026[r6], r6
	mov #_Mcu_GddClkMntrReg2RamMirror, r8
	st.h r6, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3358
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r7], r6
	ld.h 0x00000024[r6], r6
	st.h r6, 0x00000008[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r7], r5
	ld.h 0x00000024[r5], r5
	st.h r5, 0x00000002[r8]
	mov 0x00000005, r5
.BB.LABEL.4_12:	; bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3369
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r6
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r6], r7
	movea 0xFFFFFFA5, r0, r8
	st.b r8, 0x00000010[r7]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r6], r7
	mov 0x00000001, r8
	st.b r8, 0x00000000[r7]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r6], r7
	mov 0xFFFFFFFE, r9
	st.b r9, 0x00000000[r7]
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r6], r6
	st.b r8, 0x00000000[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.4_14
.BB.LABEL.4_13:	; bb148
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r6
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r6], r6
	ld.bu 0x00000014[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; bb163
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3378
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror), r0, r6
	mov 0x00000001, r7
	st.b r7, LOWW(#_Mcu_GddClkMntrReg2RamMirror)[r6]
	cmp 0x00000001, r5
	setf 0x00000002, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3381
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; bb163.if_break_bb185_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
.BB.LABEL.4_16:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3469
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.4_17:	; if_then_bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3387
	jarl32 _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.4_15
_Mcu_GetPllStatus:
	.stack _Mcu_GetPllStatus = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3520
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3537
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000004, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3540
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r5
	mov 0x00000002, r6
	br9 .BB.LABEL.5_8
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3558
	movhi HIGHW1(#_Mcu_GucSelectedSrcClock.1), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3562
	tst1 0x00000003, LOWW(#_Mcu_GucSelectedSrcClock.1)[r5]
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.5_7
.BB.LABEL.5_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3568
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb17.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r5
	mov 0x00000000, r6
	br9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; if_then_bb25
	mov 0x00000001, r6
.BB.LABEL.5_7:	; if_then_bb25
	mov r6, r5
.BB.LABEL.5_8:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3616
	cmp 0x00000000, r5
	cmov 0x00000002, 0x00000001, r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3623
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_GetResetReason:
	.stack _Mcu_GetResetReason = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3675
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3684
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3687
	jarl32 _Det_ReportError, r31
	movea 0x00000010, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3690
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3696
	jarl32 _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3698
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r5
	ld.bu LOWW(#_Mcu_GblResetFlag)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_else_bb.if_break_bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3701
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r25
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r25], r5
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r6
	st.w r5, LOWW(#_Mcu_GulResetValue.4)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3702
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r5
	st.b r0, LOWW(#_Mcu_GblResetFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3703
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r25], r25
	ld.w 0x00000100[r25], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3705
	ld.w LOWW(#_Mcu_GulResetValue.4)[r6], r5
	cmp r25, r5
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3709
	or r25, r5
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r25
	st.w r5, LOWW(#_Mcu_GulResetValue.4)[r25]
	mov 0x00000001, r25
.BB.LABEL.6_6:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3720
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r5
	ld.w LOWW(#_Mcu_GulResetValue.4)[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3722
	jarl32 _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3724
	xori 0x00000001, r25, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3727
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.6_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3736
	addi 0xFFFFFFE1, r26, r0
	bgt9 .BB.LABEL.6_18
.BB.LABEL.6_9:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r26
	bgt9 .BB.LABEL.6_14
.BB.LABEL.6_10:	; if_break_bb41
	cmp 0xFFFFFFFF, r26
	bz9 .BB.LABEL.6_34
.BB.LABEL.6_11:	; if_break_bb41
	cmp 0x00000001, r26
	bz9 .BB.LABEL.6_27
.BB.LABEL.6_12:	; if_break_bb41
	cmp 0x00000002, r26
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_13:	; switch_clause_bb44
	mov 0x00000002, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_14:	; if_break_bb41
	cmp 0x00000004, r26
	bz9 .BB.LABEL.6_28
.BB.LABEL.6_15:	; if_break_bb41
	cmp 0x00000008, r26
	bz9 .BB.LABEL.6_29
.BB.LABEL.6_16:	; if_break_bb41
	addi 0xFFFFFFF0, r26, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_17:	; switch_clause_bb47
	mov 0x00000005, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_18:	; if_break_bb41
	addi 0xFFFFFF01, r26, r0
	bgt9 .BB.LABEL.6_23
.BB.LABEL.6_19:	; if_break_bb41
	addi 0xFFFFFFE0, r26, r0
	bz9 .BB.LABEL.6_30
.BB.LABEL.6_20:	; if_break_bb41
	addi 0xFFFFFFC0, r26, r0
	bz9 .BB.LABEL.6_31
.BB.LABEL.6_21:	; if_break_bb41
	addi 0xFFFFFF80, r26, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_22:	; switch_clause_bb50
	mov 0x00000008, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_23:	; if_break_bb41
	addi 0xFFFFFF00, r26, r0
	bz9 .BB.LABEL.6_32
.BB.LABEL.6_24:	; if_break_bb41
	addi 0xFFFFFC00, r26, r0
	bz9 .BB.LABEL.6_33
.BB.LABEL.6_25:	; if_break_bb41
	addi 0xFFFFFE00, r26, r0
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_26:	; if_break_bb41.switch_break_bb_crit_edge
	mov 0x0000000A, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_27:	; switch_clause_bb43
	mov 0x00000001, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_28:	; switch_clause_bb45
	mov 0x00000003, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_29:	; switch_clause_bb46
	mov 0x00000004, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_30:	; switch_clause_bb48
	mov 0x00000006, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_31:	; switch_clause_bb49
	mov 0x00000007, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_32:	; switch_clause_bb51
	mov 0x00000009, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_33:	; switch_clause_bb52
	mov 0x0000000B, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_34:	; if_then_bb58
	movea 0x00000010, r0, r26
	br9 .BB.LABEL.6_47
.BB.LABEL.6_35:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3803
	andi 0x00000200, r26, r0
	bnz9 .BB.LABEL.6_26
.BB.LABEL.6_36:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3807
	andi 0x00000100, r26, r0
	bnz9 .BB.LABEL.6_32
.BB.LABEL.6_37:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3811
	andi 0x00000002, r26, r0
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_38:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3815
	andi 0x00000004, r26, r0
	bnz9 .BB.LABEL.6_28
.BB.LABEL.6_39:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3819
	andi 0x00000008, r26, r0
	bnz9 .BB.LABEL.6_29
.BB.LABEL.6_40:	; if_else_bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3823
	andi 0x00000010, r26, r0
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_41:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3827
	andi 0x00000020, r26, r0
	bnz9 .BB.LABEL.6_30
.BB.LABEL.6_42:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3831
	andi 0x00000080, r26, r0
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_43:	; if_else_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3835
	andi 0x00000040, r26, r0
	bnz9 .BB.LABEL.6_31
.BB.LABEL.6_44:	; if_else_bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3840
	andi 0x00000001, r26, r0
	bnz9 .BB.LABEL.6_27
.BB.LABEL.6_45:	; if_else_bb129
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3844
	andi 0x00000400, r26, r0
	bnz9 .BB.LABEL.6_33
.BB.LABEL.6_46:	; if_else_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000012, r0, r26
.BB.LABEL.6_47:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3865
	jarl32 _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3868
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	movea 0x000007FF, r0, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3876
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	st.w r7, 0x00000108[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3884
	jarl32 _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	mov r26, r10
	dispose 0x00000000, 0x00000301, [r31]
_Mcu_GetResetRawValue:
	.stack _Mcu_GetResetRawValue = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3940
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3948
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3951
	jarl32 _Det_ReportError, r31
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3954
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3960
	jarl32 _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3962
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r5
	ld.bu LOWW(#_Mcu_GblResetFlag)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3965
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	ld.w 0x00000000[r6], r6
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r7
	st.w r6, LOWW(#_Mcu_GulResetValue.4)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3966
	movhi HIGHW1(#_Mcu_GblResetFlag), r0, r6
	st.b r0, LOWW(#_Mcu_GblResetFlag)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3967
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	ld.w 0x00000100[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3969
	ld.w LOWW(#_Mcu_GulResetValue.4)[r7], r6
	cmp r5, r6
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3973
	or r5, r6
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r5
	st.w r6, LOWW(#_Mcu_GulResetValue.4)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3985
	jarl32 _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 3990
	jarl32 _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_break_bb39.critedge1
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	jarl32 _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
.BB.LABEL.7_6:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4000
	movhi HIGHW1(#_Mcu_GulResetValue.4), r0, r5
	ld.w LOWW(#_Mcu_GulResetValue.4)[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4002
	jarl32 _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4005
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	movea 0x000007FF, r0, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4013
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	st.w r7, 0x00000108[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4021
	jarl32 _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_PerformReset:
	.stack _Mcu_PerformReset = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4081
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4093
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4096
	jarl32 _Det_ReportError, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4106
	jarl32 _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	mov 0x00000005, r5
.BB.LABEL.8_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4109
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r6], r7
	mov 0x00000001, r8
	st.w r8, 0x000002A4[r7]
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r6], r7
	mov 0xFFFFFFFE, r9
	st.w r9, 0x000002A4[r7]
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r6], r6
	st.w r8, 0x000002A4[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; bb36
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4116
	jarl32 _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4119
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4125
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.8_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4134
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_SetMode:
	.stack _Mcu_SetMode = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4199
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4236
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r5
	ld.bu LOWW(#_Mcu_GblWakeUpPreparation)[r5], r5
	cmp 0x00000000, r5
	mov r6, r25
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	movea 0x000000EF, r0, r9
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4239
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4248
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	br9 .BB.LABEL.9_7
.BB.LABEL.9_5:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4259
	cmp 0x00000002, r25
	bnh9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000C, r9
.BB.LABEL.9_7:	; if_then_bb29
	mov 0x00000008, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.9_8:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4275
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_9:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4279
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.bu 0x00000011[r5], r26
	add r25, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4290
	mulhi 0x0000000C, r26, r5
	mov #_Mcu_GstModeSetting, r25
	add r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4310
	ld.bu 0x0000000A[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4312
	ld.bu 0x00000008[r25], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4310
	add 0x0000000A, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4312
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.9_17
.BB.LABEL.9_10:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4318
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4322
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.9_19
.BB.LABEL.9_11:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4328
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_15
.BB.LABEL.9_12:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4330
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.9_15
.BB.LABEL.9_13:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009708[r5], r5
	zxb r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.9_15
.BB.LABEL.9_14:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4335
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.9_15:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4371
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_16:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4373
	jarl _Mcu_MainOscDisable.1, r31
	br9 .BB.LABEL.9_19
.BB.LABEL.9_17:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4387
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4390
	jarl _Mcu_MainOscEnable.1, r31
.BB.LABEL.9_19:	; if_break_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4399
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_20:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4401
	cmp 0x00000001, r28
	bz9 .BB.LABEL.9_25
.BB.LABEL.9_21:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000002, r28
	bz17 .BB.LABEL.9_61
.BB.LABEL.9_22:	; if_then_bb130
	cmp 0x00000003, r28
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4404
	mulh 0x0000000C, r26
	mov #_Mcu_GstModeSetting, r25
	add r26, r25
	ld.bu 0x00000009[r25], r25
	cmp 0x00000001, r25
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_24:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4410
	halt
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4414
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4415
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4416
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4417
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4418
	nop
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.9_25:	; switch_clause_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4426
	mulh 0x0000000C, r26
	mov #_Mcu_GstModeSetting, r5
	add r26, r5
	ld.bu 0x00000009[r5], r26
	cmp 0x00000001, r26
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_26:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4429
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	tst1 0x00000003, 0x00000012[r26]
	bz9 .BB.LABEL.9_31
.BB.LABEL.9_27:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4434
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.9_29
.BB.LABEL.9_28:	; if_then_bb166
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r6
	br9 .BB.LABEL.9_30
.BB.LABEL.9_29:	; if_else_bb168
	mov 0x00000000, r6
.BB.LABEL.9_30:	; if_else_bb168
	mov r6, r7
	jarl _Mcu_ShiftClockDomain.1, r31
.BB.LABEL.9_31:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4479
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_34
.BB.LABEL.9_32:	; bb177
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	andi 0x00000004, r26, r0
	bz9 .BB.LABEL.9_34
.BB.LABEL.9_33:	; if_then_bb192
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4483
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.9_34:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4533
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.9_69
.BB.LABEL.9_35:	; if_break_bb195.bb202_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r26
.BB.LABEL.9_36:	; bb202
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4540
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r6
	mov 0x00000001, r7
	st.w r7, 0x00000010[r6]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r6
	mov 0xFFFFFFFE, r8
	st.w r8, 0x00000010[r6]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r5
	st.w r7, 0x00000010[r5]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.9_38
.BB.LABEL.9_37:	; bb222
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.9_36
.BB.LABEL.9_38:	; bb236
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld.w 0x00000004[r26], r26
	cmp 0x00000001, r26
	setf 0x00000002, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4546
	bnz9 .BB.LABEL.9_40
.BB.LABEL.9_39:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4552
	jarl32 _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.9_41
.BB.LABEL.9_40:	; bb253
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4557
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r5], r5
	ld.w 0x00000010[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.9_40
.BB.LABEL.9_41:	; if_break_bb262
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4567
	cmp 0x00000001, r26
	bz9 .BB.LABEL.9_46
.BB.LABEL.9_42:	; if_then_bb268
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4569
	ld.bu 0x00000000[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4570
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.9_46
.BB.LABEL.9_43:	; if_then_bb277
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4572
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4573
	tst1 0x00000000, 0x00000012[r26]
	bz9 .BB.LABEL.9_46
.BB.LABEL.9_44:	; if_then_bb289
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4579
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld.w 0x00000104[r26], r26
	andi 0x00000004, r26, r0
	bnz9 .BB.LABEL.9_46
.BB.LABEL.9_45:	; if_then_bb297
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4583
	jarl _Mcu_MainOscEnable.1, r31
	mov r10, r27
.BB.LABEL.9_46:	; if_break_bb306
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4609
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.9_58
.BB.LABEL.9_47:	; if_then_bb312
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4611
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r26
	ld.w LOWW(#_Mcu_GpClockSetting)[r26], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4613
	tst1 0x00000003, 0x00000012[r26]
	bnz9 .BB.LABEL.9_49
.BB.LABEL.9_48:	; if_then_bb312.if_break_bb337_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.9_51
.BB.LABEL.9_49:	; if_then_bb324
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4618
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	andi 0x00000004, r26, r0
	bnz9 .BB.LABEL.9_48
.BB.LABEL.9_50:	; if_then_bb332
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4622
	jarl _Mcu_StartPLL.1, r31
	mov 0x00000001, r26
	mov r10, r27
.BB.LABEL.9_51:	; if_break_bb337
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4658
	cmp 0x00000000, r26
	bz9 .BB.LABEL.9_58
.BB.LABEL.9_52:	; if_break_bb337.bb359_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r26
	br9 .BB.LABEL.9_54
.BB.LABEL.9_53:	; bb356
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4697
	add 0xFFFFFFFF, r26
.BB.LABEL.9_54:	; bb359
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4692
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r5
	andi 0x0000FFFF, r26, r0
	bz9 .BB.LABEL.9_56
.BB.LABEL.9_55:	; bb359
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_53
.BB.LABEL.9_56:	; bb379
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4701
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	andi 0x00000004, r26, r0
	bnz9 .BB.LABEL.9_58
.BB.LABEL.9_57:	; if_then_bb387
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4705
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.9_58:	; if_break_bb393
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4753
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.9_69
.BB.LABEL.9_59:	; if_then_bb399
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4757
	jarl _Mcu_ReinitClockConfiguration.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4759
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_69
.BB.LABEL.9_60:	; if_then_bb406
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4762
	jarl _Mcu_ResumeCpuClock.1, r31
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.9_61:	; switch_clause_bb416
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4815
	jarl _Mcu_StandByPrepare.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4817
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_69
.BB.LABEL.9_62:	; if_then_bb423
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4820
	movhi HIGHW1(#_Mcu_ResfRegister_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r6
	movea 0x000007FF, r0, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4828
	ld.w LOWW(#_Mcu_ResfRegister_BaseAddress)[r5], r5
	st.w r7, 0x00000108[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4836
	mulh 0x0000000C, r26
	mov #_Mcu_GstModeSetting, r5
	add r26, r5
	ld.bu 0x00000009[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.9_69
.BB.LABEL.9_63:	; if_then_bb423.bb436_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000005, r5
.BB.LABEL.9_64:	; bb436
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4842
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_Mcu_Stbc0Register_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r6], r7
	mov 0x00000002, r8
	st.w r8, 0x00000000[r7]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r6], r7
	mov 0xFFFFFFFD, r9
	st.w r9, 0x00000000[r7]
	ld.w LOWW(#_Mcu_Stbc0Register_BaseAddress)[r6], r6
	st.w r8, 0x00000000[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.9_66
.BB.LABEL.9_65:	; bb456
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.9_64
.BB.LABEL.9_66:	; bb470
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.9_68
.BB.LABEL.9_67:	; if_then_bb485
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4854
	jarl32 _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.9_68:	; bb487
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4865
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4866
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4867
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4868
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4869
	nop
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4859
	br9 .BB.LABEL.9_68
.BB.LABEL.9_69:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 4906
	dispose 0x00000000, 0x00000385, [r31]
_Mcu_CkscConfigure.1:
	.stack _Mcu_CkscConfigure.1 = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5039
	prepare 0x00000B87, 0x00000008
	mov 0x00000000, r25
	mov r8, r5
	st.w r5, 0x00000004[r3]
	mov r7, r5
	st.w r5, 0x00000000[r3]
	mov r25, r26
	mov r6, r27
	jr .BB.LABEL.10_97
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5075
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r30
	ld.w LOWW(#_Mcu_GpCkscSetting)[r30], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5078
	ld.bu 0x00000006[r5], r7
	ld.hu 0x00000002[r5], r6
	jarl _Mcu_ReloadClockDomainSTPM.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5084
	ld.w LOWW(#_Mcu_GpCkscSetting)[r30], r5
	ld.bu 0x00000000[r5], r5
	addi 0xFFFFFFE5, r5, r0
	bgt9 .BB.LABEL.10_11
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFEE, r5, r0
	bgt9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; bb
	cmp 0x00000004, r5
	bz17 .BB.LABEL.10_23
.BB.LABEL.10_4:	; bb
	cmp 0x00000009, r5
	bz17 .BB.LABEL.10_24
.BB.LABEL.10_5:	; bb
	cmp 0x0000000E, r5
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_6:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5120
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000040, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5114
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5118
	ld.w 0x00001508[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5116
	movea 0x00001508, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5114
	movea 0x00001500, r29, r29
	jr .BB.LABEL.10_32
.BB.LABEL.10_7:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFED, r5, r0
	bz17 .BB.LABEL.10_25
.BB.LABEL.10_8:	; bb
	addi 0xFFFFFFEA, r5, r0
	bz17 .BB.LABEL.10_26
.BB.LABEL.10_9:	; bb
	addi 0xFFFFFFE6, r5, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_10:	; switch_clause_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5166
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5170
	ld23.w 0x00009208[r29], r5
	ori 0x00009208, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5168
	add r29, r28
	ori 0x00009200, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5166
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5172
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000070, r25, r25
	jr .BB.LABEL.10_32
.BB.LABEL.10_11:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDA, r5, r0
	bgt9 .BB.LABEL.10_16
.BB.LABEL.10_12:	; bb
	addi 0xFFFFFFE4, r5, r0
	bz17 .BB.LABEL.10_28
.BB.LABEL.10_13:	; bb
	addi 0xFFFFFFE2, r5, r0
	bz17 .BB.LABEL.10_29
.BB.LABEL.10_14:	; bb
	addi 0xFFFFFFE0, r5, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_15:	; switch_clause_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5206
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5210
	ld23.w 0x00009508[r29], r5
	ori 0x00009508, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5208
	add r29, r28
	ori 0x00009500, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5206
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5212
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x0000007C, r25, r25
	jr .BB.LABEL.10_32
.BB.LABEL.10_16:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD2, r5, r0
	bgt9 .BB.LABEL.10_20
.BB.LABEL.10_17:	; bb
	addi 0xFFFFFFD9, r5, r0
	bz17 .BB.LABEL.10_30
.BB.LABEL.10_18:	; bb
	addi 0xFFFFFFD3, r5, r0
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_19:	; switch_clause_bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5233
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5237
	ld23.w 0x00009B08[r29], r5
	ori 0x00009B08, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5235
	add r29, r28
	ori 0x00009B00, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5233
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5239
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x000000A4, r25, r25
	jr .BB.LABEL.10_32
.BB.LABEL.10_20:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD1, r5, r0
	bz17 .BB.LABEL.10_31
.BB.LABEL.10_21:	; bb
	addi 0xFFFFFFCF, r5, r0
	bz9 .BB.LABEL.10_27
.BB.LABEL.10_22:	; bb.switch_break_bb_crit_edge
	mov 0xFFFFFFFF, r5
	jr .BB.LABEL.10_32
.BB.LABEL.10_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5094
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000028, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5088
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5092
	ld.w 0x00001108[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5090
	movea 0x00001108, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5088
	movea 0x00001100, r29, r29
	jr .BB.LABEL.10_32
.BB.LABEL.10_24:	; switch_clause_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5106
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000034, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5101
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5104
	ld.w 0x00001308[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5103
	movea 0x00001308, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5101
	movea 0x00001300, r29, r29
	jr .BB.LABEL.10_32
.BB.LABEL.10_25:	; switch_clause_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5133
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x0000004C, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5127
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5131
	ld.w 0x00001708[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5129
	movea 0x00001708, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5127
	movea 0x00001700, r29, r29
	br9 .BB.LABEL.10_32
.BB.LABEL.10_26:	; switch_clause_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5140
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5144
	ld23.w 0x00009008[r29], r5
	ori 0x00009008, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5142
	add r29, r28
	ori 0x00009000, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5140
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5146
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000064, r25, r25
	br9 .BB.LABEL.10_32
.BB.LABEL.10_27:	; switch_clause_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5153
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5157
	ld23.w 0x00009018[r29], r5
	ori 0x00009018, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5155
	add r29, r28
	ori 0x00009010, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5153
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5159
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000068, r25, r25
	br9 .BB.LABEL.10_32
.BB.LABEL.10_28:	; switch_clause_bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5179
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5183
	ld23.w 0x00009308[r29], r5
	ori 0x00009308, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5181
	add r29, r28
	ori 0x00009300, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5179
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5185
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000074, r25, r25
	br9 .BB.LABEL.10_32
.BB.LABEL.10_29:	; switch_clause_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5192
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5196
	ld23.w 0x00009408[r29], r5
	ori 0x00009408, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5194
	add r29, r28
	ori 0x00009400, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5192
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5198
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000078, r25, r25
	br9 .BB.LABEL.10_32
.BB.LABEL.10_30:	; switch_clause_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5220
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5224
	ld23.w 0x00009908[r29], r5
	ori 0x00009908, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5222
	add r29, r28
	ori 0x00009900, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5220
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5226
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000094, r25, r25
	br9 .BB.LABEL.10_32
.BB.LABEL.10_31:	; switch_clause_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5246
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5250
	ld23.w 0x00009C08[r29], r5
	ori 0x00009C08, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5248
	add r29, r28
	ori 0x00009C00, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5246
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5252
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x000000A8, r25, r25
.BB.LABEL.10_32:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5264
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	ld.w LOWW(#_Mcu_GpCkscSetting)[r6], r6
	tst1 0x00000000, 0x00000006[r6]
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_33:	; bb142
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.bu 0x00000000[r6], r7
	cmp 0x00000000, r7
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_34:	; bb142
	cmp 0xFFFFFFFF, r5
	bz17 .BB.LABEL.10_56
.BB.LABEL.10_35:	; if_then_bb
	mov 0xFFF8A000, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5272
	cmp r26, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5269
	ld.bu 0x00000004[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5272
	bnz9 .BB.LABEL.10_37
.BB.LABEL.10_36:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5275
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r26
	st.w r30, LOWW(#_Mcu_GulCpuClockSetting.2)[r26]
.BB.LABEL.10_37:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.w 0x00000000[r3], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5283
	cmp 0x00000001, r26
	mov 0x00000005, r26
	bnz9 .BB.LABEL.10_41
.BB.LABEL.10_38:	; bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5286
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	st.w r30, 0x00000000[r29]
	not r30, r5
	st.w r5, 0x00000000[r29]
	st.w r30, 0x00000000[r29]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.10_40
.BB.LABEL.10_39:	; bb199
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_38
.BB.LABEL.10_40:	; bb213
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld23.w 0x00008004[r26], r26
	br9 .BB.LABEL.10_44
.BB.LABEL.10_41:	; bb234
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5313
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st.w r6, 0x00000000[r5]
	st.w r30, 0x00000000[r29]
	not r30, r5
	st.w r5, 0x00000000[r29]
	st.w r30, 0x00000000[r29]
	add 0xFFFFFFFF, r26
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.10_43
.BB.LABEL.10_42:	; bb251
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_41
.BB.LABEL.10_43:	; bb265
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r26
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r26], r26
	ld.w 0x00000004[r26], r26
.BB.LABEL.10_44:	; bb265
	st.w r30, 0x00000000[r25]
	cmp 0x00000001, r26
	setf 0x00000002, r26
	bnz9 .BB.LABEL.10_46
.BB.LABEL.10_45:	; if_then_bb282
	mov 0x00000001, r7
	mov 0x00000002, r6
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.10_46:	; if_break_bb285
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.10_48
.BB.LABEL.10_47:	; bb286
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5343
	add 0xFFFFFFFF, r5
.BB.LABEL.10_48:	; bb289
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5339
	ld.w 0x00000000[r28], r6
	cmp r6, r30
	bz9 .BB.LABEL.10_50
.BB.LABEL.10_49:	; bb289
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.10_47
.BB.LABEL.10_50:	; bb308
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5345
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r5
	ld.bu 0x00000000[r5], r5
	addi 0xFFFFFFCF, r5, r0
	bnz9 .BB.LABEL.10_53
.BB.LABEL.10_51:	; bb308
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.w 0x00000004[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.10_53
.BB.LABEL.10_52:	; bb308.if_break_bb330_crit_edge
	mov 0x00000000, r5
	mov r5, r30
	br9 .BB.LABEL.10_54
.BB.LABEL.10_53:	; if_else_bb329
	mov 0x00000001, r5
.BB.LABEL.10_54:	; if_break_bb330
	movhi HIGHW1(#_Mcu_GblPllActCheck), r0, r6
	st.b r5, LOWW(#_Mcu_GblPllActCheck)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5356
	ld.w 0x00000000[r28], r5
	cmp r5, r30
	bz9 .BB.LABEL.10_56
.BB.LABEL.10_55:	; if_then_bb337
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5359
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.10_56:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5376
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r5
	ld.bu 0x00000001[r5], r5
	addi 0xFFFFFFE9, r5, r0
	bgt9 .BB.LABEL.10_64
.BB.LABEL.10_57:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000A, r5
	bgt9 .BB.LABEL.10_61
.BB.LABEL.10_58:	; if_break_bb341
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_71
.BB.LABEL.10_59:	; if_break_bb341
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_60:	; switch_clause_bb366
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5412
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x0000002C, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5407
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5410
	ld.w 0x00001208[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5409
	movea 0x00001208, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5407
	movea 0x00001200, r29, r29
	jr .BB.LABEL.10_78
.BB.LABEL.10_61:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000B, r5
	bz9 .BB.LABEL.10_74
.BB.LABEL.10_62:	; if_break_bb341
	add 0xFFFFFFF0, r5
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_63:	; switch_clause_bb382
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5434
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000044, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5429
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5432
	ld.w 0x00001608[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5431
	movea 0x00001608, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5429
	movea 0x00001600, r29, r29
	jr .BB.LABEL.10_78
.BB.LABEL.10_64:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDD, r5, r0
	bgt9 .BB.LABEL.10_68
.BB.LABEL.10_65:	; if_break_bb341
	addi 0xFFFFFFE8, r5, r0
	bz9 .BB.LABEL.10_75
.BB.LABEL.10_66:	; if_break_bb341
	addi 0xFFFFFFDE, r5, r0
	bnz9 .BB.LABEL.10_70
.BB.LABEL.10_67:	; switch_clause_bb398
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5452
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5455
	ld23.w 0x00009608[r29], r5
	ori 0x00009608, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5454
	add r29, r28
	ori 0x00009600, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5452
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5457
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x00000080, r25, r25
	br9 .BB.LABEL.10_78
.BB.LABEL.10_68:	; if_break_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFDC, r5, r0
	bz9 .BB.LABEL.10_77
.BB.LABEL.10_69:	; if_break_bb341
	addi 0xFFFFFFD6, r5, r0
	bz9 .BB.LABEL.10_76
.BB.LABEL.10_70:	; if_break_bb341.switch_break_bb423_crit_edge
	mov 0xFFFFFFFF, r5
	br9 .BB.LABEL.10_78
.BB.LABEL.10_71:	; switch_clause_bb346
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5379
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001000[r6], r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00001008[r5], r5
	cmp r5, r6
	bz9 .BB.LABEL.10_73
.BB.LABEL.10_72:	; if_then_bb356
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5386
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
	mov 0xFFFFFFFF, r5
	br9 .BB.LABEL.10_78
.BB.LABEL.10_73:	; if_else_bb357
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5400
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000020, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5395
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5398
	ld.w 0x00001008[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5397
	movea 0x00001008, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5395
	movea 0x00001000, r29, r29
	br9 .BB.LABEL.10_78
.BB.LABEL.10_74:	; switch_clause_bb374
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5423
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000038, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5418
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5421
	ld.w 0x00001408[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5420
	movea 0x00001408, r29, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5418
	movea 0x00001400, r29, r29
	br9 .BB.LABEL.10_78
.BB.LABEL.10_75:	; switch_clause_bb390
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5440
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5443
	ld23.w 0x00009108[r29], r5
	ori 0x00009108, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5442
	add r29, r28
	ori 0x00009100, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5440
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5445
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x0000006C, r25, r25
	br9 .BB.LABEL.10_78
.BB.LABEL.10_76:	; switch_clause_bb406
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5465
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5469
	ld23.w 0x00009A08[r29], r5
	ori 0x00009A08, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5467
	add r29, r28
	ori 0x00009A00, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5465
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5471
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x0000009C, r25, r25
	br9 .BB.LABEL.10_78
.BB.LABEL.10_77:	; switch_clause_bb414
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5477
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5480
	ld23.w 0x00009808[r29], r5
	ori 0x00009808, r0, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5479
	add r29, r28
	ori 0x00009800, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5477
	add r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5482
	mov #_Mcu_GddClkCntlRegRamMirror, r25
	movea 0x0000008C, r25, r25
.BB.LABEL.10_78:	; switch_break_bb423
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5493
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	ld.w LOWW(#_Mcu_GpCkscSetting)[r6], r6
	tst1 0x00000001, 0x00000006[r6]
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_79:	; bb433
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.bu 0x00000001[r6], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_80:	; bb433
	cmp 0xFFFFFFFF, r5
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_81:	; if_then_bb459
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5502
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5498
	ld.bu 0x00000005[r6], r30
	mov 0x00000005, r5
	bnz9 .BB.LABEL.10_85
.BB.LABEL.10_82:	; bb470
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5505
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st23.w r7, 0x00008000[r6]
	st.w r30, 0x00000000[r29]
	not r30, r6
	st.w r6, 0x00000000[r29]
	st.w r30, 0x00000000[r29]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.10_84
.BB.LABEL.10_83:	; bb487
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld23.w 0x00008004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.10_82
.BB.LABEL.10_84:	; bb501
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	br9 .BB.LABEL.10_88
.BB.LABEL.10_85:	; bb522
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5532
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	st.w r30, 0x00000000[r29]
	not r30, r6
	st.w r6, 0x00000000[r29]
	st.w r30, 0x00000000[r29]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.10_87
.BB.LABEL.10_86:	; bb539
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.10_85
.BB.LABEL.10_87:	; bb553
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
.BB.LABEL.10_88:	; bb553
	st.w r30, 0x00000000[r25]
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.10_90
.BB.LABEL.10_89:	; if_then_bb570
	mov 0x00000001, r26
	mov 0x00000002, r6
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.10_90:	; if_break_bb573
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.10_92
.BB.LABEL.10_91:	; bb574
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5561
	add 0xFFFFFFFF, r5
.BB.LABEL.10_92:	; bb577
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5558
	ld.w 0x00000000[r28], r6
	cmp r6, r30
	bz9 .BB.LABEL.10_94
.BB.LABEL.10_93:	; bb577
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.10_91
.BB.LABEL.10_94:	; bb596
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5563
	ld.w 0x00000000[r28], r5
	cmp r5, r30
	bz9 .BB.LABEL.10_96
.BB.LABEL.10_95:	; if_then_bb603
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r26
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5566
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.10_96:	; if_break_bb607
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5580
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r6
	add 0x00000008, r6
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5583
	add 0xFFFFFFFF, r27
.BB.LABEL.10_97:	; bb612
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5071
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.10_99
.BB.LABEL.10_98:	; bb612
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x000000FF, r27, r0
	bnz17 .BB.LABEL.10_1
.BB.LABEL.10_99:	; bb630
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 5586
	andi 0x000000FF, r26, r10
	dispose 0x00000008, 0x00000B87, [r31]
_Mcu_StopPLL.1:
	.stack _Mcu_StopPLL.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6308
	prepare 0x00000201, 0x00000000
	mov 0x00000005, r5
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6321
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st23.w r7, 0x00008000[r6]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0x00000002, r8
	st23.w r8, 0x00008000[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0xFFFFFFFD, r9
	st23.w r9, 0x00008000[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st23.w r8, 0x00008000[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld23.w 0x00008004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; bb31
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	setf 0x00000002, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6328
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb31.bb49_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_then_bb43
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6335
	jarl32 _Dem_ReportErrorStatus, r31
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6347
	add 0xFFFFFFFF, r5
.BB.LABEL.11_7:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6343
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00008004[r6], r6
	andi 0x00000004, r6, r0
	bz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_9:	; bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6349
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6351
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.11_11:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6359
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_StartPLL.1:
	.stack _Mcu_StartPLL.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6409
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6418
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00008008[r6], r7
	movea 0xFFFFE7C0, r0, r8
	and r8, r7
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r9
	ld.w LOWW(#_Mcu_GpClockSetting)[r9], r10
	ld.w 0x00000008[r10], r10
	or r10, r7
	st23.w r7, 0x00008008[r6]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008008[r5], r5
	and r8, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r9], r6
	ld.w 0x00000008[r6], r6
	or r6, r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000005C), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000005C)[r6]
	mov 0x00000005, r5
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6432
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st23.w r7, 0x00008000[r6]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0x00000001, r8
	st23.w r8, 0x00008000[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0xFFFFFFFE, r9
	st23.w r9, 0x00008000[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st23.w r8, 0x00008000[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld23.w 0x00008004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb48
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	setf 0x00000002, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6439
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6445
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.12_5:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6453
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_StandByPrepare.1:
	.stack _Mcu_StandByPrepare.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6701
	prepare 0x00000001, 0x00000000
	mov r6, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6727
	jarl _Mcu_ShiftClockDomain.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6751
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6754
	jarl _Mcu_StopPLL.1, r31
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6769
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_MainOscDisable.1:
	.stack _Mcu_MainOscDisable.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6825
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6836
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	mov 0x00000002, r6
	st.w r6, 0x00000118[r5]
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r5
	st.w r6, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r5]
	mov 0x00000005, r5
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6845
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0x00000002, r8
	st.w r8, 0x00000100[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0xFFFFFFFD, r9
	st.w r9, 0x00000100[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st.w r8, 0x00000100[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; bb33
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	setf 0x00000002, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6851
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; bb33.bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.14_7
.BB.LABEL.14_5:	; if_then_bb45
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6857
	jarl32 _Dem_ReportErrorStatus, r31
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6869
	add 0xFFFFFFFF, r5
.BB.LABEL.14_7:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6865
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00000104[r6], r6
	andi 0x00000004, r6, r0
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_9:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6871
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.14_11
.BB.LABEL.14_10:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r25
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6874
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.14_11:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6884
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_ReloadClockDomainSTPM.1:
	.stack _Mcu_ReloadClockDomainSTPM.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6932
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6945
	cmp r5, r6
	bz17 .BB.LABEL.15_27
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6951
	addi 0xFFFFFFEC, r6, r0
	bgt9 .BB.LABEL.15_9
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000C, r6
	bgt9 .BB.LABEL.15_6
.BB.LABEL.15_3:	; if_then_bb
	cmp 0x00000003, r6
	bz9 .BB.LABEL.15_16
.BB.LABEL.15_4:	; if_then_bb
	cmp 0x00000008, r6
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_5:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6966
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000030, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6963
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movea 0x00001218, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x0000000D, r6
	bz9 .BB.LABEL.15_17
.BB.LABEL.15_7:	; if_then_bb
	addi 0xFFFFFFEE, r6, r0
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_8:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6984
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000048, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6981
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movea 0x00001618, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD8, r6, r0
	bgt9 .BB.LABEL.15_13
.BB.LABEL.15_10:	; if_then_bb
	addi 0xFFFFFFEB, r6, r0
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_11:	; if_then_bb
	addi 0xFFFFFFDA, r6, r0
	bnz9 .BB.LABEL.15_15
.BB.LABEL.15_12:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6999
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ori 0x00009818, r0, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7002
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000090, r6, r6
	br9 .BB.LABEL.15_21
.BB.LABEL.15_13:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD7, r6, r0
	bz9 .BB.LABEL.15_19
.BB.LABEL.15_14:	; if_then_bb
	addi 0xFFFFFFD4, r6, r0
	bz9 .BB.LABEL.15_20
.BB.LABEL.15_15:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.15_21
.BB.LABEL.15_16:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6957
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000024, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6954
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movea 0x00001018, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_17:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6975
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x0000003C, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6972
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movea 0x00001418, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_18:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6993
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000050, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 6990
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	movea 0x00001718, r5, r5
	br9 .BB.LABEL.15_21
.BB.LABEL.15_19:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7008
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ori 0x00009918, r0, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7011
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000098, r6, r6
	br9 .BB.LABEL.15_21
.BB.LABEL.15_20:	; switch_clause_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7017
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ori 0x00009A18, r0, r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7020
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x000000A0, r6, r6
.BB.LABEL.15_21:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7034
	cmp 0x00000000, r5
	bz9 .BB.LABEL.15_27
.BB.LABEL.15_22:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.15_27
.BB.LABEL.15_23:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7040
	andi 0x00000004, r7, r0
	bz9 .BB.LABEL.15_26
.BB.LABEL.15_24:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000003, r7
.BB.LABEL.15_25:	; if_then_bb56
	st.w r7, 0x00000000[r5]
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7074
	jmp [r31]
.BB.LABEL.15_26:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r7
	br9 .BB.LABEL.15_25
.BB.LABEL.15_27:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7074
	jmp [r31]
_Mcu_ShiftClockDomain.1:
	.stack _Mcu_ShiftClockDomain.1 = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7130
	prepare 0x00000B87, 0x00000008
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7185
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r8
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7167
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r9
	ld.w LOWW(#_Mcu_GpConfigPtr)[r9], r9
	ld.w 0x0000000C[r9], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7185
	st.w r9, 0x00000004[r3]
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r9
	st.w r8, LOWW(#_Mcu_GpCkscSetting)[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7192
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	ld.b 0x00000015[r5], r25
	ld.b 0x00000016[r5], r8
	add r8, r25
	ld.b 0x00000017[r5], r8
	add r8, r25
	ld.b 0x00000018[r5], r5
	add r5, r25
	mov 0x00000000, r26
	mov r7, r27
	mov r6, r28
	br9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7200
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r29
	ld.w LOWW(#_Mcu_GpCkscSetting)[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7203
	ld.bu 0x00000006[r5], r7
	ld.hu 0x00000002[r5], r6
	jarl _Mcu_ReloadClockDomainSTPM.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7206
	ld.w LOWW(#_Mcu_GpCkscSetting)[r29], r5
	add 0x00000008, r5
	st.w r5, LOWW(#_Mcu_GpCkscSetting)[r29]
	add 0x00000001, r26
.BB.LABEL.16_2:	; bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7197
	andi 0x000000FF, r26, r5
	andi 0x000000FF, r25, r6
	cmp r6, r5
	bl9 .BB.LABEL.16_1
.BB.LABEL.16_3:	; bb63.bb1350_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r25
	mov r25, r5
	jr .BB.LABEL.16_153
.BB.LABEL.16_4:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7220
	ld.bu 0x00000000[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7224
	addi 0xFFFFFFE3, r26, r0
	bgt17 .BB.LABEL.16_25
.BB.LABEL.16_5:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFEE, r26, r0
	bgt9 .BB.LABEL.16_17
.BB.LABEL.16_6:	; bb71
	cmp 0x00000004, r26
	bz17 .BB.LABEL.16_42
.BB.LABEL.16_7:	; bb71
	cmp 0x00000009, r26
	bz17 .BB.LABEL.16_55
.BB.LABEL.16_8:	; bb71
	cmp 0x0000000E, r26
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_9:	; switch_clause_bb213
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7367
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7368
	addi 0x00000004, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7387
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7369
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7371
	movea 0x00001508, r8, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7369
	movea 0x00001500, r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7372
	ld.w 0x00001500[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7375
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7377
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7380
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7382
	ld23.w 0x00009700[r7], r7
	bnz17 .BB.LABEL.16_57
.BB.LABEL.16_10:	; if_then_bb238
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7390
	cmp 0x00000001, r27
	bnz17 .BB.LABEL.16_56
.BB.LABEL.16_11:	; if_then_bb244
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7392
	cmp 0x00000002, r8
	bz9 .BB.LABEL.16_16
.BB.LABEL.16_12:	; if_else_bb250
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7396
	cmp 0x00000003, r8
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_13:	; if_then_bb255
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7398
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_16
.BB.LABEL.16_14:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7402
	cmp 0x00000003, r30
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_15:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz17 .BB.LABEL.16_59
.BB.LABEL.16_16:	; if_then_bb316
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000040, r7, r7
	mov 0x00000001, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_17:	; bb71
	addi 0xFFFFFFE7, r26, r0
	bgt9 .BB.LABEL.16_21
.BB.LABEL.16_18:	; bb71
	addi 0xFFFFFFED, r26, r0
	bz17 .BB.LABEL.16_60
.BB.LABEL.16_19:	; bb71
	addi 0xFFFFFFEA, r26, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_20:	; switch_clause_bb462
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7574
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7572
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7577
	ld23.w 0x00009000[r9], r8
	ori 0x00009008, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7576
	add r9, r29
	ori 0x00009000, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7574
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7573
	add r5, r6
	ori 0x00008000, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7572
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7583
	cmp 0x00000001, r28
	setf 0x00000002, r7
	cmp 0x00000002, r8
	setf 0x00000002, r30
	and r30, r7
	cmp 0x00000003, r8
	setf 0x00000002, r30
	or r30, r7
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7592
	cmov 0x0000000A, 0x00000001, r8, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7595
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000064, r7, r7
	jr .BB.LABEL.16_135
.BB.LABEL.16_21:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE6, r26, r0
	bz17 .BB.LABEL.16_74
.BB.LABEL.16_22:	; bb71
	addi 0xFFFFFFE4, r26, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_23:	; switch_clause_bb617
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7706
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7704
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7709
	ld23.w 0x00009300[r9], r8
	ori 0x00009308, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7708
	add r9, r29
	ori 0x00009300, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7706
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7705
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7704
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7724
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7712
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7714
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7717
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7719
	ld23.w 0x00009700[r7], r7
	bz17 .BB.LABEL.16_81
.BB.LABEL.16_24:	; switch_clause_bb617.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000074, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_25:	; bb71
	addi 0xFFFFFFD7, r26, r0
	bgt9 .BB.LABEL.16_34
.BB.LABEL.16_26:	; bb71
	addi 0xFFFFFFE2, r26, r0
	bz17 .BB.LABEL.16_86
.BB.LABEL.16_27:	; bb71
	addi 0xFFFFFFE0, r26, r0
	bz17 .BB.LABEL.16_100
.BB.LABEL.16_28:	; bb71
	addi 0xFFFFFFD9, r26, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_29:	; switch_clause_bb896
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7951
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7949
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7954
	ld23.w 0x00009900[r9], r8
	ori 0x00009908, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7953
	add r9, r29
	ori 0x00009900, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7951
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7950
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7949
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7969
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7957
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7959
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7962
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7964
	ld23.w 0x00009700[r7], r7
	bnz17 .BB.LABEL.16_112
.BB.LABEL.16_30:	; if_then_bb921
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7972
	cmp 0x00000001, r8
	bz17 .BB.LABEL.16_111
.BB.LABEL.16_31:	; if_then_bb921
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r27
	bnz17 .BB.LABEL.16_111
.BB.LABEL.16_32:	; if_else_bb933
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7978
	addi 0xFFFFFFFE, r8, r10
	cmp 0x00000002, r10
	bl17 .BB.LABEL.16_108
.BB.LABEL.16_33:	; if_else_bb933.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000094, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_34:	; bb71
	addi 0xFFFFFFD2, r26, r0
	bgt9 .BB.LABEL.16_39
.BB.LABEL.16_35:	; bb71
	addi 0xFFFFFFD6, r26, r0
	bz17 .BB.LABEL.16_128
.BB.LABEL.16_36:	; bb71
	addi 0xFFFFFFD3, r26, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_37:	; switch_clause_bb1008
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8048
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8046
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8051
	ld23.w 0x00009B00[r9], r8
	ori 0x00009B08, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8050
	add r9, r29
	ori 0x00009B00, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8048
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8047
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8046
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8066
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8054
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8056
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8059
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8061
	ld23.w 0x00009700[r7], r7
	bz17 .BB.LABEL.16_115
.BB.LABEL.16_38:	; switch_clause_bb1008.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x000000A4, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_39:	; bb71
	addi 0xFFFFFFD1, r26, r0
	bz17 .BB.LABEL.16_121
.BB.LABEL.16_40:	; bb71
	addi 0xFFFFFFCF, r26, r0
	bnz17 .BB.LABEL.16_133
.BB.LABEL.16_41:	; switch_clause_bb504
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7606
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7604
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7609
	ld23.w 0x00009010[r9], r8
	ori 0x00009018, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7608
	add r9, r29
	ori 0x00009010, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7606
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7605
	add r5, r6
	ori 0x00008000, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7604
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7610
	cmp 0x00000001, r28
	setf 0x00000002, r7
	cmp 0x00000002, r8
	setf 0x00000002, r30
	and r30, r7
	cmp 0x00000003, r8
	setf 0x00000002, r30
	or r30, r7
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7618
	cmov 0x0000000A, 0x00000001, r8, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7621
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000068, r7, r7
	jr .BB.LABEL.16_135
.BB.LABEL.16_42:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7232
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7233
	addi 0x00000004, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7253
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7234
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7236
	movea 0x00001108, r8, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7234
	movea 0x00001100, r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7237
	ld.w 0x00001100[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7241
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7243
	ld23.w 0x00009010[r10], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7246
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7248
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7253
	bnz9 .BB.LABEL.16_52
.BB.LABEL.16_43:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7256
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.16_50
.BB.LABEL.16_44:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7258
	cmp 0x00000002, r8
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_45:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7262
	cmp 0x00000004, r8
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_46:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7264
	cmp 0x00000002, r10
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_47:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7268
	cmp 0x00000003, r10
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_48:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_49:	; if_then_bb177
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000028, r7, r7
	mov 0x00000001, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_50:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7286
	cmp 0x00000002, r8
	bz9 .BB.LABEL.16_49
.BB.LABEL.16_51:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000004, r8
	bz9 .BB.LABEL.16_49
	br9 .BB.LABEL.16_54
.BB.LABEL.16_52:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7301
	cmp 0x00000004, r8
	bnz9 .BB.LABEL.16_54
.BB.LABEL.16_53:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.16_49
.BB.LABEL.16_54:	; if_else_bb165.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000028, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_55:	; switch_clause_bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7342
	cmp 0x00000001, r28
	setf 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7338
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7336
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7341
	ld.w 0x00001300[r9], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7342
	cmp 0x00000002, r8
	setf 0x00000002, r7
	tst r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7348
	cmov 0x0000000A, 0x00000003, r8, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7351
	mov #_Mcu_GddClkCntlRegRamMirror, r6
	movea 0x00000034, r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7340
	movea 0x00001308, r9, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7338
	movea 0x00001300, r9, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7337
	addi 0x00000004, r5, r6
	jr .BB.LABEL.16_135
.BB.LABEL.16_56:	; if_else_bb284
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7420
	addi 0xFFFFFFFE, r8, r7
	cmp 0x00000002, r7
	bl17 .BB.LABEL.16_16
	br9 .BB.LABEL.16_59
.BB.LABEL.16_57:	; if_else_bb304
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7435
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.16_59
.BB.LABEL.16_58:	; if_else_bb304
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r27
	bnz17 .BB.LABEL.16_16
.BB.LABEL.16_59:	; if_else_bb304.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000040, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_60:	; switch_clause_bb321
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7470
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7471
	addi 0x00000004, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7490
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7472
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7474
	movea 0x00001708, r8, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7472
	movea 0x00001700, r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7475
	ld.w 0x00001700[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7478
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7480
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7483
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7485
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7490
	bnz9 .BB.LABEL.16_71
.BB.LABEL.16_61:	; if_then_bb346
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7493
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.16_68
.BB.LABEL.16_62:	; if_then_bb352
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7495
	cmp 0x00000001, r8
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_63:	; if_else_bb358
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7499
	addi 0xFFFFFFFB, r8, r10
	cmp 0x00000002, r10
	bnc9 .BB.LABEL.16_73
.BB.LABEL.16_64:	; if_then_bb374
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7502
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_65:	; if_else_bb380
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7506
	cmp 0x00000003, r30
	bnz9 .BB.LABEL.16_73
.BB.LABEL.16_66:	; if_else_bb380
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_73
.BB.LABEL.16_67:	; if_then_bb457
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000004C, r7, r7
	mov 0x00000002, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_68:	; if_else_bb403
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7524
	cmp 0x00000001, r8
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_69:	; if_else_bb403
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000005, r8
	bz9 .BB.LABEL.16_67
.BB.LABEL.16_70:	; if_else_bb403
	cmp 0x00000006, r8
	bz9 .BB.LABEL.16_67
	br9 .BB.LABEL.16_73
.BB.LABEL.16_71:	; if_else_bb434
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7540
	cmp 0x00000001, r27
	bz9 .BB.LABEL.16_73
.BB.LABEL.16_72:	; if_else_bb441
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7547
	addi 0xFFFFFFFB, r8, r7
	cmp 0x00000002, r7
	bl9 .BB.LABEL.16_67
.BB.LABEL.16_73:	; if_else_bb441.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000004C, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_74:	; switch_clause_bb546
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7639
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7637
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7642
	ld23.w 0x00009200[r9], r8
	ori 0x00009208, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7641
	add r9, r29
	ori 0x00009200, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7639
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7638
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7637
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7657
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7645
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7647
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7650
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7652
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7657
	bz9 .BB.LABEL.16_76
.BB.LABEL.16_75:	; switch_clause_bb546.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000070, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_76:	; if_then_bb571
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7659
	addi 0xFFFFFFFF, r8, r10
	cmp 0x00000001, r10
	bh9 .BB.LABEL.16_75
.BB.LABEL.16_77:	; if_then_bb587
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7662
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_80
.BB.LABEL.16_78:	; if_else_bb593
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7666
	cmp 0x00000003, r30
	bnz9 .BB.LABEL.16_75
.BB.LABEL.16_79:	; if_else_bb593
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_75
.BB.LABEL.16_80:	; if_then_bb609
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7669
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000070, r7, r7
	mov 0x00000000, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_81:	; if_then_bb642
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7726
	addi 0xFFFFFFFF, r8, r10
	cmp 0x00000001, r10
	bh17 .BB.LABEL.16_24
.BB.LABEL.16_82:	; if_then_bb658
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7729
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_85
.BB.LABEL.16_83:	; if_else_bb664
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7733
	cmp 0x00000003, r30
	bnz17 .BB.LABEL.16_24
.BB.LABEL.16_84:	; if_else_bb664
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz17 .BB.LABEL.16_24
.BB.LABEL.16_85:	; if_then_bb680
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7736
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000074, r7, r7
	mov 0x00000000, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_86:	; switch_clause_bb688
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7773
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7771
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7776
	ld23.w 0x00009400[r9], r8
	ori 0x00009408, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7775
	add r9, r29
	ori 0x00009400, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7773
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7772
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7771
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7791
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7779
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7781
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7784
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7786
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7791
	bnz9 .BB.LABEL.16_96
.BB.LABEL.16_87:	; if_then_bb713
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7794
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.16_95
.BB.LABEL.16_88:	; if_then_bb719
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7796
	cmp 0x00000002, r8
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_89:	; if_else_bb725
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7800
	cmp 0x00000001, r8
	bz9 .BB.LABEL.16_92
.BB.LABEL.16_90:	; if_else_bb725
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r8
	bz9 .BB.LABEL.16_92
.BB.LABEL.16_91:	; if_else_bb725.switch_break_bb_crit_edge
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000078, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_92:	; if_then_bb741
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7803
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_93:	; if_else_bb747
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7807
	cmp 0x00000003, r30
	bnz9 .BB.LABEL.16_91
.BB.LABEL.16_94:	; if_else_bb747
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_91
	br9 .BB.LABEL.16_99
.BB.LABEL.16_95:	; if_else_bb770
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7825
	addi 0xFFFFFFFF, r8, r7
	cmp 0x00000002, r7
	bnc9 .BB.LABEL.16_98
	br9 .BB.LABEL.16_99
.BB.LABEL.16_96:	; if_else_bb801
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7841
	bz9 .BB.LABEL.16_91
.BB.LABEL.16_97:	; if_else_bb808
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7848
	cmp 0x00000001, r8
	bz9 .BB.LABEL.16_99
.BB.LABEL.16_98:	; if_else_bb808
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.16_91
.BB.LABEL.16_99:	; if_then_bb824
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000078, r7, r7
	mov 0x00000004, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_100:	; switch_clause_bb829
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7880
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7878
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7883
	ld23.w 0x00009500[r9], r8
	ori 0x00009508, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7882
	add r9, r29
	ori 0x00009500, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7880
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7879
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7878
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7898
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7886
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7888
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7891
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7893
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7898
	bz9 .BB.LABEL.16_102
.BB.LABEL.16_101:	; switch_clause_bb829.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000007C, r7, r7
	jr .BB.LABEL.16_134
.BB.LABEL.16_102:	; if_then_bb854
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7900
	cmp 0x00000002, r8
	bz9 .BB.LABEL.16_107
.BB.LABEL.16_103:	; if_else_bb860
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7904
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_104:	; if_then_bb865
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7906
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_107
.BB.LABEL.16_105:	; if_else_bb871
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7910
	cmp 0x00000003, r30
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_106:	; if_else_bb871
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_101
.BB.LABEL.16_107:	; if_then_bb887
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7913
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000007C, r7, r7
	mov 0x00000001, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_108:	; if_then_bb949
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7981
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_111
.BB.LABEL.16_109:	; if_else_bb955
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7985
	cmp 0x00000003, r30
	bnz17 .BB.LABEL.16_33
.BB.LABEL.16_110:	; if_else_bb955
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz17 .BB.LABEL.16_33
.BB.LABEL.16_111:	; if_then_bb971
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7988
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000094, r7, r7
	mov 0x00000000, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_112:	; if_else_bb980
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8010
	bz17 .BB.LABEL.16_33
.BB.LABEL.16_113:	; if_else_bb987
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8017
	addi 0xFFFFFFFE, r8, r7
	cmp 0x00000001, r7
	bh17 .BB.LABEL.16_33
.BB.LABEL.16_114:	; if_then_bb1003
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8020
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x00000094, r7, r7
	mov 0x00000001, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_115:	; if_then_bb1033
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8068
	addi 0xFFFFFFFF, r8, r10
	cmp 0x00000001, r10
	bh9 .BB.LABEL.16_119
.BB.LABEL.16_116:	; if_then_bb1049
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8071
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_120
.BB.LABEL.16_117:	; if_else_bb1055
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8075
	cmp 0x00000003, r30
	bnz17 .BB.LABEL.16_38
.BB.LABEL.16_118:	; if_else_bb1055
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz17 .BB.LABEL.16_38
	br9 .BB.LABEL.16_120
.BB.LABEL.16_119:	; if_else_bb1075
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8085
	cmp 0x00000003, r8
	bnz17 .BB.LABEL.16_38
.BB.LABEL.16_120:	; if_then_bb1080
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x000000A4, r7, r7
	mov 0x00000004, r30
	jr .BB.LABEL.16_135
.BB.LABEL.16_121:	; switch_clause_bb1086
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8119
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8117
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8122
	ld23.w 0x00009C00[r9], r8
	ori 0x00009C08, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8121
	add r9, r29
	ori 0x00009C00, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8119
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8118
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8117
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8137
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8125
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8127
	ld23.w 0x00009010[r30], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8130
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8132
	ld23.w 0x00009700[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8137
	bz9 .BB.LABEL.16_123
.BB.LABEL.16_122:	; switch_clause_bb1086.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x000000A8, r7, r7
	br9 .BB.LABEL.16_134
.BB.LABEL.16_123:	; if_then_bb1111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8139
	addi 0xFFFFFFFF, r8, r10
	cmp 0x00000001, r10
	bh9 .BB.LABEL.16_122
.BB.LABEL.16_124:	; if_then_bb1127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8142
	cmp 0x00000002, r30
	bz9 .BB.LABEL.16_127
.BB.LABEL.16_125:	; if_else_bb1133
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8146
	cmp 0x00000003, r30
	bnz9 .BB.LABEL.16_122
.BB.LABEL.16_126:	; if_else_bb1133
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_122
.BB.LABEL.16_127:	; if_then_bb1149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8149
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x000000A8, r7, r7
	mov 0x00000000, r30
	br9 .BB.LABEL.16_135
.BB.LABEL.16_128:	; switch_clause_bb1157
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8186
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8184
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8189
	ld23.w 0x00009A00[r9], r8
	ori 0x00009A08, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8188
	add r9, r29
	ori 0x00009A00, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8186
	add r6, r9
	ori 0x00008004, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8185
	add r5, r6
	ori 0x00008000, r0, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8184
	add r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8199
	cmp 0x00000001, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8192
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8194
	ld23.w 0x00009900[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8199
	bnz9 .BB.LABEL.16_131
.BB.LABEL.16_129:	; if_then_bb1178
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8201
	addi 0xFFFFFFFF, r8, r7
	cmp 0x00000002, r7
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000009C, r7, r7
	bnc9 .BB.LABEL.16_134
.BB.LABEL.16_130:	; if_then_bb1194
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r30
	br9 .BB.LABEL.16_135
.BB.LABEL.16_131:	; if_else_bb1197
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8214
	cmp 0x00000001, r7
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	movea 0x0000009C, r7, r7
	bnz9 .BB.LABEL.16_134
.BB.LABEL.16_132:	; if_then_bb1202
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r30
	br9 .BB.LABEL.16_135
.BB.LABEL.16_133:	; switch_clause_bb1206
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8245
	mov #_Mcu_GddClkCntlRegRamMirror, r5
	movea 0x00000028, r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8239
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8241
	movea 0x00001108, r8, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8239
	movea 0x00001100, r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8237
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8238
	addi 0x00000004, r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8242
	ld.w 0x00001100[r8], r8
.BB.LABEL.16_134:	; switch_clause_bb1206
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r8, r30
.BB.LABEL.16_135:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8251
	cmp r8, r30
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_136:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_137:	; switch_break_bb
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_138:	; switch_break_bb.bb1246_crit_edge
	mov 0x00000005, r8
.BB.LABEL.16_139:	; bb1246
	movea 0x000000A5, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8257
	st.w r10, 0x00000000[r5]
	st.w r30, 0x00000000[r9]
	not r30, r10
	st.w r10, 0x00000000[r9]
	st.w r30, 0x00000000[r9]
	add 0xFFFFFFFF, r8
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.16_141
.BB.LABEL.16_140:	; bb1262
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.w 0x00000000[r6], r10
	cmp 0x00000001, r10
	bz9 .BB.LABEL.16_139
.BB.LABEL.16_141:	; bb1275
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8266
	st.w r30, 0x00000000[r7]
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.16_143
.BB.LABEL.16_142:	; if_then_bb1291
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r25
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8274
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.16_143:	; if_break_bb1293
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x000041AB, r0, r5
	br9 .BB.LABEL.16_145
.BB.LABEL.16_144:	; bb1294
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8289
	add 0xFFFFFFFF, r5
.BB.LABEL.16_145:	; bb1297
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8285
	ld.w 0x00000000[r29], r6
	cmp r6, r30
	bz9 .BB.LABEL.16_147
.BB.LABEL.16_146:	; bb1297
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.16_144
.BB.LABEL.16_147:	; bb1316
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8291
	addi 0xFFFFFFCF, r26, r0
	bnz9 .BB.LABEL.16_150
.BB.LABEL.16_148:	; bb1321
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_GblPllActCheck), r0, r5
	ld.bu LOWW(#_Mcu_GblPllActCheck)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.16_150
.BB.LABEL.16_149:	; if_then_bb1334
	mov 0x00000000, r30
.BB.LABEL.16_150:	; if_break_bb1336
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8301
	ld.w 0x00000000[r29], r5
	cmp r5, r30
	bz9 .BB.LABEL.16_152
.BB.LABEL.16_151:	; if_then_bb1343
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r25
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8304
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.16_152:	; if_break_bb1347
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	ld.w 0x00000000[r3], r5
	add 0x00000001, r5
.BB.LABEL.16_153:	; if_break_bb1347
	st.w r5, 0x00000000[r3]
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 7212
	andi 0x000000FF, r5, r5
	ld.w 0x00000004[r3], r6
	add r6, r5
	ld.bu 0x00000000[r5], r6
	cmp 0x00000000, r6
	bnz17 .BB.LABEL.16_4
.BB.LABEL.16_154:	; bb1360
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8319
	andi 0x000000FF, r25, r10
	dispose 0x00000008, 0x00000B87, [r31]
_Mcu_ReinitClockConfiguration.1:
	.stack _Mcu_ReinitClockConfiguration.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8595
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8606
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.w 0x00000000[r6], r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r7
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8612
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8616
	ld.bu 0x00000015[r5], r25
	ld.bu 0x0000001B[r5], r7
	mov r25, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8618
	mov r25, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8620
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8625
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.w 0x00000000[r6], r7
	ld.bu 0x00000015[r6], r6
	shl 0x00000003, r6
	add r6, r7
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r6
	st.w r7, LOWW(#_Mcu_GpCkscSetting)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8631
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8635
	ld.bu 0x0000001B[r5], r8
	ld.bu 0x00000016[r5], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8637
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8640
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.bu 0x00000004[r6], r7
	ld.bu 0x00000019[r6], r6
	add r6, r7
	shl 0x00000003, r7
	mov #_Mcu_GstCkscSetting, r6
	add r7, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r7
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8645
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8649
	ld.bu 0x00000017[r5], r25
	ld.bu 0x0000001B[r5], r7
	mov r25, r6
	jarl _Mcu_IsoCkscCheck.1, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8651
	mov r25, r6
	mov r10, r8
	jarl _Mcu_CkscConfigure.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8653
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8655
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r6
	ld.bu 0x00000019[r6], r7
	ld.bu 0x00000017[r6], r8
	add r8, r7
	ld.bu 0x00000004[r6], r6
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8659
	zxb r7
	shl 0x00000003, r7
	mov #_Mcu_GstCkscSetting, r6
	add r7, r6
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r7
	st.w r6, LOWW(#_Mcu_GpCkscSetting)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8663
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8667
	ld.bu 0x0000001B[r5], r8
	ld.bu 0x00000018[r5], r6
	mov 0x00000000, r7
	jarl _Mcu_CkscConfigure.1, r31
.BB.LABEL.17_4:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8685
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_MainOscEnable.1:
	.stack _Mcu_MainOscEnable.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8737
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8755
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8758
	tst1 0x00000000, 0x00000012[r5]
	bz17 .BB.LABEL.18_18
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8762
	ld.bu 0x00000013[r5], r5
	ori 0x00000004, r5, r5
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	st.w r5, 0x00000108[r7]
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r7
	ld.bu 0x00000013[r7], r7
	ori 0x00000004, r7, r7
	mov #_Mcu_GddClkCntlRegRamMirror, r8
	st.w r7, 0x0000000C[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8773
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r7
	ld.w 0x0000000C[r7], r7
	st.w r7, 0x0000010C[r6]
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	ld.w 0x0000000C[r5], r5
	st.w r5, 0x00000010[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8783
	jarl _Mcu_MainOscDefault.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8785
	addi 0x00000000, r10, r25
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_2:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8787
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r5
	ld.w LOWW(#_Mcu_GpClockSetting)[r5], r5
	tst1 0x00000000, 0x00000014[r5]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8790
	ld.w 0x00000118[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8792
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ori 0x00000001, r5, r7
	st.w r7, 0x00000118[r6]
	br9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8804
	st.w r7, 0x00000118[r5]
.BB.LABEL.18_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r5
	st.w r7, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8815
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	br9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8821
	add 0xFFFFFFFF, r5
.BB.LABEL.18_7:	; bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8817
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00000104[r6], r6
	andi 0x00000004, r6, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_9:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8823
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000104[r5], r5
	andi 0x00000004, r5, r0
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r25
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8827
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.18_11:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8843
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_12:	; bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	tst1 0x00000000, 0x00000000[r5]
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_13:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8851
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r25
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r25], r5
	movhi HIGHW1(#_Mcu_GpClockSetting), r0, r6
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r7
	ld.h 0x00000022[r7], r7
	st.h r7, 0x0000000C[r5]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000022[r5], r5
	mov #_Mcu_GddClkMntrReg1RamMirror, r7
	st.h r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8863
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r25], r25
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r5
	ld.h 0x00000020[r5], r5
	st.h r5, 0x00000008[r25]
	ld.w LOWW(#_Mcu_GpClockSetting)[r6], r25
	ld.h 0x00000020[r25], r25
	st.h r25, 0x00000002[r7]
	mov 0x00000005, r25
.BB.LABEL.18_14:	; bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8874
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
	add 0xFFFFFFFF, r25
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.18_16
.BB.LABEL.18_15:	; bb157
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.bu 0x00000014[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.18_14
.BB.LABEL.18_16:	; bb172
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r25
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r25], r25
	ld.bu 0x00000014[r25], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8882
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r5]
	cmp 0x00000001, r25
	setf 0x00000002, r25
	bnz9 .BB.LABEL.18_19
.BB.LABEL.18_17:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8891
	jarl32 _Dem_ReportErrorStatus, r31
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.18_18:	; if_else_bb193
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8907
	jarl _Mcu_MainOscDefault.1, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.18_19:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8917
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_ResumeCpuClock.1:
	.stack _Mcu_ResumeCpuClock.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8964
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8973
	movhi HIGHW1(#_WufReg_BaseAddress), r0, r5
	ld.w LOWW(#_WufReg_BaseAddress)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_WufIsoReg_BaseAddress), r0, r5
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r5], r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_2:	; bb.if_break_bb123_crit_edge
	mov 0x00000000, r25
.BB.LABEL.19_3:	; if_break_bb123
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9064
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.19_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8982
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r25
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r25], r25
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r5
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r5], r5
	ld23.w 0x00009000[r25], r25
	cmp r25, r5
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8986
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r25
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r25], r25
	cmp 0x00000002, r25
	bnz9 .BB.LABEL.19_13
.BB.LABEL.19_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8989
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r25
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r25], r25
	ld.w 0x00000104[r25], r25
.BB.LABEL.19_7:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	andi 0x00000004, r25, r0
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_8:	; if_then_bb31.bb65_crit_edge
	mov 0x00000005, r25
.BB.LABEL.19_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9021
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	movea 0x000000A5, r0, r6
	st23.w r6, 0x00008000[r5]
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r5
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r5], r6
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r7
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r8
	st23.w r6, 0x00009000[r8]
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r5], r6
	not r6, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r8
	st23.w r6, 0x00009000[r8]
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r5], r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r7], r6
	st23.w r5, 0x00009000[r6]
	add 0xFFFFFFFF, r25
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.19_11
.BB.LABEL.19_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld23.w 0x00008004[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.19_9
.BB.LABEL.19_11:	; bb99
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r25
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r25], r25
	ld23.w 0x00008004[r25], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9029
	movhi HIGHW1(#_Mcu_GulCpuClockSetting.2), r0, r5
	ld.w LOWW(#_Mcu_GulCpuClockSetting.2)[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000064), r0, r6
	st.w r5, LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000064)[r6]
	cmp 0x00000001, r25
	setf 0x00000002, r25
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_12:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9039
	jarl32 _Dem_ReportErrorStatus, r31
	br9 .BB.LABEL.19_3
.BB.LABEL.19_13:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 8999
	cmp 0x00000003, r25
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_14:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9002
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r25
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r25], r25
	ld23.w 0x00008004[r25], r25
	br9 .BB.LABEL.19_7
_Mcu_MainOscDefault.1:
	.stack _Mcu_MainOscDefault.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9111
	prepare 0x00000201, 0x00000000
	mov 0x00000005, r5
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9120
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00000000[r6]
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0x00000001, r8
	st.w r8, 0x00000100[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r7
	mov 0xFFFFFFFE, r9
	st.w r9, 0x00000100[r7]
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	st.w r8, 0x00000100[r6]
	add 0xFFFFFFFF, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r6], r6
	ld.w 0x00000004[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.20_1
.BB.LABEL.20_3:	; bb30
	movhi HIGHW1(#_Mcu_WriteProtReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_WriteProtReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	setf 0x00000002, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9127
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9133
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.20_5:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9141
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_WakeUpFactor_Preparation:
	.stack _Mcu_WakeUpFactor_Preparation = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9446
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9452
	jarl32 _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9456
	movhi HIGHW1(#_Mcu_GpConfigPtr), r0, r5
	ld.w LOWW(#_Mcu_GpConfigPtr)[r5], r5
	ld.bu 0x00000011[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9468
	jarl32 _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9471
	jarl32 _SchM_Enter_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9475
	movhi HIGHW1(#_WufReg_BaseAddress), r0, r5
	ld.w LOWW(#_WufReg_BaseAddress)[r5], r6
	mov 0xFFFFFFFF, r7
	st.w r7, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9480
	movhi HIGHW1(#_WufIsoReg_BaseAddress), r0, r6
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r6], r8
	st.w r7, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9495
	ld.w LOWW(#_WufReg_BaseAddress)[r5], r7
	mov 0x82FFFFE7, r8
	st.w r8, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9498
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r6], r7
	movea 0x000001FE, r0, r8
	st.w r8, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9456
	add r25, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9514
	mulh 0x0000000C, r26
	mov #_Mcu_GstModeSetting, r7
	add r26, r7
	ld.w 0x00000000[r7], r8
	ld.w LOWW(#_WufReg_BaseAddress)[r5], r5
	st.w r8, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9520
	ld.w 0x00000004[r7], r5
	ld.w LOWW(#_WufIsoReg_BaseAddress)[r6], r6
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9536
	jarl32 _SchM_Exit_Mcu_MCU_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9540
	movhi HIGHW1(#_Mcu_GblWakeUpPreparation), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_Mcu_GblWakeUpPreparation)[r5]
	dispose 0x00000000, 0x00000301, [r31]
_Mcu_GetVersionInfo:
	.stack _Mcu_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9595
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9602
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x00000010, r0, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9605
	jarl32 _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movea 0x0000003B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9612
	st.h r5, 0x00000000[r6]
	movea 0x00000065, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9614
	st.h r5, 0x00000002[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9616
	st.b r5, 0x00000005[r6]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9618
	st.b r5, 0x00000006[r6]
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9620
	st.b r5, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Mcu_CheckHWConsistency:
	.stack _Mcu_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9678
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9689
	jarl32 _SchM_Enter_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9698
	movhi HIGHW1(#_Mcu_GblDriverStatus), r0, r5
	ld.bu LOWW(#_Mcu_GblDriverStatus)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x0000000F, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x00000065, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9700
	jarl32 _Det_ReportError, r31
	jr .BB.LABEL.23_85
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9707
	cmp 0x00000001, r25
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_else_bb.if_break_bb955_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r25
	jr .BB.LABEL.23_86
.BB.LABEL.23_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9773
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r25
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r25], r25
	ld.hu 0x0000000C[r25], r25
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror+0x00000004), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg0RamMirror+0x00000004)[r5], r5
	cmp r5, r25
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_5:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r25
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r25], r25
	ld.hu 0x00000008[r25], r25
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror+0x00000002), r0, r5
	ld.hu LOWW(#_Mcu_GddClkMntrReg0RamMirror+0x00000002)[r5], r5
	cmp r5, r25
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_6:	; bb40
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r25
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r25], r25
	ld.bu 0x00000000[r25], r25
	movhi HIGHW1(#_Mcu_GddClkMntrReg0RamMirror), r0, r5
	ld.bu LOWW(#_Mcu_GddClkMntrReg0RamMirror)[r5], r5
	cmp r5, r25
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; bb40.if_break_bb_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.23_9
.BB.LABEL.23_8:	; if_then_bb57
	mov 0x00000001, r25
.BB.LABEL.23_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9788
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.hu 0x0000000C[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror+0x00000004), r0, r6
	ld.hu LOWW(#_Mcu_GddClkMntrReg1RamMirror+0x00000004)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_10:	; bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.hu 0x00000008[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror+0x00000002), r0, r6
	ld.hu LOWW(#_Mcu_GddClkMntrReg1RamMirror+0x00000002)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; bb83
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.bu 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg1RamMirror), r0, r6
	ld.bu LOWW(#_Mcu_GddClkMntrReg1RamMirror)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_13
.BB.LABEL.23_12:	; if_then_bb100
	mov 0x00000001, r25
.BB.LABEL.23_13:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9803
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.hu 0x0000000C[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror+0x00000004), r0, r6
	ld.hu LOWW(#_Mcu_GddClkMntrReg2RamMirror+0x00000004)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_16
.BB.LABEL.23_14:	; bb111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.hu 0x00000008[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror+0x00000002), r0, r6
	ld.hu LOWW(#_Mcu_GddClkMntrReg2RamMirror+0x00000002)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_16
.BB.LABEL.23_15:	; bb127
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.bu 0x00000000[r5], r5
	movhi HIGHW1(#_Mcu_GddClkMntrReg2RamMirror), r0, r6
	ld.bu LOWW(#_Mcu_GddClkMntrReg2RamMirror)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_then_bb144
	mov 0x00000001, r25
.BB.LABEL.23_17:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9860
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001800[r6], r6
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	ld.w 0x00000054[r7], r8
	cmp r8, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9863
	cmov 0x0000000A, 0x00000001, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9871
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000108[r5], r5
	ld.w 0x0000000C[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_20
.BB.LABEL.23_18:	; bb163
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x0000010C[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000010), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000010)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_20
.BB.LABEL.23_19:	; bb177
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000118[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000014), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000014)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_21
.BB.LABEL.23_20:	; if_then_bb192
	mov 0x00000001, r25
.BB.LABEL.23_21:	; if_break_bb194
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9898
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000004[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_23
.BB.LABEL.23_22:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9903
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld.w 0x00000018[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000004), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000004)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_24
.BB.LABEL.23_23:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r25
.BB.LABEL.23_24:	; if_break_bb214
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9914
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00008008[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000005C), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000005C)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_26
.BB.LABEL.23_25:	; bb221
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009700[r5], r5
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000088), r0, r6
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000088)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_27
.BB.LABEL.23_26:	; if_then_bb236
	mov 0x00000001, r25
.BB.LABEL.23_27:	; if_break_bb238
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9940
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000024), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000024)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_29
.BB.LABEL.23_28:	; bb242
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001018[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_29:	; bb256
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000030), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000030)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_31
.BB.LABEL.23_30:	; bb260
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001218[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_31:	; bb281
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000003C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000003C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_33
.BB.LABEL.23_32:	; bb285
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001418[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_33:	; bb306
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000048), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000048)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_35
.BB.LABEL.23_34:	; bb310
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001618[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_35:	; bb331
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000050), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000050)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_37
.BB.LABEL.23_36:	; bb335
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001718[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_37:	; bb356
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000090), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000090)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_39
.BB.LABEL.23_38:	; bb360
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009818[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_39:	; bb381
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000098), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000098)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_41
.BB.LABEL.23_40:	; bb385
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009918[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_41:	; bb406
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A0), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A0)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_43
.BB.LABEL.23_42:	; bb410
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009A18[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_43:	; if_else_bb433
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 9975
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000020), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000020)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_45
.BB.LABEL.23_44:	; bb437
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001000[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_45:	; bb451
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000002C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000002C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_47
.BB.LABEL.23_46:	; bb455
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001200[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_47:	; bb476
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000038), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000038)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_49
.BB.LABEL.23_48:	; bb480
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001400[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_49:	; bb501
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000044), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000044)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_51
.BB.LABEL.23_50:	; bb505
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001600[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_51:	; bb526
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000006C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000006C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_53
.BB.LABEL.23_52:	; bb530
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009100[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_53:	; bb551
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000080), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000080)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_55
.BB.LABEL.23_54:	; bb555
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009600[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_55:	; bb576
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000008C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000008C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_57
.BB.LABEL.23_56:	; bb580
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009800[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_57:	; bb601
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000009C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000009C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_59
.BB.LABEL.23_58:	; bb605
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009A00[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_59:	; if_else_bb628
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10012
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000028), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000028)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_61
.BB.LABEL.23_60:	; bb632
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001100[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_61:	; bb646
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000034), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000034)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_63
.BB.LABEL.23_62:	; bb650
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001300[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_63:	; bb671
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000040), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000040)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_65
.BB.LABEL.23_64:	; bb675
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001500[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_65:	; bb696
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000004C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000004C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_67
.BB.LABEL.23_66:	; bb700
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld.w 0x00001700[r6], r6
	cmp r6, r5
	bnz17 .BB.LABEL.23_85
.BB.LABEL.23_67:	; bb721
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000064), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000064)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_69
.BB.LABEL.23_68:	; bb725
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009000[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_69:	; bb746
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000068), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000068)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_71
.BB.LABEL.23_70:	; bb750
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009010[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_71:	; bb771
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000070), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000070)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_73
.BB.LABEL.23_72:	; bb775
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009200[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_73:	; bb796
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000074), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000074)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_75
.BB.LABEL.23_74:	; bb800
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009300[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_75:	; bb821
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000078), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000078)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_77
.BB.LABEL.23_76:	; bb825
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009400[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_77:	; bb846
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x0000007C), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x0000007C)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_79
.BB.LABEL.23_78:	; bb850
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009500[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_79:	; bb871
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x00000094), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x00000094)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_81
.BB.LABEL.23_80:	; bb875
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009900[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_81:	; bb896
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A4), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A4)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_83
.BB.LABEL.23_82:	; bb900
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009B00[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_85
.BB.LABEL.23_83:	; bb921
	movhi HIGHW1(#_Mcu_GddClkCntlRegRamMirror+0x000000A8), r0, r5
	ld.w LOWW(#_Mcu_GddClkCntlRegRamMirror+0x000000A8)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_86
.BB.LABEL.23_84:	; bb925
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	ld23.w 0x00009C00[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.23_86
.BB.LABEL.23_85:	; if_then_bb947
	mov 0x00000001, r25
.BB.LABEL.23_86:	; if_break_bb955
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10082
	jarl32 _SchM_Exit_Mcu_MCU_VARIABLE_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10086
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_Mcu_InitRamMirror.1:
	.stack _Mcu_InitRamMirror.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10167
	movhi HIGHW1(#_Clma0Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r6
	ld.h 0x0000000C[r6], r6
	mov #_Mcu_GddClkMntrReg0RamMirror, r7
	st.h r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10169
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r6
	ld.h 0x00000008[r6], r6
	st.h r6, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10170
	ld.w LOWW(#_Clma0Reg_BaseAddress)[r5], r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10174
	movhi HIGHW1(#_Clma1Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r6
	ld.h 0x0000000C[r6], r6
	mov #_Mcu_GddClkMntrReg1RamMirror, r7
	st.h r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10176
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r6
	ld.h 0x00000008[r6], r6
	st.h r6, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10177
	ld.w LOWW(#_Clma1Reg_BaseAddress)[r5], r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10181
	movhi HIGHW1(#_Clma2Reg_BaseAddress), r0, r5
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	ld.h 0x0000000C[r6], r6
	mov #_Mcu_GddClkMntrReg2RamMirror, r7
	st.h r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10183
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r6
	ld.h 0x00000008[r6], r6
	st.h r6, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10184
	ld.w LOWW(#_Clma2Reg_BaseAddress)[r5], r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10213
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r5
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001800[r6], r6
	mov #_Mcu_GddClkCntlRegRamMirror, r7
	st.w r6, 0x00000054[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10218
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00000108[r6], r6
	st.w r6, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10219
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x0000010C[r6], r6
	st.w r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10220
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00000118[r6], r6
	st.w r6, 0x00000014[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10228
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00000004[r6], r6
	st.w r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10229
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00000018[r6], r6
	st.w r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10233
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00008008[r6], r6
	st.w r6, 0x0000005C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10234
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009700[r6], r6
	st.w r6, 0x00000088[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10243
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001018[r6], r6
	st.w r6, 0x00000024[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10245
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001218[r6], r6
	st.w r6, 0x00000030[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10247
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001418[r6], r6
	st.w r6, 0x0000003C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10249
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001618[r6], r6
	st.w r6, 0x00000048[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10251
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001718[r6], r6
	st.w r6, 0x00000050[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10253
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009818[r6], r6
	st.w r6, 0x00000090[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10255
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009918[r6], r6
	st.w r6, 0x00000098[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10257
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009A18[r6], r6
	st.w r6, 0x000000A0[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10259
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001000[r6], r6
	st.w r6, 0x00000020[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10261
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001200[r6], r6
	st.w r6, 0x0000002C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10263
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001400[r6], r6
	st.w r6, 0x00000038[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10265
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001600[r6], r6
	st.w r6, 0x00000044[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10267
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009100[r6], r6
	st.w r6, 0x0000006C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10270
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009600[r6], r6
	st.w r6, 0x00000080[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10273
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009800[r6], r6
	st.w r6, 0x0000008C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10275
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009A00[r6], r6
	st.w r6, 0x0000009C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10277
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001100[r6], r6
	st.w r6, 0x00000028[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10279
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001300[r6], r6
	st.w r6, 0x00000034[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10281
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001500[r6], r6
	st.w r6, 0x00000040[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10283
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld.w 0x00001700[r6], r6
	st.w r6, 0x0000004C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10285
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009000[r6], r6
	st.w r6, 0x00000064[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10287
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009010[r6], r6
	st.w r6, 0x00000068[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10289
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009200[r6], r6
	st.w r6, 0x00000070[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10291
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009300[r6], r6
	st.w r6, 0x00000074[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10293
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009400[r6], r6
	st.w r6, 0x00000078[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10296
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009500[r6], r6
	st.w r6, 0x0000007C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10299
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009900[r6], r6
	st.w r6, 0x00000094[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10301
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r6
	ld23.w 0x00009B00[r6], r6
	st.w r6, 0x000000A4[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10303
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r5], r5
	ld23.w 0x00009C00[r5], r5
	st.w r5, 0x000000A8[r7]
	jmp [r31]
_Mcu_IsoCkscCheck.1:
	.stack _Mcu_IsoCkscCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10364
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10390
	movhi HIGHW1(#_Mcu_GpCkscSetting), r0, r5
	ld.w LOWW(#_Mcu_GpCkscSetting)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10392
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry.if_break_bb237_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000001, r10
	jr .BB.LABEL.25_44
.BB.LABEL.25_2:	; entry.bb59_crit_edge
	movea 0x0000007F, r0, r7
	br9 .BB.LABEL.25_20
.BB.LABEL.25_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10398
	ld.bu 0x00000000[r5], r8
	addi 0xFFFFFFE1, r8, r0
	bgt9 .BB.LABEL.25_8
.BB.LABEL.25_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE6, r8, r0
	bz9 .BB.LABEL.25_15
.BB.LABEL.25_5:	; bb
	addi 0xFFFFFFE4, r8, r0
	bz9 .BB.LABEL.25_16
.BB.LABEL.25_6:	; bb
	addi 0xFFFFFFE2, r8, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_7:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10408
	andi 0x000000FB, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_8:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD4, r8, r0
	bgt9 .BB.LABEL.25_12
.BB.LABEL.25_9:	; bb
	addi 0xFFFFFFE0, r8, r0
	bz9 .BB.LABEL.25_17
.BB.LABEL.25_10:	; bb
	addi 0xFFFFFFD9, r8, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_11:	; switch_clause_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10414
	andi 0x000000EF, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_12:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFD3, r8, r0
	bz9 .BB.LABEL.25_18
.BB.LABEL.25_13:	; bb
	addi 0xFFFFFFD1, r8, r0
	bnz9 .BB.LABEL.25_19
.BB.LABEL.25_14:	; switch_clause_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10420
	andi 0x000000BF, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_15:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10402
	andi 0x000000FE, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_16:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10405
	andi 0x000000FD, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_17:	; switch_clause_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10411
	andi 0x000000F7, r7, r7
	br9 .BB.LABEL.25_19
.BB.LABEL.25_18:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10417
	andi 0x000000DF, r7, r7
.BB.LABEL.25_19:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10432
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10429
	add 0x00000008, r5
.BB.LABEL.25_20:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10394
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_21:	; bb59.bb229_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.25_43
.BB.LABEL.25_22:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10437
	andi 0x000000FF, r5, r6
	mov 0x00000001, r8
	shl r6, r8
	and r7, r8
	zxb r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10438
	cmp 0x00000007, r8
	bgt9 .BB.LABEL.25_28
.BB.LABEL.25_23:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000001, r8
	bz9 .BB.LABEL.25_35
.BB.LABEL.25_24:	; bb66
	cmp 0x00000002, r8
	bz9 .BB.LABEL.25_36
.BB.LABEL.25_25:	; bb66
	cmp 0x00000004, r8
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_26:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10475
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10477
	ld23.w 0x00009400[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10479
	cmp 0x00000001, r6
	bz9 .BB.LABEL.25_41
.BB.LABEL.25_27:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	cmp 0x00000003, r6
	bz9 .BB.LABEL.25_41
	br9 .BB.LABEL.25_42
.BB.LABEL.25_28:	; bb66
	addi 0xFFFFFFE1, r8, r0
	bgt9 .BB.LABEL.25_32
.BB.LABEL.25_29:	; bb66
	cmp 0x00000008, r8
	bz9 .BB.LABEL.25_37
.BB.LABEL.25_30:	; bb66
	add 0xFFFFFFF0, r8
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_31:	; switch_clause_bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10510
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10512
	ld23.w 0x00009900[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10514
	add 0xFFFFFFFE, r6
	br9 .BB.LABEL.25_40
.BB.LABEL.25_32:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	addi 0xFFFFFFE0, r8, r0
	bz9 .BB.LABEL.25_38
.BB.LABEL.25_33:	; bb66
	addi 0xFFFFFFC0, r8, r0
	bnz9 .BB.LABEL.25_42
.BB.LABEL.25_34:	; switch_clause_bb202
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10543
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10545
	ld23.w 0x00009C00[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_35:	; switch_clause_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10443
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10445
	ld23.w 0x00009200[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_36:	; switch_clause_bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10459
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10461
	ld23.w 0x00009300[r6], r6
	br9 .BB.LABEL.25_39
.BB.LABEL.25_37:	; switch_clause_bb144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10493
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10495
	ld23.w 0x00009500[r6], r6
	br9 .BB.LABEL.25_27
.BB.LABEL.25_38:	; switch_clause_bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10527
	movhi HIGHW1(#_Mcu_ClkCtrlReg_BaseAddress), r0, r6
	ld.w LOWW(#_Mcu_ClkCtrlReg_BaseAddress)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10529
	ld23.w 0x00009B00[r6], r6
.BB.LABEL.25_39:	; switch_clause_bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 0
	add 0xFFFFFFFF, r6
.BB.LABEL.25_40:	; switch_clause_bb179
	cmp 0x00000001, r6
	bh9 .BB.LABEL.25_42
.BB.LABEL.25_41:	; if_then_bb222
	mov 0x00000001, r10
.BB.LABEL.25_42:	; switch_break_bb226
	add 0x00000001, r5
.BB.LABEL.25_43:	; bb229
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10435
	andi 0x000000FF, r5, r6
	cmp 0x00000007, r6
	blt9 .BB.LABEL.25_22
.BB.LABEL.25_44:	; if_break_bb237
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/mcu/src/Mcu.c", 10570
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
