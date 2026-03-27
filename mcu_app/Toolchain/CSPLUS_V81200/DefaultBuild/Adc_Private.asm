#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\adc\src\Adc_Private.c -oDefaultBuild\Adc_Private.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7d8706b579a04927abde4f1086e2a9e3vlrl2s1c.h21
#@	compiled at Fri Mar 27 09:50:28 2026

	.file "..\..\Bsw\Mcal\adc\src\Adc_Private.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Adc_GaaConfReg_BaseAddress
	.extern _Adc_GaaVirChReg_BaseAddress
	.extern _Adc_GaaSGReg_BaseAddress
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
	.extern _Adc_GaaRamMirrorAdcConfReg
	.extern _Adc_GaaRamMirrorAdcVirChReg
	.extern _Adc_GaaRamMirrorAdcSGReg
	.extern _Adc_GucMaxSwTriggGroups
	.extern _Adc_GucNoOfGroups
	.public _Adc_HwInit
	.extern _Dem_ReportErrorStatus
	.public _Adc_HwDeInit
	.public _Adc_HwStartGroupConversion
	.extern _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION
	.extern _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION
	.public _Adc_HwStopGroupConversion
	.public _Adc_HwEnableHardwareTrigger
	.public _Adc_HwDisableHardwareTrigger
	.public _Adc_PushToQueue
	.public _Adc_PopFromQueue
	.public _Adc_Isr
	.public _Adc_GroupCompleteMode
	.public _Adc_ConfigureGroupForConversion
	.public _Adc_StateTransition
	.public _Adc_EnableHWGroup
	.public _Adc_DisableHWGroup
	.public _Adc_SearchnDelete
	.public _Adc_IcrInterruptBit
	.public _Adc_ClearPendingInterrupt
	.public _Adc_IntDisableEnableChannel
	.public _Adc_IsrConfigureGroupForConversion
	.public _Adc_IntCusGetADCAnDRmAddr
	.public _Adc_HaltScanGroup
	.public _Adc_HwCusSetSamplingClock
	.public _Adc_InitRamMirror
	.public _Adc_HwCheckHWConsistency
	.public _Adc_HaltADConversion
	.public _Adc_SaveRegAndHaltADConversion
	.public _Adc_WriteBackRegforADConversion

	.section .text, text
