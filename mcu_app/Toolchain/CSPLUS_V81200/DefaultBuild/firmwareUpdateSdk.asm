#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\firmwareUpdateSdk.c -oDefaultBuild\firmwareUpdateSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_64a75752912f4de996aabb88c3136c54wwnq515m.rkq
#@	compiled at Fri Mar 27 09:50:59 2026

	.file "..\..\Srcode\sdk\source\firmwareUpdateSdk.c"

	$reg_mode 32
	.dbl_size 8

	.public _FirmwareUpdateSdkInit
	.extern _MpuHalOpen
	.extern _LogHalPrint
	.extern _MpuHalSetRxFilter
	.extern _MpuHalSetRxBuffer
	.public _FirmwareUpdateSdkCycleProcess
	.extern _MpuHalReceive
	.extern _memset
	.extern _EEIf_Write
	.extern _EEIf_Read
	.extern _MpuHalTransmit
	.extern _delay_us
	.extern _Mcu_PerformReset

	.section .text, text
_FirmwareUpdateSdkInit:
	.stack _FirmwareUpdateSdkInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 56
	prepare 0x00000041, 0x00000004
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 60
	st.b r2, 0x00000001[r3]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 61
	st.b r2, 0x00000002[r3]
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 62
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 64
	jarl _MpuHalOpen, r31
	movhi HIGHW1(#_g_otaMpuHandle.2), r0, r2
	st.h r10, LOWW(#_g_otaMpuHandle.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 65
	cmp 0x00000000, r10
	bp9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 67
	mov #.STR.1, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 68
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 71
	movhi HIGHW1(#_g_otaMpuHandle.2), r0, r20
	ld.h LOWW(#_g_otaMpuHandle.2)[r20], r6
	movea 0x00000001, r3, r7
	jarl _MpuHalSetRxFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 72
	ld.h LOWW(#_g_otaMpuHandle.2)[r20], r6
	movea 0x000000C8, r0, r8
	mov #_g_recvDataBuffer.3, r7
	jarl _MpuHalSetRxBuffer, r31
	dispose 0x00000004, 0x00000041, [r31]
_FirmwareUpdateSdkCycleProcess:
	.stack _FirmwareUpdateSdkCycleProcess = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 83
	prepare 0x00000479, 0x00000014
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 91
	bz17 .BB.LABEL.2_25
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	ld.w 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.2_25
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 96
	movhi HIGHW1(#_g_otaMpuHandle.2), r0, r2
	ld.h LOWW(#_g_otaMpuHandle.2)[r2], r6
	mov 0x00000000, r8
	mov r20, r7
	jarl _MpuHalReceive, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 97
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.2_25
.BB.LABEL.2_3:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 103
	ld.bu 0x00000000[r20], r21
	cmp 0x00000003, r21
	bnz17 .BB.LABEL.2_25
.BB.LABEL.2_4:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 105
	ld.bu 0x00000001[r20], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 106
	mov #_dataTxAraay.4.FirmwareUpdateSdkCycleProcess, r23
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	mov r23, r6
	jarl _memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 108
	ld.w 0x00000008[r20], r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 109
	ld.w 0x00000008[r20], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 111
	addi 0xFFFFFFFF, r22, r2
	cmp 0x00000008, r2
	bh17 .BB.LABEL.2_22
.BB.LABEL.2_5:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	shl 0x00000002, r2
	jmp #.SWITCH.LABEL.2_26[r2]
.SWITCH.LABEL.2_26:
	jr .BB.LABEL.2_6
	jr .BB.LABEL.2_10
	jr .BB.LABEL.2_11
	jr .BB.LABEL.2_22
	jr .BB.LABEL.2_22
	jr .BB.LABEL.2_22
	jr .BB.LABEL.2_22
	jr .BB.LABEL.2_20
	jr .BB.LABEL.2_21
.SWITCH.LABEL.2_26.END:
.BB.LABEL.2_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 114
	mov #.STR.1210, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 115
	movhi HIGHW1(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r2
	st.b r0, LOWW(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 118
	andi 0x000000FF, r2, r5
	mov #_dataTxAraay.4.FirmwareUpdateSdkCycleProcess, r6
	add r5, r6
	mov #_g_versionNumber.1, r7
	add r7, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000003[r6]
	add 0x00000001, r2
.BB.LABEL.2_8:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 117
	andi 0x000000FF, r2, r5
	cmp 0x0000000B, r5
	bl9 .BB.LABEL.2_7
.BB.LABEL.2_9:	; bb72.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	mov 0x0000000E, r2
	jr .BB.LABEL.2_23
.BB.LABEL.2_10:	; switch_clause_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 124
	mov #.STR.1211, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 125
	mov #_dataTxAraay.4.FirmwareUpdateSdkCycleProcess, r2
	st.b r0, 0x00000002[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 127
	st.b r5, 0x00000003[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 128
	st.b r5, 0x00000004[r2]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 129
	st.b r5, 0x00000005[r2]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 130
	st.b r5, 0x00000006[r2]
	mov 0x00000007, r2
	br9 .BB.LABEL.2_23
.BB.LABEL.2_11:	; switch_clause_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 135
	mov #.STR.1212, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 136
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000002[r2], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_12:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	ld.bu 0x00000003[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_13:	; bb105
	ld.w 0x00000008[r20], r2
	ld.bu 0x00000004[r2], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_14:	; bb121
	ld.bu 0x00000005[r2], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; bb121.if_break_bb139_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_else_bb
	mov 0x00000001, r2
.BB.LABEL.2_17:	; if_break_bb139
	movhi HIGHW1(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r5
	st.b r2, LOWW(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002)[r5]
	movea 0x000000C5, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 146
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 147
	st.w r0, 0x00000000[r3]
	mov 0x00000004, r23
	mov 0x00000002, r24
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 148
	mov r24, r6
	mov r23, r7
	jarl _EEIf_Write, r31
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 150
	mov r24, r6
	mov r23, r7
	jarl _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 151
	ld.w 0x00000000[r3], r8
	ld.w 0x00000004[r3], r7
	cmp r7, r8
	bnz9 .BB.LABEL.2_19
.BB.LABEL.2_18:	; if_break_bb139.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	mov 0x00000003, r2
	br9 .BB.LABEL.2_23
.BB.LABEL.2_19:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 153
	mov #.STR.1213, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 154
	movhi HIGHW1(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002)[r2]
	mov 0x00000003, r2
	br9 .BB.LABEL.2_23
.BB.LABEL.2_20:	; switch_clause_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 159
	mov #.STR.1214, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 160
	movhi HIGHW1(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r2
	st.b r0, LOWW(#_dataTxAraay.4.FirmwareUpdateSdkCycleProcess+0x00000002)[r2]
	mov 0x00000003, r2
	br9 .BB.LABEL.2_23
.BB.LABEL.2_21:	; switch_clause_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 164
	mov #.STR.1215, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 165
	mov #_dataTxAraay.4.FirmwareUpdateSdkCycleProcess, r2
	st.b r0, 0x00000002[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 167
	st.b r5, 0x00000003[r2]
	mov 0x00000004, r2
	br9 .BB.LABEL.2_23
.BB.LABEL.2_22:	; switch_clause_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 171
	mov #.STR.1216, r6
	mov r22, r7
	jarl _LogHalPrint, r31
	mov 0x00000000, r2
.BB.LABEL.2_23:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 176
	st.b r21, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 177
	st.b r22, 0x00000009[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 178
	ld.b 0x00000002[r20], r5
	st.b r5, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 179
	mov #_dataTxAraay.4.FirmwareUpdateSdkCycleProcess, r5
	st.w r5, 0x00000010[r3]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 180
	st.h r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 181
	zxb r2
	st.h r2, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 182
	movhi HIGHW1(#_g_otaMpuHandle.2), r0, r2
	ld.h LOWW(#_g_otaMpuHandle.2)[r2], r6
	movea 0x00000008, r3, r7
	jarl _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 184
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.2_25
.BB.LABEL.2_24:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 0
	movea 0x000003E8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 186
	jarl _delay_us, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 187
	jarl _Mcu_PerformReset, r31
.BB.LABEL.2_25:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/firmwareUpdateSdk.c", 190
	dispose 0x00000014, 0x00000479, [r31]
	.section .data, data
_g_versionNumber.1:
	.db 0x76,0x30,0x30,0x31,0x2E,0x30,0x30,0x32
	.ds (12)
_g_recvDataBuffer.3:
	.ds (200)
_dataTxAraay.4.FirmwareUpdateSdkCycleProcess:
	.ds (20)
	.section .bss, bss
	.align 2
_g_otaMpuHandle.2:
	.ds (2)
	.section .const, const
.STR.1:
	.db 0x4D,0x70,0x75,0x48,0x61,0x6C,0x4F,0x70,0x65,0x6E,0x20,0x66,0x61,0x69,0x6C,0x65
	.db 0x64,0x0D,0x0A
	.ds (1)
.STR.1210:
	.db 0x2D,0x2D,0x2D,0x30,0x31,0x20,0x52,0x65,0x61,0x64,0x20,0x56,0x65,0x72,0x73,0x69
	.db 0x6F,0x6E,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1211:
	.db 0x2D,0x2D,0x2D,0x30,0x32,0x20,0x47,0x65,0x74,0x20,0x53,0x65,0x65,0x64,0x2D,0x2D
	.db 0x2D,0x0D,0x0A
	.ds (1)
.STR.1212:
	.db 0x2D,0x2D,0x2D,0x30,0x33,0x20,0x55,0x6E,0x6C,0x6F,0x63,0x6B,0x20,0x46,0x6C,0x61
	.db 0x73,0x68,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1213:
	.db 0x53,0x45,0x54,0x20,0x45,0x45,0x49,0x46,0x20,0x45,0x52,0x52,0x4F,0x52,0x3A,0x20
	.db 0x30,0x78,0x25,0x30,0x38,0x58,0x2C,0x20,0x30,0x78,0x25,0x30,0x38,0x58,0x0D,0x0A
	.ds (1)
.STR.1214:
	.db 0x2D,0x2D,0x2D,0x30,0x38,0x20,0x53,0x6F,0x66,0x74,0x77,0x61,0x72,0x65,0x20,0x52
	.db 0x65,0x73,0x65,0x74,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1215:
	.db 0x2D,0x2D,0x2D,0x30,0x39,0x20,0x47,0x65,0x74,0x20,0x42,0x61,0x6E,0x6B,0x20,0x49
	.db 0x44,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1216:
	.db 0x4F,0x54,0x41,0x20,0x49,0x6E,0x76,0x61,0x6C,0x69,0x64,0x20,0x4D,0x49,0x44,0x3A
	.db 0x20,0x30,0x78,0x25,0x30,0x32,0x58,0x0D,0x0A
	.ds (1)
