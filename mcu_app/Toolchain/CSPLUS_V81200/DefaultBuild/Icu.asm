#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\icu\src\Icu.c -oDefaultBuild\Icu.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5a76cd41542f4e80a7dac91a4f71fc49eoxedpyk.3lh
#@	compiled at Fri Mar 27 09:50:30 2026

	.file "..\..\Bsw\Mcal\icu\src\Icu.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Icu_GpChannelConfig
	.extern _Icu_GpTimerChannelConfig
	.extern _Icu_GpTAUUnitConfig
	.extern _Icu_GpChannelRamData
	.extern _Icu_GpEdgeCountData
	.extern _Icu_GpTimeStampData
	.extern _Icu_GpSignalMeasurementData
	.extern _Icu_GenModuleMode
	.extern _Icu_GulWakeupSource
	.extern _Icu_GblDriverStatus
	.extern _Icu_GblSyncInitStatus
	.extern _Icu_GblSyncStartStatus
	.extern _Icu_GaaChannelMeasureStatus
	.public _Icu_Init
	.extern _Det_ReportError
	.extern _Icu_HW_Init
	.public _Icu_DeInit
	.extern _Icu_HW_DeInit
	.public _Icu_SetMode
	.extern _Icu_HW_SetMode
	.public _Icu_DisableWakeup
	.extern _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION
	.public _Icu_EnableWakeup
	.public _Icu_CheckWakeup
	.extern _EcuM_SetWakeupEvent
	.public _Icu_SetActivationCondition
	.extern _Icu_HW_SetActivation
	.public _Icu_DisableNotification
	.public _Icu_EnableNotification
	.public _Icu_GetInputState
	.public _Icu_StartTimestamp
	.extern _Icu_HW_StartCountMeasurement
	.extern _SchM_Enter_Icu_ICU_TIMESTAMP_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_TIMESTAMP_DATA_PROTECTION
	.public _Icu_StopTimestamp
	.extern _Icu_HW_StopCountMeasurement
	.public _Icu_GetTimestampIndex
	.public _Icu_ResetEdgeCount
	.extern _Icu_HW_ResetEdgeCount
	.public _Icu_EnableEdgeCount
	.public _Icu_DisableEdgeCount
	.public _Icu_EnableEdgeDetection
	.extern _Icu_HW_EnableEdgeDetection
	.public _Icu_DisableEdgeDetection
	.extern _Icu_HW_DisableEdgeDetection
	.public _Icu_GetEdgeNumbers
	.extern _Icu_HW_GetEdgeNumbers
	.extern _SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION
	.public _Icu_StartSignalMeasurement
	.public _Icu_StopSignalMeasurement
	.public _Icu_GetTimeElapsed
	.extern _SchM_Enter_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION
	.extern _SchM_Exit_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION
	.public _Icu_GetDutyCycleValues
	.public _Icu_GetInputLevel
	.extern _Icu_HW_GetInputLevel
	.public _Icu_GetTAUInCountValue
	.extern _Icu_HW_GetTAUInCountValue
	.public _Icu_SynchronousInit
	.extern _Icu_HW_SynchronousInit
	.public _Icu_SynchronousStart
	.extern _Icu_HW_SynchronousStart
	.public _Icu_SynchronousStop
	.extern _Icu_HW_SynchronousStop
	.public _Icu_SynchronousDeInit
	.extern _Icu_HW_SynchronousDeInit
	.public _Icu_GetVersionInfo
	.public _Icu_CheckHWConsistency
	.extern _Icu_HWCheckConsistency

	.section .text, text
