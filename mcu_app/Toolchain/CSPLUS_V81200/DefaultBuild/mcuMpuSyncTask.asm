#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\app\mcu_cpu_sync\mcuMpuSyncTask.c -oDefaultBuild\mcuMpuSyncTask.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_fc37c8d03c214dd38f0de08ab22bb79brwo21wci.4ac
#@	compiled at Fri Mar 27 09:50:25 2026

	.file "..\..\Srcode\app\mcu_cpu_sync\mcuMpuSyncTask.c"

	$reg_mode 32
	.dbl_size 8

	.public _McuMpuSyncTaskInit
	.extern _MpuHalOpen
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.extern _ParameterSyncSdkInit
	.extern _McuParameterRead
	.extern _McuParameterWrite
	.extern _StateSyncSdkInit
	.extern _FirmwareUpdateSdkInit
	.extern _TimeSyncSdkInit
	.extern _MpuPowerSyncSdkInit
	.extern _McuSendCpuFaultSyncInit
	.public _McuMpuSyncTaskMain
	.extern _MpuHalReceive
	.extern _LogHalPrint
	.extern _ParameterSyncSdkCycleProcess
	.extern _StateSyncSdkCycleProcess
	.extern _TimeSyncSdkCycleProcess
	.extern _MpuPowerSyncSdkCycleProcess
	.extern _MpuDtcSyncSdkCycleProcess
	.extern _McuSendCpuFaultSyncCycleProcess
	.extern _MpuHalUartPrintErrState
	.extern _FirmwareUpdateSdkCycleProcess

	.section .text, text