_Adc_HwInit:
	.stack _Adc_HwInit = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1590
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1675
	jarl _Adc_InitRamMirror, r31
	mov 0x00000000, r20
	mov r20, r21
	jr .BB.LABEL.1_11
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1870
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1873
	mov r21, r2
	mul 0x00000014, r2, r0
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1874
	ld.bu 0x00000000[r2], r23
	mov r23, r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1877
	mov r23, r6
	jarl _Adc_HaltADConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1880
	st.w r0, 0x00000240[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1881
	ld.w 0x00000240[r24], r2
	andi 0x0000001C, r2, r0
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1889
	mov r21, r2
	mul 0x00000014, r2, r0
	add r22, r2
	ld.w 0x00000008[r2], r5
	st.w r5, 0x00000210[r24]
	mulhi 0x00000028, r23, r5
	mov #_Adc_GaaRamMirrorAdcConfReg, r6
	add r5, r6
	ld.w 0x00000008[r2], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1892
	ld.w 0x00000008[r2], r2
	ld.w 0x00000210[r24], r5
	andi 0x000000B3, r5, r5
	cmp r2, r5
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_5:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1897
	mov r21, r2
	mul 0x00000014, r2, r0
	add r2, r22
	ld.w 0x0000000C[r22], r2
	st.w r2, 0x0000028C[r24]
	mulhi 0x00000028, r23, r2
	mov #_Adc_GaaRamMirrorAdcConfReg, r5
	add r2, r5
	ld.w 0x0000000C[r22], r2
	st.w r2, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1900
	ld.w 0x0000000C[r22], r2
	ld.w 0x0000028C[r24], r5
	zxb r5
	cmp r2, r5
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_7:	; if_break_bb79
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1906
	st.w r2, 0x00000250[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1911
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mov r21, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.bu 0x00000010[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1919
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r6], r6
	andi 0x000000FF, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1923
	mul 0x00000014, r7, r0
	add r7, r6
	ld.w 0x00000008[r6], r6
	ld.b 0x00000000[r6], r7
	ori 0x00000080, r7, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1926
	add 0x00000001, r5
	add 0x00000001, r20
.BB.LABEL.1_9:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1913
	cmp r5, r2
	bh9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r21
.BB.LABEL.1_11:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 1864
	cmp 0x00000002, r21
	bl17 .BB.LABEL.1_1
.BB.LABEL.1_12:	; bb118.bb138_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2217
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2223
	mov r2, r6
	mul 0x0000000C, r6, r0
	add r6, r5
	st.b r0, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2224
	st.b r0, 0x00000007[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2226
	st.b r0, 0x00000008[r5]
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2227
	st.b r6, 0x00000004[r5]
	add 0x00000001, r2
.BB.LABEL.1_14:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2211
	cmp 0x00000002, r2
	bl9 .BB.LABEL.1_13
.BB.LABEL.1_15:	; bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2244
	movhi HIGHW1(#_Adc_GucNoOfGroups), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2246
	ld.bu LOWW(#_Adc_GucNoOfGroups)[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2252
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r6
	ld.w LOWW(#_Adc_GpGroupRamData)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2256
	mov r5, r7
	mul 0x00000014, r7, r0
	add r7, r6
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2259
	st.b r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2269
	st.b r0, 0x00000009[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2276
	st.b r0, 0x0000000A[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2278
	st.b r0, 0x0000000B[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2281
	st.b r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2286
	st.b r0, 0x0000000C[r6]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2289
	st.b r7, 0x0000000F[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2292
	st.b r0, 0x0000000D[r6]
	add 0x00000001, r5
.BB.LABEL.1_17:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2246
	cmp r5, r2
	bh9 .BB.LABEL.1_16
.BB.LABEL.1_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2375
	dispose 0x00000000, 0x00000479, [r31]
_Adc_HwDeInit:
	.stack _Adc_HwDeInit = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2428
	prepare 0x00000779, 0x00000000
	mov 0x00000000, r20
	mov r20, r21
	jr .BB.LABEL.2_18
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2516
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2520
	mov r20, r2
	mul 0x00000014, r2, r0
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2525
	ld.bu 0x00000001[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2529
	mov r23, r24
	shl 0x00000002, r24
	mov #_Adc_GaaSGReg_BaseAddress, r5
	add r5, r24
	ld.w 0x00000000[r24], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2522
	ld.bu 0x00000000[r2], r25
	mov r25, r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r6
	add r6, r2
	ld.w 0x00000000[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2530
	ld.w 0x00000008[r5], r2
	andi 0x0000003C, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2536
	st.w r2, 0x00000008[r5]
	mov r23, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2541
	ld.w 0x00000008[r5], r5
	andi 0x0000003D, r5, r5
	cmp r5, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2545
	ld.w 0x00000004[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2546
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2548
	st.w r5, 0x00000008[r2]
	mov r23, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2551
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_5:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2555
	ld.w 0x00000008[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2556
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2558
	st.w r5, 0x00000008[r2]
	shl 0x00000004, r23
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r23
	st.w r5, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2561
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_7:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2581
	mov r25, r6
	jarl _Adc_HaltADConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2588
	st.w r0, 0x00000240[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2589
	ld.w 0x00000240[r26], r2
	andi 0x0000001C, r2, r0
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_9:	; if_break_bb132
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2597
	st.w r2, 0x00000250[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2634
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mov r20, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.bu 0x00000010[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2642
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r6], r6
	andi 0x000000FF, r21, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2647
	mul 0x00000014, r7, r0
	add r7, r6
	ld.w 0x00000008[r6], r6
	ld.b 0x00000000[r6], r7
	ori 0x00000080, r7, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2650
	add 0x00000001, r5
	add 0x00000001, r21
.BB.LABEL.2_11:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2636
	cmp r5, r2
	bh9 .BB.LABEL.2_10
.BB.LABEL.2_12:	; bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2669
	mov r25, r2
	shl 0x00000002, r2
	mov #_Adc_GaaVirChReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2668
	mov r20, r2
	mul 0x00000014, r2, r0
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2670
	ld.bu 0x00000011[r22], r22
	mov 0x00000000, r24
	br9 .BB.LABEL.2_16
.BB.LABEL.2_13:	; bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2675
	andi 0x000000FF, r24, r2
	shl 0x00000002, r2
	mov r23, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	mulhi 0x000000C8, r25, r6
	mov #_Adc_GaaRamMirrorAdcVirChReg, r7
	add r6, r7
	add r2, r7
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2679
	ld.w 0x00000000[r5], r2
	andi 0x000001FF, r2, r0
	bz9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_15:	; if_break_bb204
	add 0x00000001, r24
.BB.LABEL.2_16:	; bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2670
	andi 0x000000FF, r24, r2
	cmp r2, r22
	bh9 .BB.LABEL.2_13
.BB.LABEL.2_17:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r20
.BB.LABEL.2_18:	; bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2511
	cmp 0x00000002, r20
	bl17 .BB.LABEL.2_1
.BB.LABEL.2_19:	; bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2699
	movhi HIGHW1(#_Adc_GucNoOfGroups), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2701
	ld.bu LOWW(#_Adc_GucNoOfGroups)[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2706
	mov r5, r6
	mul 0x00000014, r6, r0
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r7
	ld.w LOWW(#_Adc_GpGroupRamData)[r7], r8
	add r6, r8
	st.w r0, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2711
	ld.w LOWW(#_Adc_GpGroupRamData)[r7], r7
	add r6, r7
	st.b r0, 0x00000008[r7]
	add 0x00000001, r5
.BB.LABEL.2_21:	; bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2701
	cmp r5, r2
	bh9 .BB.LABEL.2_20
.BB.LABEL.2_22:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2800
	dispose 0x00000000, 0x00000779, [r31]
_Adc_HwStartGroupConversion:
	.stack _Adc_HwStartGroupConversion = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2864
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2892
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2896
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	mov r20, r5
	shl 0x00000004, r5
	add r5, r2
	ld.bu 0x0000000A[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2898
	mulhi 0x00000014, r5, r6
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r7
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3123
	ld.bu 0x00000012[r7], r6
	shl 0x00000002, r6
	mov #_Adc_GaaSGmConvStatusMask.2, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2957
	ld.bu 0x00000009[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2960
	mulhi 0x00000014, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2957
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2960
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2961
	ld.bu 0x00000000[r6], r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2912
	mulhi 0x0000000C, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2904
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r8
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 2912
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3123
	ld.bu 0x00000004[r6], r6
	ld.w 0x00000214[r2], r2
	ld.w 0x00000000[r7], r7
	tst r7, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mulhi 0x0000000C, r5, r2
	add r8, r2
	ld.bu 0x00000008[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3131
	mulh 0x0000000C, r5
	add r5, r8
	ld.bu 0x00000006[r8], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp r20, r6
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3134
	mov r20, r6
	jarl _Adc_PushToQueue, r31
	br9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_else_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3148
	mulh 0x0000000C, r5
	add r5, r8
	mov 0x00000001, r2
	st.b r2, 0x00000008[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3149
	mov r20, r6
	jarl _Adc_ConfigureGroupForConversion, r31
.BB.LABEL.3_6:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3166
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Adc_HwStopGroupConversion:
	.stack _Adc_HwStopGroupConversion = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3234
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3277
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3281
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	mov r20, r5
	shl 0x00000004, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3291
	ld.bu 0x0000000A[r2], r21
	mulhi 0x00000014, r21, r5
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3310
	mulhi 0x0000000C, r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3307
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r7
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r7], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3310
	add r22, r5
	ld.bu 0x00000004[r5], r5
	cmp r5, r20
	ld.bu 0x00000009[r2], r23
	ld.bu 0x00000012[r6], r24
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3314
	mov r20, r6
	jarl _Adc_HaltScanGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3320
	mulhi 0x0000000C, r21, r20
	add r22, r20
	st.b r0, 0x00000008[r20]
	add 0x00000008, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3593
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r24, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3598
	mov r21, r6
	jarl _Adc_IcrInterruptBit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3600
	mov r23, r6
	mov r24, r7
	jarl _Adc_ClearPendingInterrupt, r31
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3612
	mulhi 0x0000000C, r21, r2
	add r2, r22
	ld.bu 0x00000006[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3615
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3617
	mov r21, r6
	jarl _Adc_PopFromQueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3619
	mov r10, r6
	jarl _Adc_IsrConfigureGroupForConversion, r31
	br9 .BB.LABEL.4_7
.BB.LABEL.4_5:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3636
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	ld.bu 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3642
	mov r20, r6
	jarl _Adc_SearchnDelete, r31
.BB.LABEL.4_7:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3655
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	dispose 0x00000000, 0x00000479, [r31]
_Adc_HwEnableHardwareTrigger:
	.stack _Adc_HwEnableHardwareTrigger = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3719
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3741
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3745
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3748
	mov r20, r5
	shl 0x00000004, r5
	add r5, r2
	ld.bu 0x0000000A[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3752
	mulhi 0x00000014, r5, r6
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r7
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3759
	ld.bu 0x00000012[r7], r6
	shl 0x00000002, r6
	mov #_Adc_GaaSGmConvStatusMask.2, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3756
	ld.bu 0x00000009[r2], r2
	mulhi 0x00000014, r2, r2
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3757
	ld.bu 0x00000000[r6], r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3754
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3759
	ld.w 0x00000214[r2], r2
	ld.w 0x00000000[r7], r7
	tst r7, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mulh 0x0000000C, r5
	add r5, r6
	ld.bu 0x00000008[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3763
	mov r20, r6
	jarl _Adc_EnableHWGroup, r31
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3857
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Adc_HwDisableHardwareTrigger:
	.stack _Adc_HwDisableHardwareTrigger = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3918
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3934
	jarl _SchM_Enter_Adc_ADC_RAMDATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3939
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3942
	mov r20, r5
	shl 0x00000004, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3945
	ld.bu 0x0000000A[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3948
	mulhi 0x0000000C, r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3945
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3948
	add r22, r2
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3950
	cmp r2, r20
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3953
	mov r20, r6
	jarl _Adc_DisableHWGroup, r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3963
	mulhi 0x0000000C, r21, r2
	add r22, r2
	ld.bu 0x00000006[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3966
	mulhi 0x0000000C, r21, r2
	add r2, r22
	mov 0x00000001, r2
	st.b r2, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3968
	mov r21, r6
	jarl _Adc_PopFromQueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3970
	mov r10, r6
	jarl _Adc_IsrConfigureGroupForConversion, r31
.BB.LABEL.6_4:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 3984
	jarl _SchM_Exit_Adc_ADC_RAMDATA_PROTECTION, r31
	dispose 0x00000000, 0x00000071, [r31]
_Adc_PushToQueue:
	.stack _Adc_PushToQueue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4041
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4060
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4075
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4056
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r7
	ld.w LOWW(#_Adc_GpGroupConfig)[r7], r7
	mov r6, r8
	shl 0x00000004, r8
	add r8, r7
	ld.bu 0x0000000A[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4062
	mulhi 0x00000014, r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4072
	mulhi 0x0000000C, r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4065
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r10
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4072
	add r10, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4075
	ld.bu 0x00000007[r9], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4072
	add 0x00000007, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4058
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r12
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r12], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4062
	add r8, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4075
	cmp 0x00000000, r5
	ld.bu 0x00000011[r12], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4062
	ld.w 0x00000004[r12], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4075
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4079
	st.w r12, 0x00000000[r2]
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4088
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r6, r12
	add r12, r2
	mov 0x00000001, r12
	st.b r12, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4096
	mulh 0x0000000C, r7
	add r7, r10
	ld.bu 0x00000006[r10], r2
	add 0x00000006, r10
	cmp 0x00000001, r2
	bh9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4102
	add r11, r8
	st.b r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4105
	ld.b 0x00000000[r9], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r9]
.BB.LABEL.7_4:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4160
	ld.bu 0x00000000[r9], r2
	cmp r2, r5
	bh9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4163
	st.b r2, 0x00000000[r10]
	jmp [r31]
.BB.LABEL.7_6:	; if_else_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4168
	st.b r2, 0x00000000[r10]
	jmp [r31]
_Adc_PopFromQueue:
	.stack _Adc_PopFromQueue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4228
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4240
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4242
	mulhi 0x00000014, r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4246
	mulhi 0x0000000C, r6, r7
	add r2, r7
	ld.b 0x00000007[r7], r8
	add 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4242
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r9
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r9], r9
	add r5, r9
	ld.w 0x00000004[r9], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4268
	ld.bu 0x00000000[r5], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4262
	add 0xFFFFFFFF, r8
	mov 0x00000000, r9
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4274
	andi 0x000000FF, r9, r11
	add r5, r11
	ld.b 0x00000001[r11], r12
	st.b r12, 0x00000000[r11]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4277
	add 0x00000001, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4270
	andi 0x000000FF, r9, r11
	andi 0x000000FF, r8, r12
	cmp r12, r11
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_2:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4287
	ld.bu 0x00000000[r7], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4290
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4291
	mulh 0x0000000C, r6
	add r6, r2
	add 0x00000006, r2
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4294
	st.b r0, 0x00000000[r2]
	br9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4299
	st.b r5, 0x00000000[r2]
.BB.LABEL.8_6:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4308
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r10, r5
	add r5, r2
	st.b r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4311
	jmp [r31]
_Adc_Isr:
	.stack _Adc_Isr = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4371
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4384
	movhi HIGHW1(#_Adc_GpHwUnitIndex), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitIndex)[r2], r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4412
	ld.bu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4386
	mulh 0x00000003, r6
	add r7, r6
	movhi HIGHW1(#_Adc_GpSgUnitIndex), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitIndex)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4389
	ld.bu 0x00000000[r5], r5
	mulh 0x0000000C, r5
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 4412
	ld.bu 0x00000004[r6], r6
	mov r2, r7
	jarl _Adc_GroupCompleteMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_Adc_GroupCompleteMode:
	.stack _Adc_GroupCompleteMode = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 5887
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 5949
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 5954
	mov r6, r2
	shl 0x00000004, r2
	add r20, r2
	ld.bu 0x0000000A[r2], r5
	add 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6024
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r8], r8
	mulhi 0x00000014, r7, r7
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6041
	ld.bu 0x00000000[r8], r7
	shl 0x00000002, r7
	mov #_Adc_GaaVirChReg_BaseAddress, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6016
	mov r5, r8
	shl 0x00000003, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6012
	movhi HIGHW1(#_Adc_GpRunTimeData), r0, r9
	ld.w LOWW(#_Adc_GpRunTimeData)[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6016
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6042
	ld.bu 0x00000004[r8], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6016
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6000
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r11
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r11], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 5990
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r12
	ld.w LOWW(#_Adc_GpGroupRamData)[r12], r21
	mov 0x00000000, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6042
	mov r6, r22
	mov r6, r23
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6045
	mov r23, r13
	shl 0x00000004, r13
	add r20, r13
	ld.w 0x00000004[r13], r13
	add r12, r13
	shl 0x00000002, r13
	add r7, r13
	ld.w 0x00000200[r13], r13
	st.w r13, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6117
	andi 0x000000FF, r12, r13
	add r13, r13
	add r8, r13
	mov r3, r14
	ld.h 0x00000000[r14], r14
	st.h r14, 0x00000000[r13]
	add 0x00000001, r12
.BB.LABEL.10_2:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6042
	cmp r12, r10
	bh9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6122
	mov r5, r7
	shl 0x00000003, r7
	add r7, r9
	ld.bu 0x00000007[r9], r7
	addi 0x00000001, r7, r8
	ld.bu 0x00000006[r9], r10
	cmp r10, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6131
	cmov 0x00000002, 0x00000001, r8, r7
	st.b r7, 0x00000007[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6132
	mulhi 0x00000014, r22, r8
	add r21, r8
	st.b r7, 0x00000010[r8]
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6144
	st.w r7, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6254
	mov r23, r7
	shl 0x00000004, r7
	add r20, r7
	tst1 0x00000000, 0x0000000C[r7]
	bz9 .BB.LABEL.10_8
.BB.LABEL.10_4:	; if_else_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6262
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r7
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r7], r7
	cmp r7, r6
	bnc9 .BB.LABEL.10_8
.BB.LABEL.10_5:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6548
	mulhi 0x0000000C, r5, r6
	add r11, r6
	ld.bu 0x00000006[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6554
	ld.bu 0x00000000[r2], r6
	jarl _Adc_PopFromQueue, r31
	mov r10, r6
	jarl _Adc_IsrConfigureGroupForConversion, r31
	br9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; if_else_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6561
	mulh 0x0000000C, r5
	add r5, r11
	st.b r0, 0x00000008[r11]
.BB.LABEL.10_8:	; if_break_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6647
	mulhi 0x00000014, r22, r2
	add r2, r21
	ld.bu 0x00000008[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov r23, r2
	shl 0x00000004, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6651
	shl 0x00000004, r23
	add r23, r20
	ld.w 0x00000000[r20], r2
	jarl [r2], r31
.BB.LABEL.10_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6658
	dispose 0x00000004, 0x00000079, [r31]
_Adc_ConfigureGroupForConversion:
	.stack _Adc_ConfigureGroupForConversion = 276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6725
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFF98, r3, r3
	mov 0x00000000, r2
	mov r6, r20
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6801
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	movea 0x00000070, r3, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x000000A4, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6802
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x0000003C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6804
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6807
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.11_2:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6798
	andi 0x000000FF, r2, r5
	cmp 0x0000000D, r5
	blt9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6813
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6828
	mulhi 0x00000014, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6816
	mov r20, r22
	shl 0x00000004, r22
	add r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6828
	ld.bu 0x0000000D[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6822
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6828
	add r5, r2
	ld.bu 0x0000000D[r2], r5
	sub r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6820
	ld.bu 0x0000000A[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6834
	mov r24, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6824
	movhi HIGHW1(#_Adc_GpRunTimeData), r0, r6
	ld.w LOWW(#_Adc_GpRunTimeData)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6834
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6867
	ld.bu 0x00000009[r22], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6820
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6834
	st.b r23, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6836
	ld.b 0x00000008[r22], r7
	st.b r7, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6839
	st.b r0, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6842
	st.b r0, 0x00000007[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6844
	ld.w 0x00000000[r2], r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6846
	st.b r0, 0x0000000E[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6848
	st.b r6, 0x0000000F[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6850
	st.b r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6854
	mulhi 0x0000000C, r24, r2
	add r5, r2
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r6
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6862
	cmp r7, r20
	setf 0x00000009, r7
	st.w r7, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6828
	add 0x0000000D, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6867
	mulhi 0x00000014, r25, r2
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r7
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r7], r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6869
	ld.bu 0x00000000[r7], r26
	mov r26, r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r7
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6875
	mulhi 0x00000014, r24, r7
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r8], r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6880
	ld.bu 0x00000000[r8], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6882
	mov r27, r7
	shl 0x00000002, r7
	mov #_Adc_GaaSGReg_BaseAddress, r9
	add r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7005
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r6], r6
	cmp r6, r20
	ld.bu 0x00000012[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6882
	ld.w 0x00000000[r9], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 6869
	ld.w 0x00000000[r2], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7005
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb53.if_break_bb162_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movea 0x00000010, r0, r2
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7013
	mov r20, r2
	shl 0x00000004, r2
	add r21, r2
	ld.bu 0x0000000C[r2], r2
	andi 0x00000001, r2, r2
	shl 0x00000002, r2
	mov #_Adc_GaaOperationMask.1, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	ori 0x00000010, r2, r2
.BB.LABEL.11_6:	; if_break_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7070
	ld.w 0x00000008[r28], r6
	addi 0x00000008, r28, r8
	cmp r6, r2
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_break_bb162.if_break_bb200_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r30
	mov 0x00000001, r2
	br9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_else_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7077
	st.w r8, 0x00000070[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7078
	st.w r2, 0x000000A4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7080
	mov r27, r30
	shl 0x00000004, r30
	mov #_Adc_GaaRamMirrorAdcSGReg, r2
	add r30, r2
	st.w r2, 0x0000003C[r3]
	movea 0x0000003D, r0, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7084
	st.w r30, 0x00000008[r3]
	mov 0x00000001, r30
	mov 0x00000000, r2
.BB.LABEL.11_9:	; if_else_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7097
	mulhi 0x0000000C, r24, r2
	add r2, r5
	st.b r20, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7259
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r24, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7296
	mov r25, r6
	jarl _Adc_ClearPendingInterrupt, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7298
	mov r24, r6
	jarl _Adc_IcrInterruptBit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7300
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r24, r5
	add r5, r2
	ld.w 0x00000008[r2], r2
	ld.h 0x00000000[r2], r2
	syncp
.BB.LABEL.11_11:	; if_break_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7481
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mulhi 0x00000014, r25, r5
	add r5, r2
	ld.bu 0x00000001[r2], r24
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7486
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_14
.BB.LABEL.11_12:	; bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r2
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r2], r2
	cmp r2, r20
	bnc9 .BB.LABEL.11_14
.BB.LABEL.11_13:	; bb236.if_break_bb434_crit_edge
	mov 0x00000000, r29
	jr .BB.LABEL.11_25
.BB.LABEL.11_14:	; if_then_bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7497
	mov r24, r25
	shl 0x00000002, r25
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7491
	ld.w 0x00000214[r29], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7497
	ld.w 0x00000000[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000D8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7501
	ld.w 0x00000004[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000DC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7503
	ld.w 0x00000008[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000E0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7509
	ld.w 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7510
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7515
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7520
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; if_then_bb310
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_16:	; if_break_bb312
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7525
	ld.w 0x00000004[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7526
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7531
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7535
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_18
.BB.LABEL.11_17:	; if_then_bb342
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_18:	; if_break_bb344
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7540
	ld.w 0x00000008[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7541
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7546
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7550
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_20
.BB.LABEL.11_19:	; if_then_bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_20:	; if_break_bb376
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7569
	mov r26, r6
	jarl _Adc_HaltADConversion, r31
	mov 0x00000000, r25
	br9 .BB.LABEL.11_24
.BB.LABEL.11_21:	; bb378
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7579
	andi 0x000000FF, r25, r2
	shl 0x00000002, r2
	movea 0x000000A4, r3, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	movea 0x00000070, r3, r7
	add r2, r7
	ld.w 0x00000000[r7], r8
	st.w r6, 0x00000000[r8]
	ld.w 0x00000000[r5], r6
	movea 0x0000003C, r3, r8
	add r2, r8
	ld.w 0x00000000[r8], r8
	st.w r6, 0x00000000[r8]
	movea 0x00000008, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7584
	add r2, r6
	ld.w 0x00000000[r7], r2
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r6], r6
	and r6, r2
	cmp r5, r2
	bz9 .BB.LABEL.11_23
.BB.LABEL.11_22:	; if_then_bb419
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_23:	; if_break_bb421
	add 0x00000001, r25
.BB.LABEL.11_24:	; bb424
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7572
	andi 0x000000FF, r25, r2
	cmp r30, r2
	bl9 .BB.LABEL.11_21
.BB.LABEL.11_25:	; if_break_bb434
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7625
	mov r20, r25
	shl 0x00000004, r25
	add r21, r25
	ld.w 0x00000004[r25], r2
	st.w r2, 0x0000000C[r28]
	mov r27, r2
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	ld.w 0x00000004[r25], r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7628
	ld.w 0x00000004[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7625
	add 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7628
	ld.w 0x0000000C[r28], r5
	andi 0x0000003F, r5, r5
	cmp r2, r5
	bz9 .BB.LABEL.11_27
.BB.LABEL.11_26:	; if_then_bb457
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_27:	; if_break_bb459
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7664
	zxb r23
	ld.w 0x00000000[r25], r2
	add r2, r23
	add 0xFFFFFFFF, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7669
	st.w r23, 0x00000010[r28]
	mov r27, r2
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	st.w r23, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7672
	ld.w 0x00000010[r28], r2
	andi 0x0000003F, r2, r2
	cmp r2, r23
	bz9 .BB.LABEL.11_29
.BB.LABEL.11_28:	; if_then_bb483
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_29:	; if_break_bb485
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7682
	mov r20, r2
	shl 0x00000004, r2
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7687
	ld.bu 0x0000000B[r21], r21
	ld.bu 0x00000000[r22], r22
	mov 0x00000000, r23
	mov r23, r30
	br9 .BB.LABEL.11_36
.BB.LABEL.11_30:	; bb492
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7692
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r2
	ld.w LOWW(#_Adc_GpChannelToDisableEnable)[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_34
.BB.LABEL.11_31:	; if_then_bb502
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7696
	mov r26, r2
	shl 0x00000002, r2
	mov #_Adc_GaaVirChReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7713
	andi 0x000000FF, r30, r5
	ld.w 0x00000000[r25], r6
	add r5, r6
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7715
	movhi HIGHW1(#_Adc_GpChannelToGroup), r0, r6
	ld.w LOWW(#_Adc_GpChannelToGroup)[r6], r6
	andi 0x000000FF, r21, r7
	add r7, r7
	add r7, r6
	ld.hu 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7719
	st.w r6, 0x00000000[r2]
	mulhi 0x000000C8, r26, r7
	mov #_Adc_GaaRamMirrorAdcVirChReg, r8
	add r7, r8
	ld.w 0x00000000[r25], r7
	add r5, r7
	shl 0x00000002, r7
	add r7, r8
	st.w r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7729
	ld.w 0x00000000[r2], r2
	xor r2, r6
	andi 0x000001FF, r6, r0
	bz9 .BB.LABEL.11_33
.BB.LABEL.11_32:	; if_then_bb546
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_33:	; if_break_bb548
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7735
	add 0x00000001, r30
	br9 .BB.LABEL.11_35
.BB.LABEL.11_34:	; if_else_bb551
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7742
	add 0x00000001, r23
.BB.LABEL.11_35:	; if_break_bb554
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7745
	add 0x00000001, r21
.BB.LABEL.11_36:	; bb557
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7688
	andi 0x000000FF, r30, r2
	andi 0x000000FF, r23, r5
	add r5, r2
	cmp r22, r2
	blt9 .BB.LABEL.11_30
.BB.LABEL.11_37:	; bb568
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7775
	mulhi 0x00000014, r20, r2
	ld.w 0x00000004[r3], r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7779
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r2
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r2], r2
	cmp r2, r20
	bnc9 .BB.LABEL.11_39
.BB.LABEL.11_38:	; if_then_bb578
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7783
	sub r24, r27
	shl 0x00000002, r27
	mov #_Adc_GaaSGmConvStatusMask.2, r2
	add r27, r2
	ld.w 0x00000000[r2], r27
	or r27, r29
	br9 .BB.LABEL.11_42
.BB.LABEL.11_39:	; if_else_bb588
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7790
	ld.w 0x00000008[r28], r2
	ori 0x00000001, r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7791
	st.w r21, 0x00000008[r28]
	mov r27, r2
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	st.w r21, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7793
	ld.w 0x00000008[r28], r2
	andi 0x0000003D, r2, r2
	cmp r2, r21
	bz9 .BB.LABEL.11_41
.BB.LABEL.11_40:	; if_then_bb609
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_41:	; if_break_bb611
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7797
	sub r24, r27
	shl 0x00000002, r27
	movea 0x000000D8, r3, r2
	add r27, r2
	st.w r21, 0x00000000[r2]
.BB.LABEL.11_42:	; if_break_bb620
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7801
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_44
.BB.LABEL.11_43:	; bb625
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r2
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r2], r2
	cmp r2, r20
	bl9 .BB.LABEL.11_56
.BB.LABEL.11_44:	; if_then_bb640
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7807
	mov r24, r28
	shl 0x00000002, r28
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r28
	ld.w 0x00000000[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7808
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x000000D8[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7814
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7818
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_46
.BB.LABEL.11_45:	; if_then_bb674
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_46:	; if_break_bb676
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7822
	ld.w 0x00000004[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7824
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x000000DC[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7827
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7830
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_48
.BB.LABEL.11_47:	; if_then_bb710
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_48:	; if_break_bb712
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7834
	ld.w 0x00000008[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7836
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x000000E0[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7839
	st.w r5, 0x00000008[r2]
	shl 0x00000004, r24
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r24
	st.w r5, 0x00000020[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7842
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.11_50
.BB.LABEL.11_49:	; if_then_bb746
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_50:	; if_break_bb748
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7860
	andi 0x00000200, r29, r0
	bz9 .BB.LABEL.11_52
.BB.LABEL.11_51:	; if_then_bb755
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7867
	ld.w 0x00000000[r28], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7871
	st.w r5, 0x00000000[r2]
.BB.LABEL.11_52:	; if_break_bb764
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7882
	andi 0x00000400, r29, r0
	bz9 .BB.LABEL.11_54
.BB.LABEL.11_53:	; if_then_bb771
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7888
	ld.w 0x00000004[r28], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7891
	st.w r5, 0x00000000[r2]
.BB.LABEL.11_54:	; if_break_bb780
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7902
	andi 0x00000800, r29, r0
	bz9 .BB.LABEL.11_57
.BB.LABEL.11_55:	; if_then_bb787
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7908
	ld.w 0x00000008[r28], r28
.BB.LABEL.11_56:	; if_else_bb797
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r2
	st.w r2, 0x00000000[r28]
.BB.LABEL.11_57:	; return
	movea 0x00000068, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7932
	dispose 0x0000007C, 0x00000FFF, [r31]
_Adc_StateTransition:
	.stack _Adc_StateTransition = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7984
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7990
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7993
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.w 0x00000004[r2], r5
	add 0x00000004, r2
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7997
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r5
	ld.w LOWW(#_Adc_GpGroupConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 7999
	mov r6, r7
	shl 0x00000004, r7
	add r7, r5
	ld.bu 0x0000000C[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8004
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.12_8
.BB.LABEL.12_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8006
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r7
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r7], r7
	cmp r7, r6
	bl9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	andi 0x00000008, r5, r0
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8019
	st.w r0, 0x00000000[r2]
	jmp [r31]
.BB.LABEL.12_6:	; if_else_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8027
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r5
	st.w r5, 0x00000000[r2]
.BB.LABEL.12_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8035
	jmp [r31]
_Adc_EnableHWGroup:
	.stack _Adc_EnableHWGroup = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8092
	prepare 0x000007FD, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8118
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r2
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8115
	mov r6, r2
	shl 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8118
	subr r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8142
	andi 0x000000FF, r20, r5
	shl 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8111
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r7
	ld.w LOWW(#_Adc_GpGroupConfig)[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8115
	add r2, r7
	ld.bu 0x0000000A[r7], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8122
	mulhi 0x00000014, r21, r2
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r8], r8
	add r2, r8
	ld.bu 0x00000000[r8], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8124
	mov r22, r2
	shl 0x00000002, r2
	mov #_Adc_GaaSGReg_BaseAddress, r8
	add r2, r8
	ld.w 0x00000000[r8], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8128
	ld.bu 0x00000009[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8130
	mulhi 0x00000014, r2, r7
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r8], r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8132
	ld.bu 0x00000000[r8], r24
	mov r24, r7
	shl 0x00000002, r7
	mov #_Adc_GaaConfReg_BaseAddress, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8142
	ld.w 0x0000001C[r23], r8
	movhi HIGHW1(#_Adc_GpHWGroupTrigg), r0, r9
	ld.w LOWW(#_Adc_GpHWGroupTrigg)[r9], r9
	add r5, r9
	ld.w 0x00000000[r9], r5
	cmp r5, r8
	mov r6, r25
	bz17 .BB.LABEL.13_21
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8153
	ld.w 0x00000214[r7], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8157
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r5
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r5], r5
	mulhi 0x00000014, r2, r2
	add r2, r5
	ld.bu 0x00000001[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8162
	mov r27, r28
	shl 0x00000002, r28
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r28
	ld.w 0x00000000[r28], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8164
	ld.w 0x00000004[r28], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8166
	ld.w 0x00000008[r28], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8173
	ld.w 0x00000000[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8174
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8180
	st.w r5, 0x00000008[r2]
	mov r27, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8185
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8189
	ld.w 0x00000004[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8190
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8192
	st.w r5, 0x00000008[r2]
	mov r27, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8195
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_5:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8199
	ld.w 0x00000008[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8200
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8202
	st.w r5, 0x00000008[r2]
	mov r27, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8205
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_then_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_7:	; if_break_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8221
	mov r24, r6
	jarl _Adc_HaltADConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8228
	zxb r20
	shl 0x00000002, r20
	movhi HIGHW1(#_Adc_GpHWGroupTrigg), r0, r2
	ld.w LOWW(#_Adc_GpHWGroupTrigg)[r2], r5
	add r20, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x0000001C[r23]
	shl 0x00000004, r22
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r22, r5
	ld.w LOWW(#_Adc_GpHWGroupTrigg)[r2], r6
	add r20, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8233
	ld.w LOWW(#_Adc_GpHWGroupTrigg)[r2], r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x0000001C[r23], r5
	andi 0x000001FF, r5, r5
	cmp r2, r5
	bz9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_9:	; if_break_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8241
	ld.w 0x00000000[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8242
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000000[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8248
	st.w r5, 0x00000008[r2]
	mov r27, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8251
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; if_then_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_11:	; if_break_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8255
	ld.w 0x00000004[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8256
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000004[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8259
	st.w r5, 0x00000008[r2]
	mov r27, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8262
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_13
.BB.LABEL.13_12:	; if_then_bb295
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_13:	; if_break_bb297
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8266
	ld.w 0x00000008[r28], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8267
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000008[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8270
	st.w r5, 0x00000008[r2]
	shl 0x00000004, r27
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r27
	st.w r5, 0x00000020[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8273
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.13_15
.BB.LABEL.13_14:	; if_then_bb331
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_15:	; if_break_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8292
	andi 0x00000200, r26, r0
	bz9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_then_bb340
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8299
	ld.w 0x00000000[r28], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8303
	st.w r5, 0x00000000[r2]
.BB.LABEL.13_17:	; if_break_bb349
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8314
	andi 0x00000400, r26, r0
	bz9 .BB.LABEL.13_19
.BB.LABEL.13_18:	; if_then_bb356
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8320
	ld.w 0x00000004[r28], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8323
	st.w r5, 0x00000000[r2]
.BB.LABEL.13_19:	; if_break_bb365
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8334
	andi 0x00000800, r26, r0
	bz9 .BB.LABEL.13_21
.BB.LABEL.13_20:	; if_then_bb372
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8340
	ld.w 0x00000008[r28], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8343
	st.w r5, 0x00000000[r2]
.BB.LABEL.13_21:	; if_break_bb382
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8357
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r25, r5
	add r5, r2
	mov 0x00000001, r5
	st.b r5, 0x00000009[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8359
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r2], r2
	mulh 0x0000000C, r21
	add r21, r2
	st.b r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8362
	mov r25, r6
	jarl _Adc_ConfigureGroupForConversion, r31
	dispose 0x0000000C, 0x000007FD, [r31]
_Adc_DisableHWGroup:
	.stack _Adc_DisableHWGroup = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8420
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8445
	mov r6, r2
	shl 0x00000004, r2
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r5
	ld.w LOWW(#_Adc_GpGroupConfig)[r5], r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8448
	ld.bu 0x00000009[r7], r20
	mulhi 0x00000014, r20, r7
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r8], r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8449
	ld.bu 0x00000000[r8], r7
	shl 0x00000002, r7
	mov #_Adc_GaaConfReg_BaseAddress, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8444
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r8
	ld.w LOWW(#_Adc_GpGroupRamData)[r8], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8452
	ld.w 0x00000214[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8459
	ld.w LOWW(#_Adc_GpGroupConfig)[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8463
	ld.bu 0x0000000A[r5], r22
	mulhi 0x00000014, r22, r2
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r5
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8466
	ld.bu 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8469
	mov r2, r7
	shl 0x00000002, r7
	mov #_Adc_GaaSGReg_BaseAddress, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8478
	ld.bu 0x00000012[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8474
	ld.w 0x00000008[r7], r5
	andi 0x0000003C, r5, r5
	st.w r5, 0x00000008[r7]
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	ld.w 0x00000008[r7], r2
	andi 0x0000003C, r2, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8478
	ld.w 0x00000008[r7], r2
	andi 0x0000003C, r2, r2
	ld.w 0x00000008[r7], r5
	andi 0x0000003D, r5, r5
	cmp r5, r2
	mov r6, r24
	mov r6, r25
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8486
	mov r25, r6
	jarl _Adc_HaltScanGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8499
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r2], r2
	mulhi 0x0000000C, r22, r5
	add r5, r2
	st.b r0, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8764
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r22, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8770
	mov r22, r6
	jarl _Adc_IcrInterruptBit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8775
	mov r20, r6
	mov r23, r7
	jarl _Adc_ClearPendingInterrupt, r31
.BB.LABEL.14_4:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8785
	mulhi 0x00000014, r24, r2
	add r2, r21
	st.b r0, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8789
	st.w r0, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8792
	st.b r0, 0x00000009[r21]
	dispose 0x00000000, 0x00000679, [r31]
_Adc_SearchnDelete:
	.stack _Adc_SearchnDelete = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8847
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8859
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	mov r6, r5
	shl 0x00000004, r5
	add r5, r2
	ld.bu 0x0000000A[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8863
	mulhi 0x00000014, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8866
	mulhi 0x0000000C, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8861
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r8
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8866
	add r8, r7
	ld.bu 0x00000007[r7], r9
	add 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8863
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r10
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r10], r10
	add r5, r10
	ld.w 0x00000004[r10], r5
	mov 0x00000000, r10
	br9 .BB.LABEL.15_7
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8873
	mov r5, r11
	add r10, r11
	ld.bu 0x00000000[r11], r11
	cmp r11, r6
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8877
	add 0xFFFFFFFF, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8879
	st.b r9, 0x00000000[r7]
	br9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8884
	mov r5, r11
	add r10, r11
	ld.b 0x00000001[r11], r12
	st.b r12, 0x00000000[r11]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8886
	add 0x00000001, r10
.BB.LABEL.15_4:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8881
	andi 0x000000FF, r9, r11
	cmp r11, r10
	bl9 .BB.LABEL.15_3
.BB.LABEL.15_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8889
	andi 0x000000FF, r9, r10
.BB.LABEL.15_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8895
	add 0x00000001, r10
.BB.LABEL.15_7:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8870
	andi 0x000000FF, r9, r11
	cmp r11, r10
	bl9 .BB.LABEL.15_1
.BB.LABEL.15_8:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8899
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r5
	ld.w LOWW(#_Adc_GpGroupRamData)[r5], r5
	mulhi 0x00000014, r6, r6
	add r6, r5
	st.b r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8902
	mulh 0x0000000C, r2
	add r2, r8
	add 0x00000006, r8
	ld.bu 0x00000000[r7], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8905
	st.b r0, 0x00000000[r8]
	jmp [r31]
.BB.LABEL.15_10:	; if_else_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8910
	st.b r2, 0x00000000[r8]
	jmp [r31]
_Adc_IcrInterruptBit:
	.stack _Adc_IcrInterruptBit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8965
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8973
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8976
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.w 0x00000008[r2], r2
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8980
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	jmp [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 8987
	ld.bu 0x00000000[r2], r5
	andi 0x0000007F, r5, r5
	st.b r5, 0x00000000[r2]
	jmp [r31]
_Adc_ClearPendingInterrupt:
	.stack _Adc_ClearPendingInterrupt = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 9040
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 9050
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 9051
	add r7, r7
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 9056
	ld.hu 0x00000000[r2], r5
	andi 0x0000EFFF, r5, r5
	st.h r5, 0x00000000[r2]
	ld.h 0x00000000[r2], r2
	syncp
	jmp [r31]
_Adc_IntDisableEnableChannel:
	.stack _Adc_IntDisableEnableChannel = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10190
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10207
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10210
	mov r6, r5
	shl 0x00000004, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10216
	ld.bu 0x0000000D[r2], r5
	ld.bu 0x0000000B[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10205
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r9
	ld.w LOWW(#_Adc_GpGroupRamData)[r9], r9
	mov 0x00000000, r10
	br9 .BB.LABEL.18_10
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10219
	movhi HIGHW1(#_Adc_GpChannelToGroup), r0, r11
	ld.w LOWW(#_Adc_GpChannelToGroup)[r11], r11
	andi 0x000000FF, r2, r12
	add r12, r12
	add r12, r11
	ld.hu 0x00000000[r11], r11
	andi 0x0000003F, r11, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10223
	cmp r11, r7
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10230
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r10
	ld.w LOWW(#_Adc_GpChannelToDisableEnable)[r10], r10
	andi 0x000000FF, r2, r11
	add r10, r11
	ld.bu 0x00000000[r11], r10
	st.b r8, 0x00000000[r11]
	cmp r10, r8
	bnz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb.if_break_bb82_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov r5, r10
	br9 .BB.LABEL.18_9
.BB.LABEL.18_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10243
	mulhi 0x00000014, r6, r10
	add r9, r10
	ld.bu 0x0000000D[r10], r11
	add 0x0000000D, r10
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.18_7
.BB.LABEL.18_5:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10246
	add 0x00000001, r11
.BB.LABEL.18_6:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	st.b r11, 0x00000000[r10]
	mov r5, r10
	br9 .BB.LABEL.18_9
.BB.LABEL.18_7:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10251
	add 0xFFFFFFFF, r11
	br9 .BB.LABEL.18_6
.BB.LABEL.18_8:	; if_else_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10262
	add 0x00000001, r2
.BB.LABEL.18_9:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r10
.BB.LABEL.18_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10216
	andi 0x000000FF, r10, r11
	cmp r11, r5
	bh9 .BB.LABEL.18_1
.BB.LABEL.18_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10286
	jmp [r31]
_Adc_IsrConfigureGroupForConversion:
	.stack _Adc_IsrConfigureGroupForConversion = 280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10648
	prepare 0x00000FFF, 0x0000007C
	movea 0xFFFFFF94, r3, r3
	mov 0x00000000, r2
	mov r6, r20
	br9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10717
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	movea 0x00000074, r3, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x000000A8, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10718
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x00000040, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10720
	add r5, r6
	st.w r0, 0x00000000[r6]
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10723
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.19_2:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10714
	andi 0x000000FF, r2, r5
	cmp 0x0000000D, r5
	blt9 .BB.LABEL.19_1
.BB.LABEL.19_3:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10733
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10754
	mulhi 0x00000014, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10736
	mov r20, r21
	shl 0x00000004, r21
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10754
	ld.bu 0x0000000D[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10748
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10754
	add r2, r5
	ld.bu 0x0000000D[r5], r2
	sub r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10746
	ld.bu 0x0000000A[r21], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10760
	mov r23, r2
	shl 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10750
	movhi HIGHW1(#_Adc_GpRunTimeData), r0, r6
	ld.w LOWW(#_Adc_GpRunTimeData)[r6], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10760
	add r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10811
	ld.bu 0x00000009[r21], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10746
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10760
	st.b r22, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10762
	ld.b 0x00000008[r21], r6
	st.b r6, 0x00000006[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10765
	st.b r0, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10783
	st.b r0, 0x00000007[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10788
	ld.w 0x00000000[r5], r6
	st.w r6, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10794
	ld.b 0x0000000A[r5], r6
	st.b r6, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10796
	st.b r0, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10803
	ld.bu 0x00000005[r24], r5
	ld.bu 0x00000006[r24], r6
	mulh r6, r5
	add r5, r5
	ld.w 0x00000000[r24], r6
	add r5, r6
	st.w r6, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10808
	mulhi 0x0000000C, r23, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10941
	ld.bu 0x0000000C[r21], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10754
	add 0x0000000D, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10765
	add 0x00000005, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10934
	mulhi 0x00000014, r23, r6
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r7
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10937
	ld.bu 0x00000000[r7], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10939
	mov r26, r6
	shl 0x00000002, r6
	mov #_Adc_GaaSGReg_BaseAddress, r8
	add r6, r8
	ld.w 0x00000000[r8], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10941
	andi 0x00000001, r5, r5
	shl 0x00000002, r5
	mov #_Adc_GaaOperationMask.1, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10992
	ld.bu 0x00000012[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10811
	mulhi 0x00000014, r25, r6
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r8], r8
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10812
	ld.bu 0x00000000[r8], r28
	mov r28, r6
	shl 0x00000002, r6
	mov #_Adc_GaaConfReg_BaseAddress, r8
	add r8, r6
	ld.w 0x00000000[r6], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10992
	ld.w 0x00000008[r27], r6
	addi 0x00000008, r27, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10944
	ori 0x00000010, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10992
	cmp r6, r5
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; bb52.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r30
	mov 0x00000001, r5
	br9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 10999
	st.w r8, 0x00000074[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11000
	st.w r5, 0x000000A8[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11002
	mov r26, r30
	shl 0x00000004, r30
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r30, r5
	st.w r5, 0x00000040[r3]
	movea 0x0000003D, r0, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11006
	st.w r30, 0x0000000C[r3]
	mov 0x00000001, r30
	mov 0x00000000, r5
.BB.LABEL.19_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11019
	mulhi 0x0000000C, r23, r5
	add r5, r2
	st.b r20, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11172
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r23, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11210
	mov r25, r6
	jarl _Adc_ClearPendingInterrupt, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11212
	mov r23, r6
	jarl _Adc_IcrInterruptBit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11215
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r2], r2
	mulhi 0x00000014, r23, r5
	add r5, r2
	ld.w 0x00000008[r2], r2
	ld.h 0x00000000[r2], r2
	syncp
.BB.LABEL.19_8:	; if_break_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11392
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.19_20
.BB.LABEL.19_9:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11396
	ld.w 0x00000214[r29], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11401
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mulhi 0x00000014, r25, r25
	add r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11408
	ld.bu 0x00000001[r2], r25
	mov r25, r23
	shl 0x00000002, r23
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r23
	ld.w 0x00000000[r23], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000DC[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11412
	ld.w 0x00000004[r23], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000E0[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11414
	ld.w 0x00000008[r23], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x000000E4[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11420
	ld.w 0x00000000[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11421
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11426
	st.w r5, 0x00000008[r2]
	mov r25, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11431
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.19_11
.BB.LABEL.19_10:	; if_then_bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_11:	; if_break_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11436
	ld.w 0x00000004[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11437
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11442
	st.w r5, 0x00000008[r2]
	mov r25, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11446
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.19_13
.BB.LABEL.19_12:	; if_then_bb321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_13:	; if_break_bb323
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11451
	ld.w 0x00000008[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11452
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11457
	st.w r5, 0x00000008[r2]
	mov r25, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11461
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.19_15
.BB.LABEL.19_14:	; if_then_bb353
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_15:	; if_break_bb355
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11477
	mov r28, r6
	jarl _Adc_HaltADConversion, r31
	mov 0x00000000, r23
	br9 .BB.LABEL.19_19
.BB.LABEL.19_16:	; bb357
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11485
	andi 0x000000FF, r23, r2
	shl 0x00000002, r2
	movea 0x000000A8, r3, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	movea 0x00000074, r3, r7
	add r2, r7
	ld.w 0x00000000[r7], r8
	st.w r6, 0x00000000[r8]
	ld.w 0x00000000[r5], r6
	movea 0x00000040, r3, r8
	add r2, r8
	ld.w 0x00000000[r8], r8
	st.w r6, 0x00000000[r8]
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11490
	add r2, r6
	ld.w 0x00000000[r7], r2
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r6], r6
	and r6, r2
	cmp r5, r2
	bz9 .BB.LABEL.19_18
.BB.LABEL.19_17:	; if_then_bb398
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_18:	; if_break_bb400
	add 0x00000001, r23
.BB.LABEL.19_19:	; bb403
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11479
	andi 0x000000FF, r23, r2
	cmp r30, r2
	bl9 .BB.LABEL.19_16
.BB.LABEL.19_20:	; if_break_bb413
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11530
	mov r20, r23
	shl 0x00000004, r23
	ld.w 0x00000004[r3], r2
	add r2, r23
	ld.w 0x00000004[r23], r2
	ld.bu 0x00000000[r24], r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11532
	st.w r2, 0x0000000C[r27]
	mov r26, r5
	shl 0x00000004, r5
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r5, r6
	st.w r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11530
	add 0x00000004, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11534
	ld.w 0x0000000C[r27], r5
	andi 0x0000003F, r5, r5
	cmp r5, r2
	bz9 .BB.LABEL.19_22
.BB.LABEL.19_21:	; if_then_bb438
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_22:	; if_break_bb440
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11569
	zxb r22
	ld.w 0x00000000[r23], r2
	add r2, r22
	add 0xFFFFFFFF, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11575
	st.w r22, 0x00000010[r27]
	mov r26, r2
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	st.w r22, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11577
	ld.w 0x00000010[r27], r2
	andi 0x0000003F, r2, r2
	cmp r2, r22
	bz9 .BB.LABEL.19_24
.BB.LABEL.19_23:	; if_then_bb464
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_24:	; if_break_bb466
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11587
	mov r20, r2
	shl 0x00000004, r2
	ld.w 0x00000004[r3], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11591
	ld.bu 0x0000000B[r5], r22
	ld.bu 0x00000000[r21], r21
	mov 0x00000000, r24
	br9 .BB.LABEL.19_29
.BB.LABEL.19_25:	; bb473
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11596
	movhi HIGHW1(#_Adc_GpChannelToDisableEnable), r0, r2
	ld.w LOWW(#_Adc_GpChannelToDisableEnable)[r2], r2
	andi 0x000000FF, r22, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.19_28
.BB.LABEL.19_26:	; if_then_bb483
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11600
	mov r28, r2
	shl 0x00000002, r2
	mov #_Adc_GaaVirChReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11617
	andi 0x000000FF, r24, r5
	ld.w 0x00000000[r23], r6
	add r5, r6
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11619
	movhi HIGHW1(#_Adc_GpChannelToGroup), r0, r6
	ld.w LOWW(#_Adc_GpChannelToGroup)[r6], r6
	andi 0x000000FF, r22, r7
	add r7, r7
	add r7, r6
	ld.hu 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11623
	st.w r6, 0x00000000[r2]
	mulhi 0x000000C8, r28, r7
	mov #_Adc_GaaRamMirrorAdcVirChReg, r8
	add r7, r8
	ld.w 0x00000000[r23], r7
	add r5, r7
	shl 0x00000002, r7
	add r7, r8
	st.w r6, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11634
	ld.w 0x00000000[r2], r2
	xor r2, r6
	andi 0x000001FF, r6, r0
	bz9 .BB.LABEL.19_28
.BB.LABEL.19_27:	; if_then_bb527
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_28:	; if_break_bb531
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11648
	add 0x00000001, r24
	add 0x00000001, r22
.BB.LABEL.19_29:	; bb536
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11591
	andi 0x000000FF, r24, r2
	cmp r2, r21
	bh9 .BB.LABEL.19_25
.BB.LABEL.19_30:	; bb544
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11679
	movhi HIGHW1(#_Adc_GpGroupRamData), r0, r2
	ld.w LOWW(#_Adc_GpGroupRamData)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_32
.BB.LABEL.19_31:	; if_then_bb554
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11683
	mulhi 0x00000014, r20, r2
	ld.w 0x00000008[r3], r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000004[r5]
.BB.LABEL.19_32:	; if_break_bb558
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11690
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_45
.BB.LABEL.19_33:	; if_then_bb564
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11695
	andi 0x000000FF, r25, r2
	mov r2, r20
	shl 0x00000002, r20
	mov #_Adc_GaaSGReg_BaseAddress, r5
	add r5, r20
	ld.w 0x00000000[r20], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11696
	ld.w 0x00000008[r5], r6
	movea 0xFFFFFFC3, r0, r7
	ld.w 0x000000DC[r3], r8
	and r7, r8
	or r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11701
	st.w r6, 0x00000008[r5]
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r2, r7
	st.w r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11705
	ld.w 0x00000008[r5], r2
	andi 0x0000003D, r2, r2
	cmp r2, r6
	bz9 .BB.LABEL.19_35
.BB.LABEL.19_34:	; if_then_bb598
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_35:	; if_break_bb600
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11709
	ld.w 0x00000004[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11710
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x000000E0[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11713
	st.w r5, 0x00000008[r2]
	andi 0x000000FF, r25, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11716
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.19_37
.BB.LABEL.19_36:	; if_then_bb634
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_37:	; if_break_bb636
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11720
	ld.w 0x00000008[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11721
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x000000E4[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11724
	st.w r5, 0x00000008[r2]
	zxb r25
	shl 0x00000004, r25
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r25
	st.w r5, 0x00000020[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11727
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.19_39
.BB.LABEL.19_38:	; if_then_bb670
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_39:	; if_break_bb672
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11743
	andi 0x00000200, r29, r0
	bz9 .BB.LABEL.19_41
.BB.LABEL.19_40:	; if_then_bb679
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11749
	ld.w 0x00000000[r20], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11753
	st.w r5, 0x00000000[r2]
.BB.LABEL.19_41:	; if_break_bb688
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11763
	andi 0x00000400, r29, r0
	bz9 .BB.LABEL.19_43
.BB.LABEL.19_42:	; if_then_bb695
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11768
	ld.w 0x00000004[r20], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11771
	st.w r5, 0x00000000[r2]
.BB.LABEL.19_43:	; if_break_bb704
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11781
	andi 0x00000800, r29, r0
	bz9 .BB.LABEL.19_45
.BB.LABEL.19_44:	; if_then_bb711
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11786
	ld.w 0x00000008[r20], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11789
	st.w r5, 0x00000000[r2]
.BB.LABEL.19_45:	; if_else_bb723
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r2
	st.w r2, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11828
	ld.w 0x00000000[r23], r2
	st.w r2, 0x0000000C[r27]
	mov r26, r2
	shl 0x00000004, r2
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r2, r5
	ld.w 0x00000000[r23], r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11831
	ld.w 0x00000000[r23], r2
	ld.w 0x0000000C[r27], r5
	andi 0x0000003F, r5, r5
	cmp r2, r5
	bz9 .BB.LABEL.19_47
.BB.LABEL.19_46:	; if_then_bb749
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_47:	; if_break_bb751
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11835
	ld.w 0x00000010[r27], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11839
	st.w r2, 0x00000010[r27]
	shl 0x00000004, r26
	mov #_Adc_GaaRamMirrorAdcSGReg, r5
	add r26, r5
	st.w r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11841
	ld.w 0x00000010[r27], r5
	andi 0x0000003F, r5, r5
	cmp r5, r2
	bz9 .BB.LABEL.19_49
.BB.LABEL.19_48:	; if_then_bb771
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.19_49:	; return
	movea 0x0000006C, r3, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 11874
	dispose 0x0000007C, 0x00000FFF, [r31]
_Adc_IntCusGetADCAnDRmAddr:
	.stack _Adc_IntCusGetADCAnDRmAddr = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12073
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12085
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12087
	shl 0x00000004, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12094
	ld.bu 0x0000000A[r2], r5
	mulhi 0x00000014, r5, r5
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12098
	ld.bu 0x00000010[r6], r5
	add r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12089
	ld.bu 0x00000009[r2], r2
	mulhi 0x00000014, r2, r2
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r6
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12098
	ld.bu 0x00000000[r6], r2
	shl 0x00000002, r2
	mov #_Adc_GaaVirChReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	add r5, r2
	movea 0x00000100, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12104
	jmp [r31]
_Adc_HaltScanGroup:
	.stack _Adc_HaltScanGroup = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12230
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12247
	movhi HIGHW1(#_Adc_GpGroupConfig), r0, r2
	ld.w LOWW(#_Adc_GpGroupConfig)[r2], r2
	mov r6, r5
	shl 0x00000004, r5
	add r2, r5
	ld.bu 0x00000009[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12249
	mulhi 0x00000014, r7, r7
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r8
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r8], r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12251
	ld.bu 0x00000000[r8], r7
	shl 0x00000002, r7
	mov #_Adc_GaaConfReg_BaseAddress, r9
	add r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12255
	ld.bu 0x0000000A[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12257
	mulhi 0x00000014, r5, r7
	movhi HIGHW1(#_Adc_GpSgUnitConfig), r0, r10
	ld.w LOWW(#_Adc_GpSgUnitConfig)[r10], r10
	add r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12314
	mulh 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12263
	movhi HIGHW1(#_Adc_GpSgUnitRamData), r0, r7
	ld.w LOWW(#_Adc_GpSgUnitRamData)[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12314
	add r5, r7
	ld.bu 0x00000004[r7], r5
	shl 0x00000004, r5
	add r5, r2
	tst1 0x00000000, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12257
	ld.bu 0x00000012[r10], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12253
	ld.bu 0x00000001[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12251
	ld.w 0x00000000[r9], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12314
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movhi HIGHW1(#_Adc_GucMaxSwTriggGroups), r0, r8
	ld.bu LOWW(#_Adc_GucMaxSwTriggGroups)[r8], r8
	cmp r8, r6
	bnc9 .BB.LABEL.21_8
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12321
	ld.w 0x00000214[r7], r6
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12324
	st.w r8, 0x0000020C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12327
	shl 0x00000002, r2
	mov #_Adc_GaaSGmConvStatusMask.2, r7
	add r7, r2
	ld.w 0x00000000[r2], r2
	not r2, r2
	and r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12332
	andi 0x00000200, r6, r0
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12337
	mov r5, r2
	shl 0x00000002, r2
	mov #_Adc_GaaSGReg_BaseAddress, r7
	add r7, r2
	ld.w 0x00000000[r2], r2
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12338
	st.w r7, 0x00000000[r2]
.BB.LABEL.21_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12342
	andi 0x00000400, r6, r0
	bz9 .BB.LABEL.21_6
.BB.LABEL.21_5:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12346
	mov r5, r2
	shl 0x00000002, r2
	mov #_Adc_GaaSGReg_BaseAddress, r7
	add r2, r7
	ld.w 0x00000004[r7], r2
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12347
	st.w r7, 0x00000000[r2]
.BB.LABEL.21_6:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12350
	andi 0x00000800, r6, r0
	bz9 .BB.LABEL.21_13
.BB.LABEL.21_7:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12355
	shl 0x00000002, r5
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r5, r2
	ld.w 0x00000008[r2], r2
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12356
	st.w r7, 0x00000000[r2]
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.21_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12365
	st.w r5, 0x00000000[r3]
.BB.LABEL.21_9:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12368
	ld.w 0x00000000[r3], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12367
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaSGmConvStatusMask.2, r6
	add r6, r5
	ld.w 0x00000214[r7], r6
	ld.w 0x00000000[r5], r5
	tst r5, r6
	bz9 .BB.LABEL.21_11
.BB.LABEL.21_10:	; bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ld.w 0x00000000[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_11:	; bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12380
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.21_13
.BB.LABEL.21_12:	; if_then_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12384
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.21_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12389
	dispose 0x00000004, 0x00000001, [r31]
_Adc_HwCusSetSamplingClock:
	.stack _Adc_HwCusSetSamplingClock = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12569
	prepare 0x00000679, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12599
	cmp 0x00000000, r7
	movea 0x00000018, r0, r2
	movea 0x00000012, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12608
	cmov 0x00000002, r5, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12587
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12590
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12591
	ld.bu 0x00000000[r2], r21
	mov r21, r5
	shl 0x00000002, r5
	mov #_Adc_GaaConfReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12594
	ld.w 0x00000214[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12597
	ld.bu 0x00000001[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12615
	ld.w 0x0000028C[r22], r2
	cmp r2, r20
	bz17 .BB.LABEL.22_21
.BB.LABEL.22_1:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12621
	mov r24, r25
	shl 0x00000002, r25
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r25
	ld.w 0x00000000[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12623
	ld.w 0x00000004[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12625
	ld.w 0x00000008[r25], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12632
	ld.w 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12633
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12638
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12643
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_3:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12647
	ld.w 0x00000004[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12648
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12650
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12653
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_5:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12657
	ld.w 0x00000008[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12658
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12660
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000020[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12663
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_7:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12678
	mov r21, r6
	jarl _Adc_HaltADConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12681
	st.w r20, 0x0000028C[r22]
	mulhi 0x00000028, r21, r2
	mov #_Adc_GaaRamMirrorAdcConfReg, r5
	add r2, r5
	st.w r20, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12683
	ld.w 0x0000028C[r22], r2
	zxb r2
	cmp r2, r20
	bz9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; if_then_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_9:	; if_break_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12691
	ld.w 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12692
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000000[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12697
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12701
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_11
.BB.LABEL.22_10:	; if_then_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_11:	; if_break_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12705
	ld.w 0x00000004[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12706
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000004[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12709
	st.w r5, 0x00000008[r2]
	mov r24, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12712
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_13
.BB.LABEL.22_12:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_13:	; if_break_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12716
	ld.w 0x00000008[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12717
	ld.w 0x00000008[r2], r5
	movea 0xFFFFFFC3, r0, r6
	ld.w 0x00000008[r3], r7
	and r6, r7
	or r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12720
	st.w r5, 0x00000008[r2]
	shl 0x00000004, r24
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r24
	st.w r5, 0x00000020[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12723
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.22_15
.BB.LABEL.22_14:	; if_then_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.22_15:	; if_break_bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12740
	andi 0x00000200, r23, r0
	bz9 .BB.LABEL.22_17
.BB.LABEL.22_16:	; if_then_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12746
	ld.w 0x00000000[r25], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12750
	st.w r5, 0x00000000[r2]
.BB.LABEL.22_17:	; if_break_bb305
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12760
	andi 0x00000400, r23, r0
	bz9 .BB.LABEL.22_19
.BB.LABEL.22_18:	; if_then_bb312
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12765
	ld.w 0x00000004[r25], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12768
	st.w r5, 0x00000000[r2]
.BB.LABEL.22_19:	; if_break_bb321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12778
	andi 0x00000800, r23, r0
	bz9 .BB.LABEL.22_21
.BB.LABEL.22_20:	; if_then_bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12783
	ld.w 0x00000008[r25], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12786
	st.w r5, 0x00000000[r2]
.BB.LABEL.22_21:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12799
	dispose 0x0000000C, 0x00000679, [r31]
_Adc_InitRamMirror:
	.stack _Adc_InitRamMirror = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12929
	mov 0x00000000, r2
	br9 .BB.LABEL.23_5
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12958
	mov r2, r5
	mul 0x00000028, r5, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12956
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaConfReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12958
	ld.w 0x00000210[r5], r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12959
	ld.w 0x0000025C[r5], r7
	st.w r7, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12960
	ld.w 0x00000260[r5], r7
	st.w r7, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12961
	ld.w 0x00000264[r5], r7
	st.w r7, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12962
	ld.w 0x00000268[r5], r7
	st.w r7, 0x0000001C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12963
	ld.w 0x0000028C[r5], r7
	st.w r7, 0x00000020[r6]
	mov 0x00000000, r6
	br9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12984
	mov r2, r7
	mul 0x00000028, r7, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r8
	add r7, r8
	mov r6, r7
	shl 0x00000002, r7
	add r7, r8
	add r5, r7
	ld.w 0x00000244[r7], r7
	st.w r7, 0x00000004[r8]
	add 0x00000001, r6
.BB.LABEL.23_3:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12968
	cmp 0x00000003, r6
	bl9 .BB.LABEL.23_2
.BB.LABEL.23_4:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r2
.BB.LABEL.23_5:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12953
	cmp 0x00000002, r2
	bl9 .BB.LABEL.23_1
.BB.LABEL.23_6:	; bb64.bb98_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.23_11
.BB.LABEL.23_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12994
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaVirChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.23_9
.BB.LABEL.23_8:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12999
	mov r2, r7
	mul 0x000000C8, r7, r0
	mov #_Adc_GaaRamMirrorAdcVirChReg, r8
	add r7, r8
	mov r6, r7
	shl 0x00000002, r7
	add r7, r8
	add r5, r7
	ld.w 0x00000000[r7], r7
	st.w r7, 0x00000000[r8]
	add 0x00000001, r6
.BB.LABEL.23_9:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movea 0x00000032, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12996
	cmp r7, r6
	bl9 .BB.LABEL.23_8
.BB.LABEL.23_10:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r2
.BB.LABEL.23_11:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 12991
	cmp 0x00000002, r2
	bl9 .BB.LABEL.23_7
.BB.LABEL.23_12:	; bb98.bb132_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.23_14
.BB.LABEL.23_13:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13009
	mov r2, r5
	shl 0x00000004, r5
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13007
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaSGReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13009
	ld.w 0x00000008[r5], r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13010
	ld.w 0x0000000C[r5], r7
	st.w r7, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13011
	ld.w 0x00000010[r5], r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13012
	ld.w 0x0000001C[r5], r5
	st.w r5, 0x0000000C[r6]
	add 0x00000001, r2
.BB.LABEL.23_14:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13004
	cmp 0x00000006, r2
	bl9 .BB.LABEL.23_13
.BB.LABEL.23_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13042
	jmp [r31]
_Adc_HwCheckHWConsistency:
	.stack _Adc_HwCheckHWConsistency = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13103
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13150
	bnz9 .BB.LABEL.24_5
.BB.LABEL.24_1:	; entry.bb28_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r2
	mov r2, r10
	br9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13159
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaConfReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13174
	ld.w 0x00000240[r5], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13176
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r2
.BB.LABEL.24_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13155
	andi 0x000000FF, r10, r0
	bnz17 .BB.LABEL.24_39
.BB.LABEL.24_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp 0x00000002, r2
	bl9 .BB.LABEL.24_2
	jr .BB.LABEL.24_39
.BB.LABEL.24_5:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13341
	cmp 0x00000001, r6
	bz9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; if_else_bb45.if_break_bb364_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r10
	jr .BB.LABEL.24_39
.BB.LABEL.24_7:	; if_else_bb45.bb191_crit_edge
	mov 0x00000000, r2
	mov r2, r10
	br9 .BB.LABEL.24_20
.BB.LABEL.24_8:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13352
	mov r2, r5
	mul 0x00000028, r5, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13350
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaConfReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13352
	ld.w 0x00000210[r5], r7
	ld.w 0x00000000[r6], r6
	cmp r6, r7
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_9:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov r2, r6
	mul 0x00000028, r6, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r7
	add r6, r7
	ld.w 0x0000025C[r5], r6
	ld.w 0x00000010[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_10:	; bb81
	mov r2, r6
	mul 0x00000028, r6, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r7
	add r6, r7
	ld.w 0x00000260[r5], r6
	ld.w 0x00000014[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_11:	; bb97
	mov r2, r6
	mul 0x00000028, r6, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r7
	add r6, r7
	ld.w 0x00000264[r5], r6
	ld.w 0x00000018[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_12:	; bb113
	mov r2, r6
	mul 0x00000028, r6, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r7
	add r6, r7
	ld.w 0x00000268[r5], r6
	ld.w 0x0000001C[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_13:	; bb129
	mov r2, r6
	mul 0x00000028, r6, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r7
	add r6, r7
	ld.w 0x0000028C[r5], r6
	ld.w 0x00000020[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_14:	; bb129.bb171_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.24_17
.BB.LABEL.24_15:	; if_then_bb146
	mov 0x00000001, r10
	mov 0x00000000, r6
	br9 .BB.LABEL.24_17
.BB.LABEL.24_16:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13382
	mov r2, r7
	mul 0x00000028, r7, r0
	mov #_Adc_GaaRamMirrorAdcConfReg, r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13380
	mov r6, r7
	shl 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13382
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13380
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13382
	ld.w 0x00000244[r7], r7
	ld.w 0x00000004[r8], r8
	cmp r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13384
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r6
.BB.LABEL.24_17:	; bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13365
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.24_19
.BB.LABEL.24_18:	; bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp 0x00000003, r6
	bl9 .BB.LABEL.24_16
.BB.LABEL.24_19:	; bb188
	add 0x00000001, r2
.BB.LABEL.24_20:	; bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13346
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.24_22
.BB.LABEL.24_21:	; bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp 0x00000002, r2
	bl9 .BB.LABEL.24_8
.BB.LABEL.24_22:	; bb191.bb258_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.24_28
.BB.LABEL.24_23:	; bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13398
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaVirChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	mov 0x00000000, r6
	br9 .BB.LABEL.24_25
.BB.LABEL.24_24:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13403
	mov r2, r7
	mul 0x000000C8, r7, r0
	mov #_Adc_GaaRamMirrorAdcVirChReg, r8
	add r7, r8
	mov r6, r7
	shl 0x00000002, r7
	add r7, r8
	add r5, r7
	ld.w 0x00000000[r7], r7
	ld.w 0x00000000[r8], r8
	xor r8, r7
	andi 0x000001FF, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13406
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r6
.BB.LABEL.24_25:	; bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13400
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.24_27
.BB.LABEL.24_26:	; bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	movea 0x00000032, r0, r7
	cmp r7, r6
	bl9 .BB.LABEL.24_24
.BB.LABEL.24_27:	; bb255
	add 0x00000001, r2
.BB.LABEL.24_28:	; bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13394
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.24_30
.BB.LABEL.24_29:	; bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp 0x00000002, r2
	bl9 .BB.LABEL.24_23
.BB.LABEL.24_30:	; bb258.bb344_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.24_37
.BB.LABEL.24_31:	; bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13423
	mov r2, r5
	shl 0x00000004, r5
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13421
	mov r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaSGReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13423
	ld.w 0x00000008[r5], r7
	ld.w 0x00000000[r6], r6
	cmp r6, r7
	bnz9 .BB.LABEL.24_35
.BB.LABEL.24_32:	; bb290
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov r2, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	ld.w 0x0000000C[r5], r6
	ld.w 0x00000004[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_35
.BB.LABEL.24_33:	; bb306
	mov r2, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	ld.w 0x00000010[r5], r6
	ld.w 0x00000008[r7], r7
	cmp r7, r6
	bnz9 .BB.LABEL.24_35
.BB.LABEL.24_34:	; bb322
	mov r2, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	ld.w 0x0000001C[r5], r5
	ld.w 0x0000000C[r7], r6
	cmp r6, r5
	bz9 .BB.LABEL.24_36
.BB.LABEL.24_35:	; if_then_bb339
	mov 0x00000001, r10
.BB.LABEL.24_36:	; if_break_bb341
	add 0x00000001, r2
.BB.LABEL.24_37:	; bb344
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13417
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.24_39
.BB.LABEL.24_38:	; bb344
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	cmp 0x00000006, r2
	bl9 .BB.LABEL.24_31
.BB.LABEL.24_39:	; if_break_bb364
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13501
	zxb r10
	jmp [r31]
_Adc_HaltADConversion:
	.stack _Adc_HaltADConversion = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13547
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13552
	shl 0x00000002, r6
	mov #_Adc_GaaConfReg_BaseAddress, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13558
	st.w r5, 0x0000020C[r2]
	ori 0x0000FFFF, r0, r5
	br9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13572
	ld.w 0x00000000[r3], r5
	add 0xFFFFFFFF, r5
.BB.LABEL.25_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13566
	ld.w 0x00000214[r2], r5
	andi 0x00003E00, r5, r0
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	ld.w 0x00000000[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.25_1
.BB.LABEL.25_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13576
	ld.w 0x00000000[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13579
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.25_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13586
	dispose 0x00000004, 0x00000001, [r31]
_Adc_SaveRegAndHaltADConversion:
	.stack _Adc_SaveRegAndHaltADConversion = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13629
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13642
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.bu 0x00000001[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13645
	ld.bu 0x00000000[r2], r21
	mov r21, r2
	shl 0x00000002, r2
	mov #_Adc_GaaConfReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13647
	ld.w 0x00000214[r2], r2
	st.w r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13652
	mov r20, r22
	shl 0x00000002, r22
	mov #_Adc_GaaSGReg_BaseAddress, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13654
	ld.w 0x00000004[r22], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13656
	ld.w 0x00000008[r22], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13663
	ld.w 0x00000000[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13664
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13670
	st.w r5, 0x00000008[r2]
	mov r20, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13675
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.26_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13679
	ld.w 0x00000004[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13680
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13682
	st.w r5, 0x00000008[r2]
	mov r20, r6
	shl 0x00000004, r6
	mov #_Adc_GaaRamMirrorAdcSGReg, r7
	add r7, r6
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13685
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.26_4:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13689
	ld.w 0x00000008[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13690
	ld.w 0x00000008[r2], r5
	andi 0x0000003C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13692
	st.w r5, 0x00000008[r2]
	shl 0x00000004, r20
	mov #_Adc_GaaRamMirrorAdcSGReg, r6
	add r6, r20
	st.w r5, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13695
	ld.w 0x00000008[r2], r2
	andi 0x0000003D, r2, r2
	cmp r2, r5
	bz9 .BB.LABEL.26_6
.BB.LABEL.26_5:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.26_6:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13710
	mov r21, r6
	jarl _Adc_HaltADConversion, r31
	dispose 0x00000000, 0x00000071, [r31]
_Adc_WriteBackRegforADConversion:
	.stack _Adc_WriteBackRegforADConversion = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13754
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13770
	movhi HIGHW1(#_Adc_GpHwUnitConfig), r0, r2
	ld.w LOWW(#_Adc_GpHwUnitConfig)[r2], r2
	mulhi 0x00000014, r6, r5
	add r5, r2
	ld.bu 0x00000001[r2], r20
	mov 0x00000000, r21
	mov r8, r22
	mov r7, r23
	br9 .BB.LABEL.27_5
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13781
	andi 0x000000FF, r21, r2
	shl 0x00000002, r2
	add r23, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.27_4
.BB.LABEL.27_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13786
	andi 0x000000FF, r21, r5
	add r20, r5
	mov r5, r6
	shl 0x00000002, r6
	mov #_Adc_GaaSGReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13789
	ld.w 0x00000008[r6], r7
	ld.w 0x00000000[r2], r2
	movea 0xFFFFFFC3, r0, r8
	and r8, r2
	or r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13797
	st.w r7, 0x00000008[r6]
	shl 0x00000004, r5
	mov #_Adc_GaaRamMirrorAdcSGReg, r2
	add r5, r2
	st.w r7, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13801
	ld.w 0x00000008[r6], r2
	andi 0x0000003D, r2, r2
	cmp r2, r7
	bz9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.27_4:	; if_break_bb64
	add 0x00000001, r21
.BB.LABEL.27_5:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13778
	andi 0x000000FF, r21, r2
	cmp 0x00000003, r2
	blt9 .BB.LABEL.27_1
.BB.LABEL.27_6:	; bb67.bb98_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.27_10
.BB.LABEL.27_7:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13819
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_Adc_GaaSGmConvStatusMask.2, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	tst r22, r5
	bz9 .BB.LABEL.27_9
.BB.LABEL.27_8:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13825
	andi 0x000000FF, r2, r5
	add r20, r5
	shl 0x00000002, r5
	mov #_Adc_GaaSGReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13829
	st.w r6, 0x00000000[r5]
.BB.LABEL.27_9:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 0
	add 0x00000001, r2
.BB.LABEL.27_10:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13814
	andi 0x000000FF, r2, r5
	cmp 0x00000003, r5
	blt9 .BB.LABEL.27_7
.BB.LABEL.27_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/adc/src/Adc_Private.c", 13849
	dispose 0x00000000, 0x00000079, [r31]
	.section .const, const
	.align 4
_Adc_GaaOperationMask.1:
	.dw 0x00000020,0x00000010
	.align 4
_Adc_GaaSGmConvStatusMask.2:
	.dw 0x00000200,0x00000400,0x00000800