_Icu_Init:
	.stack _Icu_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 614
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 633
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	movea 0x00000017, r0, r9
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 637
	mov r21, r7
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 648
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000D, r9
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 653
	mov r21, r7
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 670
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 677
	ld.w 0x00000000[r20], r2
	mov 0x0EDE8108, r5
	cmp r5, r2
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_7:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 686
	ld.w 0x00000004[r20], r2
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r5
	st.w r2, LOWW(#_Icu_GpChannelConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 693
	ld.w 0x00000010[r20], r2
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	st.w r2, LOWW(#_Icu_GpChannelRamData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 700
	ld.w 0x00000008[r20], r2
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r5
	st.w r2, LOWW(#_Icu_GpTimerChannelConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 702
	ld.w 0x0000000C[r20], r2
	movhi HIGHW1(#_Icu_GpTAUUnitConfig), r0, r5
	st.w r2, LOWW(#_Icu_GpTAUUnitConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 708
	ld.w 0x00000014[r20], r2
	movhi HIGHW1(#_Icu_GpSignalMeasurementData), r0, r5
	st.w r2, LOWW(#_Icu_GpSignalMeasurementData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 713
	ld.w 0x00000018[r20], r2
	movhi HIGHW1(#_Icu_GpTimeStampData), r0, r5
	st.w r2, LOWW(#_Icu_GpTimeStampData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 718
	ld.w 0x0000001C[r20], r2
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r5
	st.w r2, LOWW(#_Icu_GpEdgeCountData)[r5]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 738
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	andi 0x000000FF, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 745
	mov r6, r7
	shl 0x00000002, r7
	add r7, r5
	ld.b 0x00000000[r5], r7
	ori 0x00000001, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 750
	andi 0x000000EF, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 753
	andi 0x000000ED, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 756
	andi 0x000000E9, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 759
	andi 0x000000E1, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 763
	mov #_Icu_GaaChannelMeasureStatus, r5
	add r6, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_9:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 732
	andi 0x000000FF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 767
	jarl _Icu_HW_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 770
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Icu_GblDriverStatus)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 774
	movhi HIGHW1(#_Icu_GenModuleMode), r0, r2
	st.w r0, LOWW(#_Icu_GenModuleMode)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 777
	movhi HIGHW1(#_Icu_GulWakeupSource), r0, r2
	st.w r0, LOWW(#_Icu_GulWakeupSource)[r2]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.1_11:	; if_else_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x000000EF, r0, r9
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 787
	mov r7, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 803
	dispose 0x00000000, 0x00000061, [r31]
_Icu_DeInit:
	.stack _Icu_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 861
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 874
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
	mov 0x00000001, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 877
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 879
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_2:	; if_then_bb13.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 891
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	st.b r0, LOWW(#_Icu_GblDriverStatus)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 900
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	andi 0x000000FF, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 906
	mov r6, r7
	shl 0x00000002, r7
	add r7, r5
	ld.b 0x00000000[r5], r7
	ori 0x00000001, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 911
	andi 0x000000EF, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 913
	andi 0x000000ED, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 915
	andi 0x000000E9, r7, r8
	st.b r8, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 917
	andi 0x000000E1, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 921
	mov #_Icu_GaaChannelMeasureStatus, r5
	add r6, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.2_4:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 894
	andi 0x000000FF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.2_3
.BB.LABEL.2_5:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 925
	jarl _Icu_HW_DeInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_SetMode:
	.stack _Icu_SetMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 993
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1015
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000002, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1018
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1031
	cmp 0x00000001, r20
	bnh9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000F, r9
	mov 0x00000002, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1038
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.3_5:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1109
	cmp 0x00000000, r21
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1119
	mov r20, r6
	jarl _Icu_HW_SetMode, r31
.BB.LABEL.3_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1121
	dispose 0x00000000, 0x00000061, [r31]
_Icu_DisableWakeup:
	.stack _Icu_DisableWakeup = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1182
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1192
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000003, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1195
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1207
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000003, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1210
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.4_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1220
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1226
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	tst1 0x00000006, 0x00000019[r2]
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000003, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1232
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.4_8:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1249
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1256
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1264
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	clr1 0x00000001, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1274
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	not r2, r2
	movhi HIGHW1(#_Icu_GulWakeupSource), r0, r5
	ld.w LOWW(#_Icu_GulWakeupSource)[r5], r6
	and r2, r6
	st.w r6, LOWW(#_Icu_GulWakeupSource)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1284
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.4_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1295
	dispose 0x00000000, 0x00000061, [r31]
_Icu_EnableWakeup:
	.stack _Icu_EnableWakeup = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1355
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1365
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000004, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1368
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1379
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000004, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1382
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.5_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1392
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1399
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	tst1 0x00000006, 0x00000019[r2]
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000004, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1405
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.5_8:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1422
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1428
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1437
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	set1 0x00000001, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1445
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.w 0x00000010[r2], r2
	movhi HIGHW1(#_Icu_GulWakeupSource), r0, r5
	ld.w LOWW(#_Icu_GulWakeupSource)[r5], r6
	or r2, r6
	st.w r6, LOWW(#_Icu_GulWakeupSource)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1454
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.5_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1466
	dispose 0x00000000, 0x00000061, [r31]
_Icu_CheckWakeup:
	.stack _Icu_CheckWakeup = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1524
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1530
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
	movea 0x00000015, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1533
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1542
	movhi HIGHW1(#_Icu_GulWakeupSource), r0, r2
	ld.w LOWW(#_Icu_GulWakeupSource)[r2], r2
	and r6, r2
	cmp r6, r2
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1545
	jarl _EcuM_SetWakeupEvent, r31
.BB.LABEL.6_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1555
	dispose 0x00000000, 0x00000001, [r31]
_Icu_SetActivationCondition:
	.stack _Icu_SetActivationCondition = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1614
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1625
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000005, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1628
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1642
	cmp 0x00000002, r20
	ble9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000C, r9
	mov 0x00000005, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1650
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.7_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1660
	cmp 0x00000007, r21
	bnh9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000005, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1663
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.7_7:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1673
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1677
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r21, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000005, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1683
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.7_10:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1698
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000005, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1702
	mov r21, r6
	mov r20, r7
	jarl _Icu_HW_SetActivation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1708
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1717
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r21
	add r21, r2
	set1 0x00000000, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1725
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.7_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1736
	dispose 0x00000000, 0x00000071, [r31]
_Icu_DisableNotification:
	.stack _Icu_DisableNotification = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1787
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1797
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000006, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1800
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1810
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000006, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1813
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1823
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1828
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r5
	andi 0x00000003, r5, r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb53
	mov 0x0000000B, r9
	mov 0x00000006, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1836
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_9:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1848
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_10:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1852
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000002, 0x00000000[r2]
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x000000F1, r0, r9
	mov 0x00000006, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1858
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.8_12:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1881
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1887
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1896
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000002, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1903
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.8_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1915
	dispose 0x00000000, 0x00000061, [r31]
_Icu_EnableNotification:
	.stack _Icu_EnableNotification = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1968
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1978
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000007, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1981
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1992
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000007, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 1995
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.9_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2005
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2010
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r5
	andi 0x00000003, r5, r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb53
	mov 0x0000000B, r9
	mov 0x00000007, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2018
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.9_9:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2031
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000002, 0x00000000[r2]
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x000000F2, r0, r9
	mov 0x00000007, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2037
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.9_11:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2053
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.9_14
.BB.LABEL.9_12:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2059
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2067
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	set1 0x00000002, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2074
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2081
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	tst1 0x00000006, 0x00000019[r2]
	bz9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2089
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2097
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	set1 0x00000001, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2105
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.9_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2122
	dispose 0x00000000, 0x00000061, [r31]
_Icu_GetInputState:
	.stack _Icu_GetInputState = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2181
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2202
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000008, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2205
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2216
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000008, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2219
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.10_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2230
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2234
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r5
	andi 0x00000003, r5, r0
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_then_bb54
	mov 0x0000000B, r9
	mov 0x00000008, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2242
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.10_9:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2257
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2263
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2271
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	ld.bu 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2279
	ori 0x00000001, r20, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2286
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2271
	andi 0x00000001, r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2286
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.10_11:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2300
	dispose 0x00000000, 0x00000061, [r31]
_Icu_StartTimestamp:
	.stack _Icu_StartTimestamp = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2370
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2390
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	mov r6, r23
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r24
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2393
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2402
	cmp 0x00000007, r23
	bnh9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2405
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_5:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2416
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000A, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2420
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_7:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2435
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000E, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2439
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_9:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2452
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000018, r0, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2456
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_11:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2466
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.11_14
.BB.LABEL.11_12:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2472
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r23, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.11_14
.BB.LABEL.11_13:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x00000009, r8
	mov 0x00000000, r24
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2478
	mov r24, r7
	jarl _Det_ReportError, r31
.BB.LABEL.11_14:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2496
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2501
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	mulhi 0x00000006, r23, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2504
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2508
	mulh 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2504
	movhi HIGHW1(#_Icu_GpTimeStampData), r0, r5
	ld.w LOWW(#_Icu_GpTimeStampData)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2508
	add r2, r5
	st.w r22, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2510
	st.h r21, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2512
	st.h r0, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2513
	st.h r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2515
	st.h r20, 0x0000000A[r5]
	mov 0x00000009, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2518
	mov r23, r6
	jarl _Icu_HW_StartCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2523
	jarl _SchM_Enter_Icu_ICU_TIMESTAMP_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2530
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2538
	shl 0x00000002, r23
	add r23, r2
	set1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2546
	jarl _SchM_Exit_Icu_ICU_TIMESTAMP_DATA_PROTECTION, r31
.BB.LABEL.11_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2558
	dispose 0x00000000, 0x00000479, [r31]
_Icu_StopTimestamp:
	.stack _Icu_StopTimestamp = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2616
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2628
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000A, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2631
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2641
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000A, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2644
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.12_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2654
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.12_12
.BB.LABEL.12_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2660
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000A, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2666
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.12_8:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2677
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.12_12
.BB.LABEL.12_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2682
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2688
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2693
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000003, 0x00000000[r2]
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_10:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000015, r0, r9
	mov 0x0000000A, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2699
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.12_11:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2710
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.12_12:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2725
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.12_14
.BB.LABEL.12_13:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2729
	mov r20, r6
	jarl _Icu_HW_StopCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2734
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2741
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2748
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2755
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.12_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2767
	dispose 0x00000000, 0x00000061, [r31]
_Icu_GetTimestampIndex:
	.stack _Icu_GetTimestampIndex = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2827
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2845
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000B, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2848
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2858
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2861
	mov r21, r7
	mov r8, r9
	jarl _Det_ReportError, r31
.BB.LABEL.13_5:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2871
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_6:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2878
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2884
	mov r21, r7
	mov r8, r9
	jarl _Det_ReportError, r31
.BB.LABEL.13_8:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2900
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.13_13
.BB.LABEL.13_9:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2905
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	mulh 0x00000006, r20
	add r20, r2
	ld.bu 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2911
	jarl _SchM_Enter_Icu_ICU_TIMESTAMP_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2919
	mulhi 0x0000000C, r20, r2
	movhi HIGHW1(#_Icu_GpTimeStampData), r0, r5
	ld.w LOWW(#_Icu_GpTimeStampData)[r5], r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; if_then_bb48.if_break_bb72_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2924
	mulh 0x0000000C, r20
	add r20, r5
	ld.hu 0x00000006[r5], r20
.BB.LABEL.13_12:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2935
	jarl _SchM_Exit_Icu_ICU_TIMESTAMP_DATA_PROTECTION, r31
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_13:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 2949
	dispose 0x00000000, 0x00000061, [r31]
_Icu_ResetEdgeCount:
	.stack _Icu_ResetEdgeCount = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3005
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3017
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000C, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3020
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.14_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3030
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000C, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3033
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.14_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3043
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3049
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000C, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3055
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.14_8:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3070
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3074
	mov r20, r6
	jarl _Icu_HW_ResetEdgeCount, r31
.BB.LABEL.14_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3088
	dispose 0x00000000, 0x00000061, [r31]
_Icu_EnableEdgeCount:
	.stack _Icu_EnableEdgeCount = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3149
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3162
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000D, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3165
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3175
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000D, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3178
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.15_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3188
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.15_8
.BB.LABEL.15_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3193
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.15_8
.BB.LABEL.15_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000D, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3199
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.15_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3214
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3218
	mov r20, r6
	jarl _Icu_HW_StartCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3223
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3230
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3236
	shl 0x00000002, r20
	add r20, r2
	set1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3242
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.15_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3255
	dispose 0x00000000, 0x00000061, [r31]
_Icu_DisableEdgeCount:
	.stack _Icu_DisableEdgeCount = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3314
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3328
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000E, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3331
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3340
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000E, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3344
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.16_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3354
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.16_8
.BB.LABEL.16_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3358
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000E, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3364
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.16_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3379
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.16_10
.BB.LABEL.16_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000E, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3383
	mov r20, r6
	jarl _Icu_HW_StopCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3388
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3396
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3403
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3410
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.16_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3422
	dispose 0x00000000, 0x00000061, [r31]
_Icu_EnableEdgeDetection:
	.stack _Icu_EnableEdgeDetection = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3480
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3486
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
.BB.LABEL.17_2:	; if_then_bb
	movea 0x00000016, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3552
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.17_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3497
	cmp 0x00000007, r20
	bh9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r5
	andi 0x00000003, r5, r0
	bz9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; if_then_bb29
	mov 0x0000000B, r9
	br9 .BB.LABEL.17_2
.BB.LABEL.17_6:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3515
	ld.bu 0x00000019[r2], r2
	mov r20, r6
	andi 0x00000030, r2, r0
	bnz9 .BB.LABEL.17_8
.BB.LABEL.17_7:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3521
	jarl _Icu_HW_EnableEdgeDetection, r31
	br9 .BB.LABEL.17_9
.BB.LABEL.17_8:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000016, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3526
	jarl _Icu_HW_StartCountMeasurement, r31
.BB.LABEL.17_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3534
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3541
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	set1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3548
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Icu_DisableEdgeDetection:
	.stack _Icu_DisableEdgeDetection = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3608
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3620
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x00000017, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3623
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3633
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000017, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3636
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.18_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3646
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3652
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000017, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3658
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.18_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3674
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.18_13
.BB.LABEL.18_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3681
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	mov r20, r6
	andi 0x00000030, r2, r0
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3687
	jarl _Icu_HW_DisableEdgeDetection, r31
	br9 .BB.LABEL.18_12
.BB.LABEL.18_11:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000017, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3693
	jarl _Icu_HW_StopCountMeasurement, r31
.BB.LABEL.18_12:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3702
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3709
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3716
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3723
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.18_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3735
	dispose 0x00000000, 0x00000061, [r31]
_Icu_GetEdgeNumbers:
	.stack _Icu_GetEdgeNumbers = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3792
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3809
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb
	movea 0x00000014, r0, r9
	mov 0x0000000F, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3812
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3822
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000F, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3825
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.19_5:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3835
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_6:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3841
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	mov 0x0000000F, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3847
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.19_8:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3863
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.19_10
.BB.LABEL.19_9:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3866
	mov r20, r6
	jarl _Icu_HW_GetEdgeNumbers, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3870
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	mulh 0x00000006, r20
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3882
	ld.bu 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3876
	jarl _SchM_Enter_Icu_ICU_EDGECOUNT_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3882
	shl 0x00000002, r20
	movhi HIGHW1(#_Icu_GpEdgeCountData), r0, r2
	ld.w LOWW(#_Icu_GpEdgeCountData)[r2], r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3889
	ld.hu 0x00000002[r2], r20
	jarl _SchM_Exit_Icu_ICU_EDGECOUNT_DATA_PROTECTION, r31
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_10:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3903
	dispose 0x00000000, 0x00000061, [r31]
_Icu_StartSignalMeasurement:
	.stack _Icu_StartSignalMeasurement = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3965
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3977
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x00000013, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3980
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3990
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000013, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 3993
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.20_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4003
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.20_8
.BB.LABEL.20_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4009
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000013, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4015
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.20_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4030
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.20_10
.BB.LABEL.20_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000013, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4034
	mov r20, r6
	jarl _Icu_HW_StartCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4039
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4046
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4055
	shl 0x00000002, r20
	add r20, r2
	ld.b 0x00000000[r2], r5
	ori 0x00000001, r5, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4063
	ori 0x00000009, r5, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4070
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.20_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4082
	dispose 0x00000000, 0x00000061, [r31]
_Icu_StopSignalMeasurement:
	.stack _Icu_StopSignalMeasurement = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4142
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4153
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb
	movea 0x00000014, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4156
	mov r21, r7
	mov r8, r9
	jarl _Det_ReportError, r31
.BB.LABEL.21_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4166
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4169
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.21_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4179
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4186
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4192
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.21_8:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4207
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4211
	mov r20, r6
	jarl _Icu_HW_StopCountMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4216
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4223
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4230
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000003, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4237
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
.BB.LABEL.21_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4249
	dispose 0x00000000, 0x00000061, [r31]
_Icu_GetTimeElapsed:
	.stack _Icu_GetTimeElapsed = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4313
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4340
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4343
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.22_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4353
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4356
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.22_5:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4366
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_6:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4371
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r20, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4377
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.22_8:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4393
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.22_17
.BB.LABEL.22_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4400
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4405
	mulhi 0x00000006, r20, r2
	add r2, r21
	ld.bu 0x00000005[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4411
	jarl _SchM_Enter_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4427
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000004, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4418
	ld.bu 0x00000004[r21], r2
	movhi HIGHW1(#_Icu_GpSignalMeasurementData), r0, r5
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4427
	bnz9 .BB.LABEL.22_11
.BB.LABEL.22_10:	; if_then_bb51.if_break_bb120_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.22_16
.BB.LABEL.22_11:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4433
	andi 0x00000003, r22, r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.22_13
.BB.LABEL.22_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	andi 0x00000003, r22, r0
	bnz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4439
	mulh 0x0000000C, r2
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4442
	st.w r0, 0x00000000[r5]
	br9 .BB.LABEL.22_15
.BB.LABEL.22_14:	; if_else_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4450
	mulh 0x0000000C, r2
	add r2, r5
	ld.w 0x00000004[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4451
	st.w r0, 0x00000004[r5]
.BB.LABEL.22_15:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4456
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000004, 0x00000000[r2]
.BB.LABEL.22_16:	; if_break_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4469
	jarl _SchM_Exit_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION, r31
	mov r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.22_17:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4485
	dispose 0x00000000, 0x00000071, [r31]
_Icu_GetDutyCycleValues:
	.stack _Icu_GetDutyCycleValues = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4547
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4569
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4572
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.23_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4582
	cmp 0x00000007, r21
	bnh9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4585
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.23_5:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4595
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.23_13
.BB.LABEL.23_6:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4600
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	mulhi 0x0000001C, r21, r5
	add r5, r2
	ld.bu 0x00000019[r2], r2
	andi 0x00000003, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4606
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.23_8:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4615
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.23_11
.BB.LABEL.23_9:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4620
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4626
	mulhi 0x00000006, r21, r5
	add r5, r2
	tst1 0x00000002, 0x00000005[r2]
	bnz9 .BB.LABEL.23_11
.BB.LABEL.23_10:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4633
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.23_11:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4648
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.23_13
.BB.LABEL.23_12:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000A, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r22
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4652
	mov r22, r7
	jarl _Det_ReportError, r31
.BB.LABEL.23_13:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4673
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.23_19
.BB.LABEL.23_14:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4679
	movhi HIGHW1(#_Icu_GpTimerChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpTimerChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4684
	mulhi 0x00000006, r21, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4696
	ld.bu 0x00000004[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4690
	jarl _SchM_Enter_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4696
	movhi HIGHW1(#_Icu_GpSignalMeasurementData), r0, r2
	ld.w LOWW(#_Icu_GpSignalMeasurementData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4706
	st.w r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4709
	st.w r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4714
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r5
	ld.w LOWW(#_Icu_GpChannelRamData)[r5], r5
	mov r21, r6
	shl 0x00000002, r6
	add r5, r6
	tst1 0x00000004, 0x00000000[r6]
	bz9 .BB.LABEL.23_18
.BB.LABEL.23_15:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov r21, r6
	shl 0x00000002, r6
	add r5, r6
	tst1 0x00000004, 0x00000004[r6]
	bz9 .BB.LABEL.23_18
.BB.LABEL.23_16:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4723
	mulhi 0x0000000C, r22, r5
	add r2, r5
	ld.w 0x00000004[r5], r6
	add 0x00000004, r5
	cmp 0x00000000, r6
	bz9 .BB.LABEL.23_18
.BB.LABEL.23_17:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4728
	mulh 0x0000000C, r22
	add r22, r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4732
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4736
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4741
	shl 0x00000002, r21
	movhi HIGHW1(#_Icu_GpChannelRamData), r0, r2
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r5
	add r21, r5
	clr1 0x00000004, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4742
	ld.w LOWW(#_Icu_GpChannelRamData)[r2], r2
	add r2, r21
	clr1 0x00000004, 0x00000004[r21]
.BB.LABEL.23_18:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4761
	jarl _SchM_Exit_Icu_ICU_SIGNALMEASURE_DATA_PROTECTION, r31
.BB.LABEL.23_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4773
	dispose 0x00000000, 0x00000071, [r31]
_Icu_GetInputLevel:
	.stack _Icu_GetInputLevel = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4823
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4840
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x00000018, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4843
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.24_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4853
	cmp 0x00000007, r20
	bnh9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x0000000B, r9
	movea 0x00000018, r0, r8
	mov 0x00000000, r21
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4856
	mov r21, r7
	jarl _Det_ReportError, r31
.BB.LABEL.24_5:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4866
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4869
	mov r20, r6
	jarl _Icu_HW_GetInputLevel, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.24_7:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4879
	dispose 0x00000000, 0x00000061, [r31]
_Icu_GetTAUInCountValue:
	.stack _Icu_GetTAUInCountValue = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4928
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4945
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4938
	movhi HIGHW1(#_Icu_GpChannelConfig), r0, r2
	ld.w LOWW(#_Icu_GpChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4945
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
.BB.LABEL.25_2:	; if_then_bb
	mov 0x00000000, r20
	movea 0x00000019, r0, r8
	movea 0x0000007A, r0, r6
	mov r20, r7
	jarl _Det_ReportError, r31
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4983
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.25_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4955
	cmp 0x00000007, r6
	bh9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	ld.bu 0x00000019[r2], r2
	andi 0x00000030, r2, r0
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; if_then_bb30
	mov 0x0000000B, r9
	br9 .BB.LABEL.25_2
.BB.LABEL.25_6:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 4974
	jarl _Icu_HW_GetTAUInCountValue, r31
	dispose 0x00000000, 0x00000041, [r31]
_Icu_SynchronousInit:
	.stack _Icu_SynchronousInit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5036
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5045
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x0000001A, r0, r8
	mov 0x00000000, r20
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5048
	mov r20, r7
	jarl _Det_ReportError, r31
.BB.LABEL.26_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5060
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	ld.bu LOWW(#_Icu_GblSyncInitStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_5
.BB.LABEL.26_4:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000017, r0, r9
	movea 0x0000001A, r0, r8
	mov 0x00000000, r20
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5063
	mov r20, r7
	jarl _Det_ReportError, r31
.BB.LABEL.26_5:	; if_break_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5073
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.26_7
.BB.LABEL.26_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5080
	jarl _Icu_HW_SynchronousInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5082
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Icu_GblSyncInitStatus)[r2]
.BB.LABEL.26_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5091
	dispose 0x00000000, 0x00000041, [r31]
_Icu_SynchronousStart:
	.stack _Icu_SynchronousStart = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5148
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5157
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	ld.bu LOWW(#_Icu_GblSyncInitStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; bb.if_break_bb_crit_edge
	mov 0x00000001, r20
	br9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x0000001B, r0, r8
	mov 0x00000000, r20
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5161
	mov r20, r7
	jarl _Det_ReportError, r31
.BB.LABEL.27_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5171
	movhi HIGHW1(#_Icu_GblSyncStartStatus), r0, r2
	ld.bu LOWW(#_Icu_GblSyncStartStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_6
.BB.LABEL.27_5:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x000000F3, r0, r9
	movea 0x0000001B, r0, r8
	mov 0x00000000, r20
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5174
	mov r20, r7
	jarl _Det_ReportError, r31
.BB.LABEL.27_6:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5184
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5192
	jarl _Icu_HW_SynchronousStart, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5194
	movhi HIGHW1(#_Icu_GblSyncStartStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Icu_GblSyncStartStatus)[r2]
.BB.LABEL.27_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5203
	dispose 0x00000000, 0x00000041, [r31]
_Icu_SynchronousStop:
	.stack _Icu_SynchronousStop = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5262
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5271
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	ld.bu LOWW(#_Icu_GblSyncInitStatus)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_then_bb
	movea 0x00000014, r0, r9
	movea 0x0000001C, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5275
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5277
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.28_3:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5293
	jarl _Icu_HW_SynchronousStop, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5295
	movhi HIGHW1(#_Icu_GblSyncStartStatus), r0, r2
	st.b r0, LOWW(#_Icu_GblSyncStartStatus)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Icu_SynchronousDeInit:
	.stack _Icu_SynchronousDeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5357
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5361
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	ld.bu LOWW(#_Icu_GblSyncInitStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5369
	jarl _Icu_HW_SynchronousDeInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5371
	movhi HIGHW1(#_Icu_GblSyncInitStatus), r0, r2
	st.b r0, LOWW(#_Icu_GblSyncInitStatus)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.29_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
	movea 0x0000001D, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5378
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_GetVersionInfo:
	.stack _Icu_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5431
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5437
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000019, r0, r9
	movea 0x00000012, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5440
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5448
	st.h r2, 0x00000000[r6]
	movea 0x0000007A, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5451
	st.h r2, 0x00000002[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5453
	st.b r2, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5455
	st.b r2, 0x00000006[r6]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5457
	st.b r2, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Icu_CheckHWConsistency:
	.stack _Icu_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5513
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5522
	movhi HIGHW1(#_Icu_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Icu_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	movea 0x00000014, r0, r9
	br9 .BB.LABEL.31_5
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5530
	cmp 0x00000001, r20
	bh9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_else_bb.if_break_bb23_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.31_6
.BB.LABEL.31_4:	; if_then_bb20
	movea 0x000000F4, r0, r9
.BB.LABEL.31_5:	; if_then_bb20
	movea 0x0000001E, r0, r8
	mov 0x00000000, r7
	movea 0x0000007A, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.31_6:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5542
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5548
	jarl _SchM_Enter_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5551
	mov r20, r6
	jarl _Icu_HWCheckConsistency, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5555
	jarl _SchM_Exit_Icu_ICU_CHANNEL_DATA_PROTECTION, r31
	mov r20, r10
.BB.LABEL.31_8:	; if_break_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/icu/src/Icu.c", 5566
	dispose 0x00000000, 0x00000041, [r31]
