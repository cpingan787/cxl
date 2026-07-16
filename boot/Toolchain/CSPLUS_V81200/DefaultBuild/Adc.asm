#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\adc\src\Adc.c -oDefaultBuild\Adc.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c9eeffcaed694fd5b4b59e46db9e7ceebk5ce352.ngx
#@	compiled at Thu Jul 16 13:41:52 2026

	.file "..\..\Bsw\Mcal\adc\src\Adc.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Adc_GpHwUnitConfig
	.extern _Adc_GpSgUnitConfig
	.extern _Adc_GpGroupConfig
	.extern _Adc_GpHWGroupTrigg
	.extern _Adc_GpHwUnitIndex
	.extern _Adc_GpSgUnitIndex
	.extern _Adc_GpChannelToGroup
	.extern _Adc_GpGroupRamData
	.extern _Adc_GpChannelToDisableEnable
	.extern _Adc_GpSgUnitRamData
	.extern _Adc_GpRunTimeData
	.extern _Adc_GucMaxSwTriggGroups
	.extern _Adc_GucNoOfGroups
	.public _Adc_Init
	.extern _Adc_HwInit
	.public _Adc_DeInit
	.extern _Adc_HwDeInit
	.public _Adc_StartGroupConversion
	.extern _Adc_HwStartGroupConversion
	.public _Adc_StopGroupConversion
	.extern _Adc_HwStopGroupConversion
	.public _Adc_ReadGroup
	.extern _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION
	.extern _Adc_StateTransition
	.extern _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION
	.public _Adc_EnableHardwareTrigger
	.extern _Adc_HwEnableHardwareTrigger
	.public _Adc_DisableHardwareTrigger
	.extern _Adc_HwDisableHardwareTrigger
	.public _Adc_EnableGroupNotification
	.public _Adc_DisableGroupNotification
	.public _Adc_GetGroupStatus
	.public _Adc_GetStreamLastPointer
	.public _Adc_SetupResultBuffer
	.public _Adc_DisableChannel
	.extern _Adc_IntDisableEnableChannel
	.public _Adc_EnableChannel
	.public _Adc_CusGetADCAnDRmAddr
	.extern _Adc_IntCusGetADCAnDRmAddr
	.public _Adc_CusSetSamplingClock
	.extern _Adc_HwCusSetSamplingClock
	.public _Adc_GetVersionInfo
	.public _Adc_CheckHWConsistency
	.extern _Adc_HwCheckHWConsistency

	.section .text, text