_McuMpuSyncTaskInit:
	.stack _McuMpuSyncTaskInit = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 41
	prepare 0x00000679, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 44
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandle.3), r0, r20
	st.h r10, LOWW(#_g_mpuHandle.3)[r20]
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 46
	st.b r21, 0x00000009[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 47
	st.b r21, 0x0000000A[r3]
	mov 0xFFFFFFFF, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 48
	st.b r22, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 49
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	movea 0x00000009, r3, r23
	mov r23, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 50
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	movea 0x00000400, r0, r24
	mov #_g_recvDataBuffer.6, r7
	mov r24, r8
	jarl _MpuHalSetRxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 52
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_mpuHandleFault.7), r0, r25
	st.h r10, LOWW(#_g_mpuHandleFault.7)[r25]
	movea 0x00000030, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 53
	st.b r2, 0x00000009[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 54
	st.b r21, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 55
	st.b r22, 0x0000000B[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 56
	ld.h LOWW(#_g_mpuHandleFault.7)[r25], r6
	mov r23, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 57
	ld.h LOWW(#_g_mpuHandleFault.7)[r25], r6
	movea 0x00000064, r0, r21
	mov #_g_recvDataBufferFault.10, r7
	mov r21, r8
	jarl _MpuHalSetRxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 58
	mov #_g_dataPackFault.9, r2
	mov #_g_dataBufferFault.8, r5
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 59
	st.h r21, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 62
	movhi HIGHW1(#_g_cycleTime.2), r0, r21
	ld.hu LOWW(#_g_cycleTime.2)[r21], r9
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	mov 0x0000000B, r2
	st.w r2, 0x00000004[r3]
	mov #_g_syncParamList.1, r2
	st.w r2, 0x00000000[r3]
	mov #_McuParameterWrite, r8
	mov #_McuParameterRead, r7
	jarl _ParameterSyncSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 64
	ld.hu LOWW(#_g_cycleTime.2)[r21], r7
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	jarl _StateSyncSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 66
	jarl _FirmwareUpdateSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 68
	ld.hu LOWW(#_g_cycleTime.2)[r21], r7
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	jarl _TimeSyncSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 70
	ld.hu LOWW(#_g_cycleTime.2)[r21], r7
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	jarl _MpuPowerSyncSdkInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 73
	ld.hu LOWW(#_g_cycleTime.2)[r21], r7
	ld.h LOWW(#_g_mpuHandle.3)[r20], r6
	jarl _McuSendCpuFaultSyncInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 75
	mov #_g_dataPack.5, r2
	mov #_g_dataBuffer.4, r5
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 76
	st.h r24, 0x00000004[r2]
	dispose 0x0000000C, 0x00000679, [r31]
_McuMpuSyncTaskMain:
	.stack _McuMpuSyncTaskMain = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 79
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 97
	movhi HIGHW1(#_g_mpuHandle.3), r0, r2
	ld.h LOWW(#_g_mpuHandle.3)[r2], r6
	mov 0x00000000, r8
	mov #_g_dataPack.5, r7
	jarl _MpuHalReceive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 98
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; entry.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	mov 0x00000000, r20
	mov r20, r21
.BB.LABEL.2_2:	; entry.if_break_bb143_crit_edge
	mov r20, r22
.BB.LABEL.2_3:	; entry.if_break_bb143_crit_edge
	mov r20, r23
	mov r20, r24
	br9 .BB.LABEL.2_21
.BB.LABEL.2_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 100
	movhi HIGHW1(#_g_dataPack.5), r0, r20
	ld.bu LOWW(#_g_dataPack.5)[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r20
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r20], r20
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb.if_break_bb143_crit_edge
	mov #_g_dataPack.5, r24
	mov 0x00000000, r20
	mov r20, r21
	mov r20, r22
	mov r20, r23
	br9 .BB.LABEL.2_21
.BB.LABEL.2_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 104
	movhi HIGHW1(#_g_dataPack.5), r0, r20
	ld.bu LOWW(#_g_dataPack.5)[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_8:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r20
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r20], r20
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; bb32.if_break_bb143_crit_edge
	mov #_g_dataPack.5, r21
	mov 0x00000000, r20
	br9 .BB.LABEL.2_2
.BB.LABEL.2_10:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 108
	movhi HIGHW1(#_g_dataPack.5), r0, r20
	ld.bu LOWW(#_g_dataPack.5)[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_11:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r20
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r20], r20
	addi 0xFFFFFFF0, r20, r21
	zxb r21
	cmp 0x00000002, r21
	bl9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; bb51
	addi 0xFFFFFFEA, r20, r0
	bz9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; bb51
	addi 0xFFFFFFE9, r20, r0
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; bb51.if_break_bb143_crit_edge
	mov #_g_dataPack.5, r22
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.2_3
.BB.LABEL.2_15:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 112
	movhi HIGHW1(#_g_dataPack.5), r0, r20
	ld.bu LOWW(#_g_dataPack.5)[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_16:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r20
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r20], r20
	cmp 0x00000004, r20
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_17:	; bb106.if_break_bb143_crit_edge
	mov #_g_dataPack.5, r23
	mov 0x00000000, r20
	mov r20, r21
	mov r20, r22
	mov r20, r24
	br9 .BB.LABEL.2_21
.BB.LABEL.2_18:	; if_else_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 116
	movhi HIGHW1(#_g_dataPack.5), r0, r20
	ld.bu LOWW(#_g_dataPack.5)[r20], r20
	addi 0xFFFFFFD0, r20, r0
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_19:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPack.5+0x00000001), r0, r20
	ld.bu LOWW(#_g_dataPack.5+0x00000001)[r20], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_20:	; if_then_bb138
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 118
	mov #_g_dataPack.5, r20
	mov r21, r22
	mov r21, r23
	mov r21, r24
.BB.LABEL.2_21:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 122
	movhi HIGHW1(#_g_mpuHandleFault.7), r0, r2
	ld.h LOWW(#_g_mpuHandleFault.7)[r2], r6
	mov 0x00000000, r8
	mov #_g_dataPackFault.9, r7
	jarl _MpuHalReceive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 123
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_25
.BB.LABEL.2_22:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 125
	mov #_g_dataPackFault.9, r25
	ld.bu 0x00000002[r25], r2
	ld.bu 0x00000001[r25], r8
	ld.bu 0x00000000[r25], r7
	andi 0x0000007F, r2, r9
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 127
	ld.bu 0x00000000[r25], r2
	addi 0xFFFFFFD0, r2, r0
	bnz9 .BB.LABEL.2_25
.BB.LABEL.2_23:	; bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 0
	movhi HIGHW1(#_g_dataPackFault.9+0x00000001), r0, r2
	ld.bu LOWW(#_g_dataPackFault.9+0x00000001)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_25
.BB.LABEL.2_24:	; if_then_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 129
	mov #_g_dataPackFault.9, r20
.BB.LABEL.2_25:	; if_break_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 134
	mov r21, r6
	jarl _ParameterSyncSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 136
	mov r22, r6
	jarl _StateSyncSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 138
	mov r24, r6
	jarl _TimeSyncSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 140
	mov r23, r6
	jarl _MpuPowerSyncSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 142
	mov r20, r6
	jarl _MpuDtcSyncSdkCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 144
	jarl _McuSendCpuFaultSyncCycleProcess, r31
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 146
	jarl _MpuHalUartPrintErrState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/app/mcu_cpu_sync/mcuMpuSyncTask.c", 149
	mov #_g_dataPack.5, r6
	jarl _FirmwareUpdateSdkCycleProcess, r31
	dispose 0x00000000, 0x00000679, [r31]
	.section .data, data
_g_syncParamList.1:
	.ds (1)
	.db 0x01,0x03,0x04,0x05,0x06,0x0B,0x0E,0x0F,0x10,0x13
	.align 2
_g_cycleTime.2:
	.dhw 0x0005
	.align 2
_g_mpuHandle.3:
	.dhw 0xFFFF
	.align 2
_g_mpuHandleFault.7:
	.dhw 0xFFFF
_g_dataBufferFault.8:
	.ds (100)
_g_recvDataBufferFault.10:
	.ds (100)
	.section .bss, bss
_g_dataBuffer.4:
	.ds (1024)
	.align 4
_g_dataPack.5:
	.ds (12)
_g_recvDataBuffer.6:
	.ds (1024)
	.align 4
_g_dataPackFault.9:
	.ds (12)
	.section .const, const
.STR.1:
	.db 0x73,0x79,0x6E,0x63,0x3A,0x20,0x61,0x69,0x64,0x20,0x30,0x78,0x25,0x30,0x32,0x58
	.db 0x2C,0x20,0x6D,0x69,0x64,0x20,0x30,0x78,0x25,0x30,0x32,0x58,0x2C,0x20,0x73,0x75
	.db 0x62,0x63,0x6F,0x6D,0x6D,0x6F,0x6E,0x64,0x20,0x30,0x78,0x25,0x30,0x32,0x58,0x0D
	.db 0x0A
	.ds (1)
