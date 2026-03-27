#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\sdk\source\timeSyncSdk.c -oDefaultBuild\timeSyncSdk.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b2cdb38a5ec0436f960147d8ea9a0137sspbdagi.fij
#@	compiled at Fri Mar 27 09:50:56 2026

	.file "..\..\Srcode\sdk\source\timeSyncSdk.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_SendSignal
	.public _TimeSyncSdkInit
	.public _TimeSyncSdkCycleProcess
	.extern _TimerHalSetRtcTime
	.public _TimeSyncSdkGetRealTime
	.extern _TimerHalGetRtcTime
	.public _TimeSyncSdkGetUtcTime

	.section .text, text
_TimeSyncGetLocalTimeFromRtc.1:
	.stack _TimeSyncGetLocalTimeFromRtc.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 37
	prepare 0x00000FFF, 0x00000000
	mov 0x386D4380, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 42
	cmp r2, r6
	ld.w 0x00000034[r3], r20
	ld.w 0x00000030[r3], r21
	mov r9, r22
	bl17 .BB.LABEL.1_23
.BB.LABEL.1_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 47
	mulhi 0x00000E10, r7, r2
	add r2, r6
	mov 0xC792BC80, r2
	mov r6, r23
	add r2, r23
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 48
	mov r23, r24
	divu r2, r24, r0
	mov 0x00000000, r2
	movea 0x000007D0, r0, r5
	br9 .BB.LABEL.1_9
.BB.LABEL.1_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x00000190, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 53
	mov r5, r7
	divhu r6, r7, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	andi 0x00000003, r5, r0
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_4:	; bb34
	movea 0x00000064, r0, r6
	mov r5, r7
	divhu r6, r7, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb53
	movea 0x0000016E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 55
	cmp r6, r24
	sbf 0x00000001, r0, r2, r0
	bl9 .BB.LABEL.1_10
.BB.LABEL.1_6:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 57
	addi 0xFFFFFE92, r24, r24
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 67
	addi 0xFFFFFE93, r24, r24
.BB.LABEL.1_8:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xFFFFFFFF, r6
	adf 0x00000001, r6, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 69
	add 0x00000001, r5
	movea 0x00000833, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 70
	cmp r6, r5
	bh9 .BB.LABEL.1_23
.BB.LABEL.1_9:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x0000016C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 51
	cmp r24, r6
	sbf 0x00000001, r2, r0, r0
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_10:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 75
	st.w r5, 0x00000000[r8]
	mov 0x00000000, r25
	br9 .BB.LABEL.1_21
.BB.LABEL.1_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 79
	ld.w 0x00000000[r8], r5
	movea 0x00000190, r0, r6
	mov r5, r7
	divhu r6, r7, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_12:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	andi 0x00000003, r5, r0
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; bb97
	movea 0x00000064, r0, r6
	divhu r6, r5, r5
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; bb97
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_15:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 92
	mov #_g_monTable.1, r5
	add r25, r5
	ld.bu 0x00000000[r5], r5
	cmp r5, r24
	sbf 0x00000001, r0, r2, r0
	bl9 .BB.LABEL.1_22
.BB.LABEL.1_16:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 94
	sub r5, r24
	sbf 0x00000001, r6, r2, r2
	br9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_18:	; if_then_bb129
	movea 0x0000001D, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 81
	cmp r5, r24
	sbf 0x00000001, r0, r2, r0
	bl9 .BB.LABEL.1_22
.BB.LABEL.1_19:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 83
	addi 0xFFFFFFE3, r24, r24
	adf 0x00000001, r5, r2, r2
.BB.LABEL.1_20:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 101
	add 0x00000001, r25
.BB.LABEL.1_21:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x0000001B, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 77
	cmp r24, r5
	sbf 0x00000001, r2, r0, r0
	bl9 .BB.LABEL.1_11