_Adc_Init:
	.stack _Adc_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 684
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 756
	ld.w 0x00000000[r6], r5
	mov 0x0EDEC108, r7
	cmp r7, r5
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 762
	ld.w 0x00000004[r6], r5
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r7
	st.w r5, LOWW(#_Adc_GpHwUnitConfig)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 763
	ld.w 0x00000008[r6], r5
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r7
	st.w r5, LOWW(#_Adc_GpSgUnitConfig)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 764
	ld.w 0x0000000C[r6], r5
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r7
	st.w r5, LOWW(#_Adc_GpGroupConfig)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 796
	ld.w 0x00000010[r6], r5
	movhi HIGHW1(#_Adc_GpHWGroupTrigg), r0, r7
	st.w r5, LOWW(#_Adc_GpHWGroupTrigg)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 798
	ld.w 0x00000014[r6], r5
	movhi HIGHW1(#_Adc_GpChannelToGroup), r0, r7
	st.w r5, LOWW(#_Adc_GpChannelToGroup)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 799
	ld.w 0x00000018[r6], r5
	movhi HIGHW1(#_Adc_GpHwUnitIndex), r0, r7
	st.w r5, LOWW(#_Adc_GpHwUnitIndex)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 800
	ld.w 0x0000001C[r6], r5
	movhi HIGHW1(#_Adc_GpSgUnitIndex), r0, r7
	st.w r5, LOWW(#_Adc_GpSgUnitIndex)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 804
	ld.w 0x00000020[r6], r5
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r7
	st.w r5, LOWW(#_Adc_GpGroupRamData)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 805
	ld.w 0x00000024[r6], r5
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r7
	st.w r5, LOWW(#_Adc_GpSgUnitRamData)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 806
	ld.w 0x00000028[r6], r5
	movhi HIGHW1(#_Adc_GpRunTimeData), r0, r7
	st.w r5, LOWW(#_Adc_GpRunTimeData)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 807
	ld.b 0x00000030[r6], r5
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r7
	st.b r5, LOWW(#_Adc_GucMaxSwTriggGroups)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 808
	ld.b 0x00000031[r6], r5
	movhi HIGHW1(#_Adc_GucNoOfGroups), r0, r7
	st.b r5, LOWW(#_Adc_GucNoOfGroups)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 835
	ld.w 0x0000002C[r6], r5
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r7
	st.w r5, LOWW(#_Adc_GpChannelToDisableEnable)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 839
	ld.bu 0x00000032[r6], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 844
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r7
	ld.w LOWW(#_Adc_GpChannelToDisableEnable)[r7], r7
	andi 0x000000FF, r6, r8
	add r8, r7
	mov 0x00000001, r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r6
.BB.LABEL.1_3:	; bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 839
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 896
	jarl32 _Adc_HwInit, r31
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 922
	dispose 0x00000000, 0x00000001, [r31]
_Adc_DeInit:
	.stack _Adc_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 977
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 996
	jarl32 _Adc_HwDeInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_StartGroupConversion:
	.stack _Adc_StartGroupConversion = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1067
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1173
	jarl32 _Adc_HwStartGroupConversion, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_StopGroupConversion:
	.stack _Adc_StopGroupConversion = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1250
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1338
	jarl32 _Adc_HwStopGroupConversion, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1343
	mulhi 0x00000014, r25, r5
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r6
	ld.w LOWW(#_Adc_GpGroupRamData)[r6], r7
	add r5, r7
	st.w r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1348
	ld.w LOWW(#_Adc_GpGroupRamData)[r6], r6
	add r5, r6
	st.b r0, 0x00000008[r6]
	dispose 0x00000000, 0x00000201, [r31]
_Adc_ReadGroup:
	.stack _Adc_ReadGroup = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1433
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1497
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r5
	ld.w LOWW(#_Adc_GpGroupConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1531
	mulhi 0x00000014, r6, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1500
	mov r6, r9
	shl 0x00000004, r9
	add r9, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1531
	ld.b 0x0000000D[r5], r9
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r10
	ld.w LOWW(#_Adc_GpGroupRamData)[r10], r10
	add r8, r10
	ld.b 0x0000000D[r10], r8
	sub r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1558
	ld.w 0x00000000[r10], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1604
	ld.bu 0x0000000A[r5], r25
	mov 0x00000000, r5
	mov r6, r26
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1618
	andi 0x000000FF, r5, r6
	add r6, r6
	mov r7, r10
	add r6, r10
	add r8, r6
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1623
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1607
	andi 0x000000FF, r5, r6
	andi 0x000000FF, r9, r10
	cmp r6, r10
	bh9 .BB.LABEL.5_1
.BB.LABEL.5_2:	; bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1631
	jarl32 _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1636
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r5], r5
	mulhi 0x00000014, r25, r6
	add r6, r5
	ld.w 0x0000000C[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1641
	mov r26, r6
	jarl32 _Adc_StateTransition, r31
.BB.LABEL.5_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1650
	jarl32 _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1655
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r26, r6
	add r6, r5
	mov 0x00000001, r6
	st.b r6, 0x0000000F[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1670
	dispose 0x00000000, 0x00000301, [r31]
_Adc_EnableHardwareTrigger:
	.stack _Adc_EnableHardwareTrigger = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1737
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1841
	jarl32 _Adc_HwEnableHardwareTrigger, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_DisableHardwareTrigger:
	.stack _Adc_DisableHardwareTrigger = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1914
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1989
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r7
	add r7, r5
	ld.bu 0x00000009[r5], r5
	cmp 0x00000001, r5
	mov r6, r25
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1992
	mov r25, r6
	jarl32 _Adc_HwDisableHardwareTrigger, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 1998
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r25, r6
	add r6, r5
	st.b r0, 0x00000009[r5]
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2013
	dispose 0x00000000, 0x00000201, [r31]
_Adc_EnableGroupNotification:
	.stack _Adc_EnableGroupNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2071
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2120
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r6
	add r6, r5
	mov 0x00000001, r6
	st.b r6, 0x00000008[r5]
	jmp [r31]
_Adc_DisableGroupNotification:
	.stack _Adc_DisableGroupNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2180
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2226
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r6
	add r6, r5
	st.b r0, 0x00000008[r5]
	jmp [r31]
_Adc_GetGroupStatus:
	.stack _Adc_GetGroupStatus = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2284
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2343
	jarl32 _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2348
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r25, r6
	add r6, r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2353
	jarl32 _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2364
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_Adc_GetStreamLastPointer:
	.stack _Adc_GetStreamLastPointer = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2429
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2489
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2495
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r8
	add r5, r8
	ld.w 0x00000004[r8], r8
	cmp 0x00000002, r8
	mov r6, r25
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 0
	mulhi 0x00000014, r25, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2507
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r25, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2516
	ld.bu 0x00000010[r6], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2501
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r8
	ld.w LOWW(#_Adc_GpGroupConfig)[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2516
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2512
	mulhi 0x00000014, r25, r9
	add r9, r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2520
	mov r6, r9
	add r9, r9
	add r5, r9
	add 0xFFFFFFFE, r9
	st.w r9, 0x00000000[r7]
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2528
	mov r25, r5
	shl 0x00000004, r5
	add r5, r8
	tst1 0x00000002, 0x0000000C[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2532
	cmov 0x00000002, 0x00000001, r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2541
	jarl32 _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2545
	mov r25, r6
	jarl32 _Adc_StateTransition, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2550
	jarl32 _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2554
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r25, r6
	add r6, r5
	mov 0x00000001, r6
	st.b r6, 0x0000000F[r5]
	mov r26, r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.11_5:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2564
	dispose 0x00000000, 0x00000301, [r31]
_Adc_SetupResultBuffer:
	.stack _Adc_SetupResultBuffer = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2616
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2704
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r6
	add r6, r5
	st.w r7, 0x00000000[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 2724
	jmp [r31]
_Adc_DisableChannel:
	.stack _Adc_DisableChannel = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3174
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3232
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r5
	ld.w LOWW(#_Adc_GpGroupConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3234
	mulhi 0x00000014, r6, r8
	mov r6, r9
	shl 0x00000004, r9
	add r9, r5
	ld.bu 0x0000000D[r5], r5
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r9
	ld.w LOWW(#_Adc_GpGroupRamData)[r9], r9
	add r8, r9
	ld.bu 0x0000000D[r9], r8
	sub r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3237
	zxb r5
	cmp 0x00000002, r5
	blt9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3251
	jarl32 _Adc_IntDisableEnableChannel, r31
.BB.LABEL.13_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3261
	dispose 0x00000000, 0x00000001, [r31]
_Adc_EnableChannel:
	.stack _Adc_EnableChannel = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3314
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3373
	jarl32 _Adc_IntDisableEnableChannel, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_CusGetADCAnDRmAddr:
	.stack _Adc_CusGetADCAnDRmAddr = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3901
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3952
	jarl32 _Adc_IntCusGetADCAnDRmAddr, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 3961
	dispose 0x00000000, 0x00000001, [r31]
_Adc_CusSetSamplingClock:
	.stack _Adc_CusSetSamplingClock = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4204
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4251
	jarl32 _Adc_HwCusSetSamplingClock, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_GetVersionInfo:
	.stack _Adc_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4526
	movea 0x0000003B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4541
	st.h r5, 0x00000000[r6]
	movea 0x0000007B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4543
	st.h r5, 0x00000002[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4545
	st.b r5, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4547
	st.b r5, 0x00000006[r6]
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4549
	st.b r5, 0x00000007[r6]
	jmp [r31]
_Adc_CheckHWConsistency:
	.stack _Adc_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4611
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4629
	cmp 0x00000001, r6
	mov r6, r25
	bh9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4644
	jarl32 _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4647
	mov r25, r6
	jarl32 _Adc_HwCheckHWConsistency, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4652
	jarl32 _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	mov r25, r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/adc/src/Adc.c", 4656
	dispose 0x00000000, 0x00000201, [r31]
