#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\adc\src\Adc.c -oDefaultBuild\Adc.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c53b960ebbe54392a4935a9cf3f1502bgyjbyfho.bix
#@	compiled at Fri Mar 27 09:50:24 2026

	.file "..\..\Bsw\Mcal\adc\src\Adc.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 684
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 756
	ld.w 0x00000000[r6], r2
	mov 0x0EDEC108, r5
	cmp r5, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 762
	ld.w 0x00000004[r6], r2
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r5
	st.w r2, LOWW(#_Adc_GpHwUnitConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 763
	ld.w 0x00000008[r6], r2
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r5
	st.w r2, LOWW(#_Adc_GpSgUnitConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 764
	ld.w 0x0000000C[r6], r2
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r5
	st.w r2, LOWW(#_Adc_GpGroupConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 796
	ld.w 0x00000010[r6], r2
	movhi HIGHW1(#_Adc_GpHWGroupTrigg), r0, r5
	st.w r2, LOWW(#_Adc_GpHWGroupTrigg)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 798
	ld.w 0x00000014[r6], r2
	movhi HIGHW1(#_Adc_GpChannelToGroup), r0, r5
	st.w r2, LOWW(#_Adc_GpChannelToGroup)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 799
	ld.w 0x00000018[r6], r2
	movhi HIGHW1(#_Adc_GpHwUnitIndex), r0, r5
	st.w r2, LOWW(#_Adc_GpHwUnitIndex)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 800
	ld.w 0x0000001C[r6], r2
	movhi HIGHW1(#_Adc_GpSgUnitIndex), r0, r5
	st.w r2, LOWW(#_Adc_GpSgUnitIndex)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 804
	ld.w 0x00000020[r6], r2
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	st.w r2, LOWW(#_Adc_GpGroupRamData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 805
	ld.w 0x00000024[r6], r2
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r5
	st.w r2, LOWW(#_Adc_GpSgUnitRamData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 806
	ld.w 0x00000028[r6], r2
	movhi HIGHW1(#_Adc_GpRunTimeData), r0, r5
	st.w r2, LOWW(#_Adc_GpRunTimeData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 807
	ld.b 0x00000030[r6], r2
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r5
	st.b r2, LOWW(#_Adc_GucMaxSwTriggGroups)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 808
	ld.b 0x00000031[r6], r2
	movhi HIGHW1(#_Adc_GucNoOfGroups), r0, r5
	st.b r2, LOWW(#_Adc_GucNoOfGroups)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 835
	ld.w 0x0000002C[r6], r2
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r5
	st.w r2, LOWW(#_Adc_GpChannelToDisableEnable)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 839
	ld.bu 0x00000032[r6], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 844
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r6
	ld.w LOWW(#_Adc_GpChannelToDisableEnable)[r6], r6
	andi 0x000000FF, r5, r7
	add r7, r6
	mov 0x00000001, r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.1_3:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 839
	andi 0x000000FF, r5, r6
	cmp r2, r6
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 896
	jarl _Adc_HwInit, r31
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 922
	dispose 0x00000000, 0x00000001, [r31]
_Adc_DeInit:
	.stack _Adc_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 977
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 996
	jarl _Adc_HwDeInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_StartGroupConversion:
	.stack _Adc_StartGroupConversion = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1067
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1173
	jarl _Adc_HwStartGroupConversion, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_StopGroupConversion:
	.stack _Adc_StopGroupConversion = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1250
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1338
	jarl _Adc_HwStopGroupConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1343
	mulhi 0x00000014, r20, r2
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r6
	add r2, r6
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1348
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	add r2, r5
	st.b r0, 0x00000008[r5]
	dispose 0x00000000, 0x00000041, [r31]
_Adc_ReadGroup:
	.stack _Adc_ReadGroup = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1433
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1497
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1531
	mulhi 0x00000014, r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1500
	mov r6, r8
	shl 0x00000004, r8
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1531
	ld.b 0x0000000D[r2], r8
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r9
	ld.w LOWW(#_Adc_GpGroupRamData)[r9], r9
	add r5, r9
	ld.b 0x0000000D[r9], r5
	sub r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1558
	ld.w 0x00000000[r9], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1604
	ld.bu 0x0000000A[r2], r20
	mov 0x00000000, r2
	mov r6, r21
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1618
	andi 0x000000FF, r2, r6
	add r6, r6
	mov r7, r9
	add r6, r9
	add r5, r6
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1623
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1607
	andi 0x000000FF, r2, r6
	andi 0x000000FF, r8, r9
	cmp r6, r9
	bh9 .BB.LABEL.5_1
.BB.LABEL.5_2:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1631
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1636
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1641
	mov r21, r6
	jarl _Adc_StateTransition, r31
.BB.LABEL.5_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1650
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1655
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r21, r5
	add r5, r2
	mov 0x00000001, r5
	st.b r5, 0x0000000F[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1670
	dispose 0x00000000, 0x00000061, [r31]
_Adc_EnableHardwareTrigger:
	.stack _Adc_EnableHardwareTrigger = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1737
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1841
	jarl _Adc_HwEnableHardwareTrigger, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_DisableHardwareTrigger:
	.stack _Adc_DisableHardwareTrigger = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1914
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1989
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.bu 0x00000009[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1992
	mov r20, r6
	jarl _Adc_HwDisableHardwareTrigger, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 1998
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	st.b r0, 0x00000009[r2]
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2013
	dispose 0x00000000, 0x00000041, [r31]
_Adc_EnableGroupNotification:
	.stack _Adc_EnableGroupNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2071
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2120
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	mov 0x00000001, r5
	st.b r5, 0x00000008[r2]
	jmp [r31]
_Adc_DisableGroupNotification:
	.stack _Adc_DisableGroupNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2180
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2226
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	st.b r0, 0x00000008[r2]
	jmp [r31]
_Adc_GetGroupStatus:
	.stack _Adc_GetGroupStatus = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2284
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2343
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2348
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2353
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2364
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Adc_GetStreamLastPointer:
	.stack _Adc_GetStreamLastPointer = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2429
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2489
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2495
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r5
	add r2, r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000002, r5
	mov r6, r20
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 0
	mulhi 0x00000014, r20, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2507
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2516
	ld.bu 0x00000010[r5], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2501
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r6
	ld.w LOWW(#_Adc_GpGroupConfig)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2516
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2512
	mulhi 0x00000014, r20, r8
	add r8, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2520
	mov r5, r8
	add r8, r8
	add r2, r8
	add 0xFFFFFFFE, r8
	st.w r8, 0x00000000[r7]
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2528
	mov r20, r2
	shl 0x00000004, r2
	add r2, r6
	tst1 0x00000002, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2532
	cmov 0x00000002, 0x00000001, r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2541
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2545
	mov r20, r6
	jarl _Adc_StateTransition, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2550
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2554
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	mov 0x00000001, r5
	st.b r5, 0x0000000F[r2]
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_5:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2564
	dispose 0x00000000, 0x00000061, [r31]
_Adc_SetupResultBuffer:
	.stack _Adc_SetupResultBuffer = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2616
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2704
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	st.w r7, 0x00000000[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 2724
	jmp [r31]
_Adc_DisableChannel:
	.stack _Adc_DisableChannel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3174
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3232
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3234
	mulhi 0x00000014, r6, r5
	mov r6, r8
	shl 0x00000004, r8
	add r8, r2
	ld.bu 0x0000000D[r2], r2
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r8
	ld.w LOWW(#_Adc_GpGroupRamData)[r8], r8
	add r5, r8
	ld.bu 0x0000000D[r8], r5
	sub r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3237
	zxb r2
	cmp 0x00000002, r2
	blt9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3251
	jarl _Adc_IntDisableEnableChannel, r31
.BB.LABEL.13_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3261
	dispose 0x00000000, 0x00000001, [r31]
_Adc_EnableChannel:
	.stack _Adc_EnableChannel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3314
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3373
	jarl _Adc_IntDisableEnableChannel, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_CusGetADCAnDRmAddr:
	.stack _Adc_CusGetADCAnDRmAddr = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3901
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3952
	jarl _Adc_IntCusGetADCAnDRmAddr, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 3961
	dispose 0x00000000, 0x00000001, [r31]
_Adc_CusSetSamplingClock:
	.stack _Adc_CusSetSamplingClock = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4204
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4251
	jarl _Adc_HwCusSetSamplingClock, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_GetVersionInfo:
	.stack _Adc_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4526
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4541
	st.h r2, 0x00000000[r6]
	movea 0x0000007B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4543
	st.h r2, 0x00000002[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4545
	st.b r2, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4547
	st.b r2, 0x00000006[r6]
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4549
	st.b r2, 0x00000007[r6]
	jmp [r31]
_Adc_CheckHWConsistency:
	.stack _Adc_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4611
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4629
	cmp 0x00000001, r6
	mov r6, r20
	bh9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4644
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4647
	mov r20, r6
	jarl _Adc_HwCheckHWConsistency, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4652
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc.c", 4656
	dispose 0x00000000, 0x00000041, [r31]