.BB.LABEL.1_22:	; bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0x00015180, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 105
	divu r2, r23, r23
	mov 0x00000000, r26
	movea 0x00000E10, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 106
	mov r23, r6
	mov r26, r7
	mov r27, r8
	mov r26, r9
	jarl __COM_udiv64, r31
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 107
	mov r23, r6
	mov r26, r7
	mov r27, r8
	mov r26, r9
	jarl __COM_urem64, r31
	mov r10, r23
	mov r11, r27
	movea 0x0000003C, r0, r29
	mov r23, r6
	mov r27, r7
	mov r29, r8
	mov r26, r9
	jarl __COM_udiv64, r31
	mov r10, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 108
	mov r23, r6
	mov r27, r7
	mov r29, r8
	mov r26, r9
	jarl __COM_urem64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 103
	add 0x00000001, r25
	st.b r25, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 104
	add 0x00000001, r24
	st.b r24, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 106
	st.b r28, 0x00000000[r20]
	ld.w 0x00000038[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 107
	st.b r30, 0x00000000[r2]
	ld.w 0x0000003C[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 108
	st.b r10, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 109
	mov r26, r10
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.1_23:	; bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 110
	dispose 0x00000000, 0x00000FFF, [r31]
_TimeSyncSdkSendGnssTimeSignal.1:
	.stack _TimeSyncSdkSendGnssTimeSignal.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 120
	prepare 0x00000001, 0x0000001C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 122
	st.w r0, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 123
	st.b r0, 0x00000017[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 124
	st.b r0, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 125
	st.b r0, 0x00000015[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 126
	st.b r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 127
	st.b r0, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 128
	mov #_g_gnssData.2, r2
	ld.b 0x00000007[r2], r5
	st.b r5, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 129
	ld.bu 0x00000004[r2], r7
	ld.w 0x00000000[r2], r6
	movea 0x00000013, r3, r2
	st.w r2, 0x0000000C[r3]
	movea 0x00000014, r3, r2
	st.w r2, 0x00000008[r3]
	movea 0x00000015, r3, r2
	st.w r2, 0x00000004[r3]
	movea 0x00000016, r3, r2
	st.w r2, 0x00000000[r3]
	movea 0x00000017, r3, r9
	movea 0x00000018, r3, r8
	jarl _TimeSyncGetLocalTimeFromRtc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 130
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 132
	st.b r0, 0x00000012[r3]
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x00000012, r3, r7
	movea 0x00000034, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 144
	dispose 0x0000001C, 0x00000001, [r31]
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x00000018, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 136
	ld.b 0x00000000[r2], r2
	movea 0x00000030, r2, r2
	st.b r2, 0x00000011[r3]
	movea 0x00000011, r3, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 137
	jarl _Com_SendSignal, r31
	movea 0x00000017, r3, r7
	movea 0x00000039, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 138
	jarl _Com_SendSignal, r31
	movea 0x00000016, r3, r7
	movea 0x00000038, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 139
	jarl _Com_SendSignal, r31
	movea 0x00000015, r3, r7
	movea 0x00000037, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 140
	jarl _Com_SendSignal, r31
	movea 0x00000014, r3, r7
	movea 0x00000036, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 141
	jarl _Com_SendSignal, r31
	movea 0x00000013, r3, r7
	movea 0x00000035, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 142
	jarl _Com_SendSignal, r31
	br9 .BB.LABEL.2_2
_TimeSyncSdkSendNtpTimeSignal.1:
	.stack _TimeSyncSdkSendNtpTimeSignal.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 154
	prepare 0x00000001, 0x0000001C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 156
	st.w r0, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 157
	st.b r0, 0x00000017[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 158
	st.b r0, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 159
	st.b r0, 0x00000015[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 160
	st.b r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 161
	st.b r0, 0x00000013[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 162
	mov #_g_ntpData.3, r2
	ld.b 0x00000007[r2], r5
	st.b r5, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 163
	ld.bu 0x00000004[r2], r7
	ld.w 0x00000000[r2], r6
	movea 0x00000013, r3, r2
	st.w r2, 0x0000000C[r3]
	movea 0x00000014, r3, r2
	st.w r2, 0x00000008[r3]
	movea 0x00000015, r3, r2
	st.w r2, 0x00000004[r3]
	movea 0x00000016, r3, r2
	st.w r2, 0x00000000[r3]
	movea 0x00000017, r3, r9
	movea 0x00000018, r3, r8
	jarl _TimeSyncGetLocalTimeFromRtc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 164
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 166
	st.b r0, 0x00000012[r3]
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x00000012, r3, r7
	movea 0x0000003F, r0, r6
	jarl _Com_SendSignal, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 178
	dispose 0x0000001C, 0x00000001, [r31]
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movea 0x00000018, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 170
	ld.b 0x00000000[r2], r2
	movea 0x00000030, r2, r2
	st.b r2, 0x00000011[r3]
	movea 0x00000011, r3, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 171
	jarl _Com_SendSignal, r31
	movea 0x00000017, r3, r7
	movea 0x0000003A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 172
	jarl _Com_SendSignal, r31
	movea 0x00000016, r3, r7
	movea 0x0000003D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 173
	jarl _Com_SendSignal, r31
	movea 0x00000015, r3, r7
	movea 0x0000003B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 174
	jarl _Com_SendSignal, r31
	movea 0x00000014, r3, r7
	movea 0x0000003E, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 175
	jarl _Com_SendSignal, r31
	movea 0x00000013, r3, r7
	movea 0x0000003C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 176
	jarl _Com_SendSignal, r31
	br9 .BB.LABEL.3_2
_TimeSyncSdkInit:
	.stack _TimeSyncSdkInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 189
	add 0xFFFFFFF4, r3
	mov 0x0000000B, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 191
	mov #.STR.1, r5
	movea 0x00000001, r3, r6
	add r6, r2
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r6]
	add 0x00000001, r5
	add 0x00000001, r6
.BB.LABEL.4_2:	; entry
	cmp r6, r2
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 195
	movhi HIGHW1(#_g_gnssData.2+0x00000007), r0, r2
	st.b r0, LOWW(#_g_gnssData.2+0x00000007)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 196
	movhi HIGHW1(#_g_ntpData.3+0x00000007), r0, r2
	st.b r0, LOWW(#_g_ntpData.3+0x00000007)[r2]
	dispose 0x0000000C, 0x00000000, [r31]
_TimeSyncSdkCycleProcess:
	.stack _TimeSyncSdkCycleProcess = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 209
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 224
	cmp 0x00000000, r6
	bz17 .BB.LABEL.5_15
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	ld.w 0x00000008[r6], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.5_15
.BB.LABEL.5_2:	; bb22
	ld.hu 0x00000006[r6], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.5_15
.BB.LABEL.5_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 226
	ld.w 0x00000008[r6], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 233
	ld.bu 0x00000005[r20], r2
	andi 0x000000F0, r2, r5
	add 0xFFFFFFF0, r5
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_4:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 235
	andi 0x0000000F, r2, r2
	mov #_g_gnssData.2, r5
	st.b r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 236
	ld.bu 0x00000005[r20], r2
	shr 0x00000004, r2
	st.b r2, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 237
	ld.bu 0x00000006[r5], r2
	cmp 0x00000000, r2
	mov #_g_gnssData.2, r2
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 239
	st.b r0, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 240
	st.w r0, 0x00000000[r2]
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 244
	st.b r5, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 245
	ld.b 0x00000000[r20], r6
	shl 0x00000018, r6
	ld.bu 0x00000001[r20], r5
	shl 0x00000010, r5
	or r5, r6
	ld.bu 0x00000002[r20], r5
	shl 0x00000008, r5
	or r5, r6
	ld.bu 0x00000003[r20], r5
	or r5, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 246
	jarl _TimerHalSetRtcTime, r31
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 248
	ld.b 0x00000004[r20], r2
	movhi HIGHW1(#_g_gnssData.2+0x00000004), r0, r20
	st.b r2, LOWW(#_g_gnssData.2+0x00000004)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 249
	jarl _TimeSyncSdkSendGnssTimeSignal.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_8:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 251
	andi 0x000000F0, r2, r5
	addi 0xFFFFFFE0, r5, r0
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_9:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 253
	andi 0x0000000F, r2, r2
	mov #_g_ntpData.3, r5
	st.b r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 254
	ld.bu 0x00000005[r20], r2
	shr 0x00000004, r2
	st.b r2, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 255
	ld.bu 0x00000006[r5], r2
	cmp 0x00000000, r2
	mov #_g_ntpData.3, r2
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 257
	st.b r0, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 258
	st.w r0, 0x00000000[r2]
	br9 .BB.LABEL.5_13
.BB.LABEL.5_11:	; if_else_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 262
	st.b r5, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 263
	ld.b 0x00000000[r20], r6
	shl 0x00000018, r6
	ld.bu 0x00000001[r20], r5
	shl 0x00000010, r5
	or r5, r6
	ld.bu 0x00000002[r20], r5
	shl 0x00000008, r5
	or r5, r6
	ld.bu 0x00000003[r20], r5
	or r5, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 264
	movhi HIGHW1(#_g_gnssData.2+0x00000007), r0, r2
	ld.bu LOWW(#_g_gnssData.2+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 266
	jarl _TimerHalSetRtcTime, r31
.BB.LABEL.5_13:	; if_break_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 269
	ld.b 0x00000004[r20], r2
	movhi HIGHW1(#_g_ntpData.3+0x00000004), r0, r5
	st.b r2, LOWW(#_g_ntpData.3+0x00000004)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 270
	jarl _TimeSyncSdkSendNtpTimeSignal.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_14:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 274
	movhi HIGHW1(#_g_ntpData.3+0x00000007), r0, r2
	st.b r0, LOWW(#_g_ntpData.3+0x00000007)[r2]
.BB.LABEL.5_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 280
	dispose 0x00000000, 0x00000041, [r31]
_TimeSyncSdkGetRealTime:
	.stack _TimeSyncSdkGetRealTime = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 337
	prepare 0x00000679, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 339
	st.w r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 340
	movhi HIGHW1(#_g_ntpData.3+0x00000007), r0, r2
	ld.bu LOWW(#_g_ntpData.3+0x00000007)[r2], r2
	cmp 0x00000000, r2
	ld.w 0x00000038[r3], r20
	ld.w 0x00000034[r3], r21
	ld.w 0x00000030[r3], r22
	mov r9, r23
	mov r8, r24
	mov r7, r25
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movhi HIGHW1(#_g_gnssData.2+0x00000007), r0, r2
	ld.bu LOWW(#_g_gnssData.2+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; bb.bb44_crit_edge
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_break_bb
	movea 0x00000010, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 344
	jarl _TimerHalGetRtcTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 345
	movhi HIGHW1(#_g_gnssData.2+0x00000004), r0, r2
	ld.bu LOWW(#_g_gnssData.2+0x00000004)[r2], r7
	ld.w 0x00000010[r3], r6
	st.w r20, 0x0000000C[r3]
	st.w r21, 0x00000008[r3]
	st.w r22, 0x00000004[r3]
	st.w r23, 0x00000000[r3]
	mov r25, r8
	mov r24, r9
	jarl _TimeSyncGetLocalTimeFromRtc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 346
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_break_bb.bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0x00000001, r10
.BB.LABEL.6_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 388
	sxh r10
	dispose 0x00000014, 0x00000679, [r31]
.BB.LABEL.6_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 352
	dispose 0x00000014, 0x00000679, [r31]
_TimeSyncSdkGetUtcTime:
	.stack _TimeSyncSdkGetUtcTime = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 400
	prepare 0x00000041, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 402
	st.w r0, 0x00000000[r3]
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 404
	jarl _TimerHalGetRtcTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 405
	movhi HIGHW1(#_g_ntpData.3+0x00000007), r0, r2
	ld.bu LOWW(#_g_ntpData.3+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	movhi HIGHW1(#_g_gnssData.2+0x00000007), r0, r2
	ld.bu LOWW(#_g_gnssData.2+0x00000007)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 408
	ld.w 0x00000000[r3], r2
	mov 0xC792BC80, r5
	add r5, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 409
	st.w r2, 0x00000000[r20]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 410
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 420
	ld.w 0x00000000[r3], r2
	mov 0x386D4380, r5
	cmp r5, r2
	bl9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xC792BC80, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 425
	add r5, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 426
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 427
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.7_5:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/sdk/source/timeSyncSdk.c", 428
	dispose 0x00000004, 0x00000041, [r31]
	.section .const, const
_g_monTable.1:
	.db 0x1F,0x1C,0x1F,0x1E,0x1F,0x1E,0x1F,0x1F,0x1E,0x1F,0x1E,0x1F
.STR.1:
	.db 0x74,0x69,0x6D,0x65,0x73,0x79,0x6E,0x63,0x73,0x64,0x6B
	.section .bss, bss
	.align 4
_g_gnssData.2:
	.ds (8)
	.align 4
_g_ntpData.3:
	.ds (8)
