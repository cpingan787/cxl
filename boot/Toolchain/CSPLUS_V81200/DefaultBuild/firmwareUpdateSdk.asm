#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\SrcCode\firmwareUpdateSdk.c -oDefaultBuild\firmwareUpdateSdk.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_41aea669cc874a7981622e6bfd7e16caqib5e3hy.kiu
#@	compiled at Thu Jul 16 13:41:54 2026

	.file "..\..\SrcCode\firmwareUpdateSdk.c"

	$reg_mode 22
	.dbl_size 4

	.extern _LogHalPrint
	.extern _FlsIf_Erase
	.extern _Crc32Init
	.extern _FlsIf_Write
	.extern _Crc32
	.extern _FlsIf_Read
	.extern _EEIf_Write
	.extern _EEIf_Read
	.public _FirmwareUpdateSdkCycleProcess
	.extern _memset
	.extern _FlsIf_Init
	.extern _TstSendRestartCanMsg
	.extern _MpuHalTransmit
	.extern _MpuHalTxTask
	.extern _MpuHalIsTxEmpty
	.extern _Mcu_PerformReset
	.public _FirmwareUpdate_SetMpuOtaFlag
	.public _FirmwareUpdate_GetMpuOtaFlag
	.public _FirmwareUpdate_UnlockMcuFlashAck

	.section .text, text
_FirmwareUpdateSdkEraseFlash.1:
	.stack _FirmwareUpdateSdkEraseFlash.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 57
	prepare 0x00000301, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 62
	ld.bu 0x00000002[r25], r7
	ld.bu 0x00000003[r25], r8
	ld.bu 0x00000004[r25], r9
	ld.bu 0x00000005[r25], r5
	st.w r5, 0x00000000[r3]
	mov #.STR.1, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 65
	ld.bu 0x00000002[r25], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	ld.bu 0x00000003[r25], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_2:	; bb39
	ld.bu 0x00000004[r25], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_3:	; bb53
	ld.bu 0x00000005[r25], r5
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 67
	ld.b 0x00000006[r25], r26
	ld.bu 0x00000007[r25], r5
	ld.bu 0x00000008[r25], r6
	ld.bu 0x00000009[r25], r7
	shl 0x00000018, r26
	shl 0x00000010, r5
	or r5, r26
	shl 0x00000008, r6
	or r6, r26
	or r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 68
	mov #.STR.1169, r6
	mov r26, r7
	jarl32 _LogHalPrint, r31
	mov 0x00080200, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 70
	cmp r5, r26
	movhi HIGHW1(#_flashAppFlag.3), r0, r5
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 72
	st.b r6, LOWW(#_flashAppFlag.3)[r5]
	movhi 0x00000011, r0, r7
	movhi 0x00000008, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 84
	jarl32 _FlsIf_Erase, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 86
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 88
	movhi HIGHW1(#_flashAppFlag.3), r0, r5
	ld.bu LOWW(#_flashAppFlag.3)[r5], r7
	mov #.STR.1171, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 89
	movhi HIGHW1(#_g_flashState.1), r0, r5
	mov 0x00000003, r6
	st.w r6, LOWW(#_g_flashState.1)[r5]
	mov 0x04C11DB7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 90
	mov #_g_crc32Object.6, r6
	jarl32 _Crc32Init, r31
	movhi HIGHW1(#_g_crcData.7), r0, r5
	st.w r10, LOWW(#_g_crcData.7)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 91
	movhi HIGHW1(#_g_otaCurSize.5), r0, r5
	st.w r0, LOWW(#_g_otaCurSize.5)[r5]
	mov 0x00000000, r10
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.1_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 76
	st.b r0, LOWW(#_flashAppFlag.3)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 77
	mov #.STR.1170, r6
	jarl32 _LogHalPrint, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 78
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.1_8:	; if_else_bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 95
	movhi HIGHW1(#_g_flashState.1), r0, r5
	st.w r0, LOWW(#_g_flashState.1)[r5]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 96
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.1_9:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 101
	movhi HIGHW1(#_g_flashState.1), r0, r5
	st.w r0, LOWW(#_g_flashState.1)[r5]
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 102
	dispose 0x00000004, 0x00000301, [r31]
_FirmwareUpdateSdkLoadCode.1:
	.stack _FirmwareUpdateSdkLoadCode.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 116
	prepare 0x00000381, 0x00000004
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 122
	bz17 .BB.LABEL.2_19
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 124
	movhi HIGHW1(#_g_flashState.1), r0, r5
	ld.w LOWW(#_g_flashState.1)[r5], r5
	cmp 0x00000003, r5
	bnz17 .BB.LABEL.2_18
.BB.LABEL.2_2:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 126
	ld.b 0x00000002[r25], r26
	ld.bu 0x00000003[r25], r5
	ld.bu 0x00000004[r25], r6
	ld.bu 0x00000005[r25], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 130
	ld.bu 0x00000000[r25], r9
	ld.bu 0x00000001[r25], r10
	st.w r10, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 126
	shl 0x00000018, r26
	shl 0x00000010, r5
	or r5, r26
	shl 0x00000008, r6
	or r6, r26
	or r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 128
	addi 0xFFFFFFF6, r7, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 130
	mov #.STR.1199, r6
	mov r26, r7
	mov r27, r8
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 133
	cmp 0x00000000, r27
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	movhi 0x00000010, r0, r5
	cmp r5, r27
	bh9 .BB.LABEL.2_7
.BB.LABEL.2_4:	; if_then_bb13
	mov 0x00080200, r5
	cmp r5, r26
	bl9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_then_bb13
	movhi 0x00000019, r0, r5
	cmp r5, r26
	bh9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb83
	mov r26, r5
	add r27, r5
	movhi 0x00000019, r0, r6
	cmp r6, r5
	bnh9 .BB.LABEL.2_15
.BB.LABEL.2_7:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 138
	cmp 0x00000000, r27
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	movhi 0x00000010, r0, r5
	cmp r5, r27
	bnh9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 140
	mov #.STR.1200, r6
	mov r27, r7
	br9 .BB.LABEL.2_12
.BB.LABEL.2_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0xFFF7FE00, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 142
	add r26, r5
	mov 0x0010FE01, r25
	cmp r25, r5
	bl9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 144
	mov #.STR.1201, r6
	mov r26, r7
.BB.LABEL.2_12:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	jarl32 _LogHalPrint, r31
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 182
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.2_13:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 146
	mov r26, r5
	add r27, r5
	movhi 0x00000019, r0, r25
	cmp r25, r5
	bnh9 .BB.LABEL.2_20
.BB.LABEL.2_14:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	movhi 0x00000019, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 148
	mov #.STR.1202, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 149
	mov r26, r7
	add r27, r7
	mov #.STR.1203, r6
	br9 .BB.LABEL.2_12
.BB.LABEL.2_15:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 155
	addi 0x0000000A, r25, r8
	mov r26, r6
	mov r27, r7
	jarl32 _FlsIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 157
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 160
	movhi HIGHW1(#_g_otaCurSize.5), r0, r5
	ld.w LOWW(#_g_otaCurSize.5)[r5], r6
	add r27, r6
	st.w r6, LOWW(#_g_otaCurSize.5)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 161
	movhi HIGHW1(#_g_crcData.7), r0, r25
	ld.w LOWW(#_g_crcData.7)[r25], r7
	mov #_g_crc32Object.6, r6
	mov r26, r8
	mov r27, r9
	jarl32 _Crc32, r31
	st.w r10, LOWW(#_g_crcData.7)[r25]
	mov 0x00000000, r10
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.2_17:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 165
	mov #.STR.1204, r6
	jarl32 _LogHalPrint, r31
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 166
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.2_18:	; if_else_bb168
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x00000003, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 172
	mov #.STR.1205, r6
	mov r5, r7
	jarl32 _LogHalPrint, r31
	mov 0x00000006, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 174
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.2_19:	; if_else_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 179
	mov #.STR.1206, r6
	jarl32 _LogHalPrint, r31
	mov 0x00000000, r10
	dispose 0x00000004, 0x00000381, [r31]
.BB.LABEL.2_20:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 182
	dispose 0x00000004, 0x00000381, [r31]
_FirmwareUpdateSdkCodeCheck.1:
	.stack _FirmwareUpdateSdkCodeCheck.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 192
	prepare 0x00000301, 0x0000000C
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 195
	st.w r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 197
	movhi HIGHW1(#_g_otaCurSize.5), r0, r5
	ld.w LOWW(#_g_otaCurSize.5)[r5], r7
	mov #.STR.1238, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 199
	movhi HIGHW1(#_g_crcData.7), r0, r5
	ld.w LOWW(#_g_crcData.7)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 200
	ld.b 0x00000002[r25], r7
	shl 0x00000018, r7
	ld.bu 0x00000003[r25], r6
	shl 0x00000010, r6
	or r6, r7
	ld.bu 0x00000004[r25], r6
	shl 0x00000008, r6
	or r6, r7
	ld.bu 0x00000005[r25], r6
	or r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 199
	not r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 202
	cmp r5, r7
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 204
	movhi HIGHW1(#_flashAppFlag.3), r0, r5
	ld.bu LOWW(#_flashAppFlag.3)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_2:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	movea 0x000000FE, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 206
	st.w r5, 0x00000004[r3]
	mov 0x00000004, r25
	movhi 0x00000008, r0, r26
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 207
	mov r26, r6
	mov r25, r7
	jarl32 _FlsIf_Write, r31
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 208
	mov r26, r6
	mov r25, r7
	jarl32 _FlsIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 209
	ld.w 0x00000008[r3], r7
	ld.w 0x00000004[r3], r5
	cmp r5, r7
	mov r10, r25
	mov r10, r26
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 211
	mov #.STR.1239, r6
	jarl32 _LogHalPrint, r31
.BB.LABEL.3_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 214
	cmp 0x00000000, r26
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 216
	mov #.STR.1240, r6
	mov r25, r7
	jarl32 _LogHalPrint, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 217
	dispose 0x0000000C, 0x00000301, [r31]
.BB.LABEL.3_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 221
	mov #.STR.1241, r6
	jarl32 _LogHalPrint, r31
	movea 0x000000D5, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 222
	st.w r5, 0x00000000[r3]
	mov 0x00000004, r25
	mov 0x00000002, r26
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 223
	mov r26, r6
	mov r25, r7
	jarl32 _EEIf_Write, r31
	movea 0x00000008, r3, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 225
	mov r26, r6
	mov r25, r7
	jarl32 _EEIf_Read, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 226
	ld.w 0x00000008[r3], r7
	ld.w 0x00000000[r3], r5
	cmp r5, r7
	bz9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 228
	mov #.STR.1242, r6
	jarl32 _LogHalPrint, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 229
	dispose 0x0000000C, 0x00000301, [r31]
.BB.LABEL.3_8:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 237
	movhi HIGHW1(#_g_crcData.7), r0, r5
	ld.w LOWW(#_g_crcData.7)[r5], r8
	mov #.STR.1243, r6
	jarl32 _LogHalPrint, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 238
	dispose 0x0000000C, 0x00000301, [r31]
.BB.LABEL.3_9:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 241
	dispose 0x0000000C, 0x00000301, [r31]
_FirmwareUpdateSdkCycleProcess:
	.stack _FirmwareUpdateSdkCycleProcess = 64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 252
	prepare 0x00000B87, 0x00000024
	addi 0x00000000, r7, r25
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 263
	st.w r5, 0x00000000[r3]
	bz17 .BB.LABEL.4_50
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	ld.w 0x00000008[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.4_50
.BB.LABEL.4_2:	; bb26
	ld.hu 0x00000004[r25], r5
	cmp 0x00000008, r5
	bl17 .BB.LABEL.4_50
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 269
	ld.bu 0x00000000[r25], r26
	cmp 0x00000003, r26
	bnz17 .BB.LABEL.4_50
.BB.LABEL.4_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 271
	ld.bu 0x00000001[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 272
	mov #_dataTxAraay.8.FirmwareUpdateSdkCycleProcess, r28
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	mov r28, r6
	jarl32 _memset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 274
	ld.w 0x00000008[r25], r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 275
	ld.w 0x00000008[r25], r5
	ld.b 0x00000001[r5], r5
	st.b r5, 0x00000001[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 276
	ld.bu 0x00000001[r28], r5
	ld.b 0x00000000[r28], r28
	shl 0x00000008, r28
	or r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 278
	addi 0xFFFFFFFF, r27, r5
	cmp 0x00000008, r5
	bh17 .BB.LABEL.4_38
.BB.LABEL.4_5:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	shl 0x00000002, r5
	jmp #.SWITCH.LABEL.4_51[r5]
.SWITCH.LABEL.4_51:
	jr .BB.LABEL.4_6
	jr .BB.LABEL.4_10
	jr .BB.LABEL.4_11
	jr .BB.LABEL.4_18
	jr .BB.LABEL.4_27
	jr .BB.LABEL.4_30
	jr .BB.LABEL.4_35
	jr .BB.LABEL.4_36
	jr .BB.LABEL.4_37
.SWITCH.LABEL.4_51.END:
.BB.LABEL.4_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 281
	mov #.STR.1349, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 282
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r5
	st.b r0, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r5]
	mov 0x00000000, r5
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 285
	andi 0x000000FF, r5, r6
	mov #_dataTxAraay.8.FirmwareUpdateSdkCycleProcess, r7
	add r6, r7
	mov #_g_versionNumber.2, r8
	add r8, r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000003[r7]
	add 0x00000001, r5
.BB.LABEL.4_8:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 284
	andi 0x000000FF, r5, r6
	cmp 0x0000000B, r6
	bl9 .BB.LABEL.4_7
.BB.LABEL.4_9:	; bb87.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x0000000E, r29
	jr .BB.LABEL.4_40
.BB.LABEL.4_10:	; switch_clause_bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 291
	mov #.STR.1350, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 292
	mov #_dataTxAraay.8.FirmwareUpdateSdkCycleProcess, r5
	st.b r0, 0x00000002[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 294
	st.b r6, 0x00000003[r5]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 295
	st.b r6, 0x00000004[r5]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 296
	st.b r6, 0x00000005[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 297
	st.b r6, 0x00000006[r5]
	mov 0x00000007, r29
	jr .BB.LABEL.4_40
.BB.LABEL.4_11:	; switch_clause_bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 302
	mov #.STR.1351, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 303
	ld.w 0x00000008[r25], r29
	ld.bu 0x00000002[r29], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; switch_clause_bb95.if_break_bb155_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x00000001, r29
	br9 .BB.LABEL.4_17
.BB.LABEL.4_13:	; bb104
	ld.bu 0x00000003[r29], r29
	cmp 0x00000002, r29
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; bb120
	ld.w 0x00000008[r25], r29
	ld.bu 0x00000004[r29], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_15:	; bb136
	ld.bu 0x00000005[r29], r29
	cmp 0x00000004, r29
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_16:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 305
	jarl32 _FlsIf_Init, r31
	mov 0x00000000, r29
.BB.LABEL.4_17:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r5
	st.b r29, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r5]
	jr .BB.LABEL.4_39
.BB.LABEL.4_18:	; switch_clause_bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 316
	mov #.STR.1352, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 317
	ld.w 0x00000008[r25], r29
	ld.bu 0x00000002[r29], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_19:	; bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	ld.bu 0x00000003[r29], r29
	cmp 0x00000002, r29
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_20:	; bb181
	ld.w 0x00000008[r25], r29
	ld.bu 0x00000004[r29], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_21:	; bb197
	ld.bu 0x00000005[r29], r29
	cmp 0x00000004, r29
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_22:	; if_then_bb214
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 319
	movhi HIGHW1(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess), r0, r29
	ld.hu LOWW(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess)[r29], r29
	andi 0x0000FFFF, r28, r5
	cmp r29, r5
	bz9 .BB.LABEL.4_24
.BB.LABEL.4_23:	; if_then_bb222
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 321
	jarl32 _FlsIf_Init, r31
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	st.b r10, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
	br9 .BB.LABEL.4_26
.BB.LABEL.4_24:	; if_else_bb224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 325
	mov #.STR.1353, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 326
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	st.b r0, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
	br9 .BB.LABEL.4_26
.BB.LABEL.4_25:	; if_else_bb226
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 331
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	mov 0x00000001, r5
	st.b r5, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
.BB.LABEL.4_26:	; if_break_bb227
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 334
	movhi HIGHW1(#_g_flashState.1), r0, r29
	mov 0x00000001, r5
	st.w r5, LOWW(#_g_flashState.1)[r29]
	br9 .BB.LABEL.4_39
.BB.LABEL.4_27:	; switch_clause_bb228
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 339
	movhi HIGHW1(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess), r0, r29
	ld.hu LOWW(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess)[r29], r29
	andi 0x0000FFFF, r28, r5
	cmp r29, r5
	bz9 .BB.LABEL.4_29
.BB.LABEL.4_28:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 341
	ld.w 0x00000008[r25], r6
	jarl _FirmwareUpdateSdkEraseFlash.1, r31
	br9 .BB.LABEL.4_34
.BB.LABEL.4_29:	; if_else_bb241
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 345
	mov #.STR.1354, r6
	br9 .BB.LABEL.4_33
.BB.LABEL.4_30:	; switch_clause_bb243
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 353
	movhi HIGHW1(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess), r0, r29
	ld.hu LOWW(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess)[r29], r29
	andi 0x0000FFFF, r28, r5
	cmp r29, r5
	bz9 .BB.LABEL.4_32
.BB.LABEL.4_31:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 355
	ld.hu 0x00000006[r25], r7
	ld.w 0x00000008[r25], r6
	jarl _FirmwareUpdateSdkLoadCode.1, r31
	br9 .BB.LABEL.4_34
.BB.LABEL.4_32:	; if_else_bb259
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 359
	mov #.STR.1355, r6
.BB.LABEL.4_33:	; if_else_bb259
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	jarl32 _LogHalPrint, r31
	mov 0x00000000, r10
.BB.LABEL.4_34:	; if_break_bb260
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	st.b r10, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
	br9 .BB.LABEL.4_39
.BB.LABEL.4_35:	; switch_clause_bb261
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 366
	ld.w 0x00000008[r25], r6
	jarl _FirmwareUpdateSdkCodeCheck.1, r31
	br9 .BB.LABEL.4_34
.BB.LABEL.4_36:	; switch_clause_bb266
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 371
	mov #.STR.1356, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 372
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	st.b r0, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
	br9 .BB.LABEL.4_39
.BB.LABEL.4_37:	; switch_clause_bb267
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 376
	mov #.STR.1357, r6
	jarl32 _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 377
	mov #_dataTxAraay.8.FirmwareUpdateSdkCycleProcess, r29
	st.b r0, 0x00000002[r29]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 378
	movhi HIGHW1(#_flashAppFlag.3), r0, r5
	ld.b LOWW(#_flashAppFlag.3)[r5], r5
	st.b r5, 0x00000003[r29]
	mov 0x00000004, r29
	br9 .BB.LABEL.4_40
.BB.LABEL.4_38:	; switch_clause_bb269
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 383
	movhi HIGHW1(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002), r0, r29
	mov 0xFFFFFFFF, r5
	st.b r5, LOWW(#_dataTxAraay.8.FirmwareUpdateSdkCycleProcess+0x00000002)[r29]
.BB.LABEL.4_39:	; switch_clause_bb269
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	mov 0x00000003, r29
.BB.LABEL.4_40:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 387
	cmp 0x00000008, r27
	bnz9 .BB.LABEL.4_49
.BB.LABEL.4_41:	; if_then_bb274
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 389
	jarl32 _TstSendRestartCanMsg, r31
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 394
	st.b r5, 0x00000008[r3]
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 395
	st.b r5, 0x00000009[r3]
	movea 0x00000019, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 396
	st.b r5, 0x0000000A[r3]
	movea 0x00000017, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 397
	st.w r5, 0x00000010[r3]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 398
	st.h r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 399
	st.h r5, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 400
	andi 0x000000FF, r10, r0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 406
	cmov 0x00000002, 0x00000001, r5, r5
	st.b r5, 0x00000017[r3]
	movea 0x00000008, r3, r7
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 408
	mov r5, r6
	jarl32 _MpuHalTransmit, r31
	mov 0x00000000, r30
	br9 .BB.LABEL.4_47
.BB.LABEL.4_42:	; bb298
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 411
	jarl32 _MpuHalTxTask, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 413
	jarl32 _MpuHalIsTxEmpty, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.4_48
.BB.LABEL.4_43:	; if_break_bb306
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 417
	st.w r0, 0x00000004[r3]
	br9 .BB.LABEL.4_45
.BB.LABEL.4_44:	; bb307
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 0
	ld.w 0x00000004[r3], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r3]
.BB.LABEL.4_45:	; bb310
	ld.w 0x00000004[r3], r5
	movea 0x000007D0, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.4_44
.BB.LABEL.4_46:	; bb315
	add 0x00000001, r30
.BB.LABEL.4_47:	; bb318
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 409
	cmp 0x0000000A, r30
	bl9 .BB.LABEL.4_42
.BB.LABEL.4_48:	; bb324
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 419
	jarl32 _Mcu_PerformReset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 420
	jarl32 _Mcu_PerformReset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 421
	jarl32 _Mcu_PerformReset, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 422
	mov #.STR.1358, r6
	jarl32 _LogHalPrint, r31
.BB.LABEL.4_49:	; if_break_bb325
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 426
	st.b r26, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 427
	st.b r27, 0x00000019[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 428
	ld.b 0x00000002[r25], r5
	st.b r5, 0x0000001A[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 429
	mov #_dataTxAraay.8.FirmwareUpdateSdkCycleProcess, r5
	st.w r5, 0x00000020[r3]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 430
	st.h r5, 0x0000001C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 431
	zxb r29
	st.h r29, 0x0000001E[r3]
	movea 0x00000018, r3, r7
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 432
	mov r5, r6
	jarl32 _MpuHalTransmit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 433
	movhi HIGHW1(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess), r0, r5
	st.h r28, LOWW(#_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess)[r5]
.BB.LABEL.4_50:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 436
	dispose 0x00000024, 0x00000B87, [r31]
_FirmwareUpdate_SetMpuOtaFlag:
	.stack _FirmwareUpdate_SetMpuOtaFlag = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 446
	movhi HIGHW1(#_g_mpuOtaFlag.4), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 448
	st.b r6, LOWW(#_g_mpuOtaFlag.4)[r5]
	jmp [r31]
_FirmwareUpdate_GetMpuOtaFlag:
	.stack _FirmwareUpdate_GetMpuOtaFlag = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 461
	movhi HIGHW1(#_g_mpuOtaFlag.4), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 462
	ld.bu LOWW(#_g_mpuOtaFlag.4)[r5], r10
	jmp [r31]
_FirmwareUpdate_UnlockMcuFlashAck:
	.stack _FirmwareUpdate_UnlockMcuFlashAck = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 472
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 474
	jarl _FirmwareUpdate_GetMpuOtaFlag, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 475
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 477
	mov #.STR.1383, r6
	jarl32 _LogHalPrint, r31
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/SrcCode/firmwareUpdateSdk.c", 479
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 4
_g_flashState.1:
	.ds (4)
_g_versionNumber.2:
	.db 0x76,0x30,0x30,0x31,0x2E,0x30,0x30,0x32
	.ds (12)
_flashAppFlag.3:
	.ds (1)
_g_mpuOtaFlag.4:
	.ds (1)
	.align 4
_g_otaCurSize.5:
	.ds (4)
	.align 4
_g_crcData.7:
	.dw 0xFFFFFFFF
	.align 2
_lastCmdCounter.9.FirmwareUpdateSdkCycleProcess:
	.dhw 0xFF11
_dataTxAraay.8.FirmwareUpdateSdkCycleProcess:
	.ds (20)
	.section .bss, bss
	.align 4
_g_crc32Object.6:
	.ds (1024)
	.section .const, const
.STR.1:
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x30,0x35,0x20,0x45,0x72,0x61,0x73,0x65,0x20,0x66,0x6C,0x61
	.db 0x73,0x68,0x20,0x63,0x6F,0x64,0x65,0x20,0x25,0x64,0x2C,0x25,0x64,0x2C,0x25,0x64
	.db 0x2C,0x25,0x64,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1169:
	.db 0x62,0x6F,0x6F,0x74,0x20,0x65,0x72,0x61,0x73,0x65,0x20,0x73,0x74,0x61,0x72,0x74
	.db 0x20,0x61,0x64,0x64,0x72,0x65,0x73,0x73,0x20,0x69,0x73,0x20,0x30,0x78,0x25,0x78
	.db 0x0D,0x0A
	.ds (1)
.STR.1170:
	.db 0x30,0x35,0x20,0x61,0x64,0x64,0x72,0x65,0x73,0x73,0x20,0x65,0x72,0x72,0x6F,0x72
	.db 0x0D,0x0A
	.ds (1)
.STR.1171:
	.db 0x45,0x72,0x61,0x73,0x65,0x20,0x42,0x61,0x6E,0x6B,0x20,0x25,0x64,0x20,0x73,0x75
	.db 0x63,0x63,0x65,0x73,0x73,0x0D,0x0A
	.ds (1)
.STR.1199:
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x30,0x36,0x20,0x61,0x64,0x64,0x72,0x3D,0x25,0x30,0x38,0x78
	.db 0x20,0x6C,0x65,0x6E,0x3D,0x25,0x64,0x20,0x63,0x6E,0x74,0x3D,0x25,0x30,0x32,0x78
	.db 0x20,0x25,0x30,0x32,0x78,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1200:
	.db 0x30,0x36,0x20,0x69,0x6E,0x76,0x61,0x6C,0x69,0x64,0x20,0x64,0x61,0x74,0x61,0x20
	.db 0x6C,0x65,0x6E,0x67,0x74,0x68,0x3A,0x20,0x25,0x64,0x0D,0x0A
	.ds (1)
.STR.1201:
	.db 0x30,0x36,0x20,0x61,0x64,0x64,0x72,0x65,0x73,0x73,0x20,0x6F,0x75,0x74,0x20,0x6F
	.db 0x66,0x20,0x72,0x61,0x6E,0x67,0x65,0x3A,0x20,0x25,0x30,0x38,0x78,0x0D,0x0A
	.ds (1)
.STR.1202:
	.db 0x46,0x4C,0x41,0x53,0x48,0x5F,0x41,0x50,0x50,0x5F,0x42,0x41,0x4E,0x4B,0x41,0x5F
	.db 0x45,0x4E,0x44,0x5F,0x41,0x44,0x44,0x52,0x45,0x53,0x53,0x20,0x3D,0x20,0x25,0x30
	.db 0x38,0x78,0x0D,0x0A
	.ds (1)
.STR.1203:
	.db 0x30,0x36,0x36,0x36,0x20,0x61,0x64,0x64,0x72,0x65,0x73,0x73,0x2B,0x6C,0x65,0x6E
	.db 0x67,0x74,0x68,0x20,0x65,0x78,0x63,0x65,0x65,0x64,0x73,0x20,0x41,0x20,0x42,0x61
	.db 0x6E,0x6B,0x20,0x62,0x6F,0x75,0x6E,0x64,0x61,0x72,0x79,0x3A,0x20,0x25,0x30,0x38
	.db 0x78,0x0D,0x0A
	.ds (1)
.STR.1204:
	.db 0x30,0x36,0x20,0x46,0x6C,0x73,0x5F,0x57,0x72,0x69,0x74,0x65,0x20,0x72,0x65,0x71
	.db 0x75,0x65,0x73,0x74,0x20,0x72,0x65,0x6A,0x65,0x63,0x74,0x65,0x64,0x0D,0x0A
	.ds (1)
.STR.1205:
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x30,0x36,0x20,0x49,0x6E,0x76,0x61,0x6C,0x69,0x64,0x20,0x66
	.db 0x6C,0x61,0x73,0x68,0x20,0x73,0x74,0x61,0x74,0x65,0x3A,0x20,0x25,0x64,0x20,0x28
	.db 0x65,0x78,0x70,0x65,0x63,0x74,0x65,0x64,0x3A,0x20,0x25,0x64,0x29,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x0D
	.db 0x0A
	.ds (1)
.STR.1206:
	.db 0x46,0x69,0x72,0x6D,0x77,0x61,0x72,0x65,0x55,0x70,0x64,0x61,0x74,0x65,0x53,0x64
	.db 0x6B,0x4C,0x6F,0x61,0x64,0x43,0x6F,0x64,0x65,0x3A,0x20,0x64,0x61,0x74,0x61,0x50
	.db 0x61,0x63,0x6B,0x20,0x69,0x73,0x20,0x4E,0x55,0x4C,0x4C,0x0D,0x0A
	.ds (1)
.STR.1238:
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x2D,0x2D,0x30,0x37,0x20,0x44,0x6F,0x77,0x6E,0x6C,0x6F,0x61,0x64,0x20
	.db 0x43,0x6F,0x6D,0x70,0x6C,0x65,0x74,0x65,0x20,0x73,0x69,0x7A,0x65,0x3D,0x25,0x64
	.db 0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.db 0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1239:
	.db 0x46,0x6C,0x73,0x49,0x66,0x5F,0x52,0x65,0x61,0x64,0x20,0x66,0x61,0x69,0x6C,0x65
	.db 0x64,0x20,0x25,0x30,0x38,0x78,0x0D,0x0A
	.ds (1)
.STR.1240:
	.db 0x41,0x50,0x50,0x20,0x41,0x43,0x54,0x49,0x56,0x45,0x20,0x66,0x61,0x69,0x6C,0x65
	.db 0x64,0x20,0x25,0x30,0x32,0x78,0x0D,0x0A
	.ds (1)
.STR.1241:
	.db 0x76,0x69,0x72,0x69,0x66,0x79,0x20,0x73,0x75,0x63,0x63,0x65,0x73,0x73,0x0D,0x0A
	.ds (1)
.STR.1242:
	.db 0x45,0x45,0x49,0x66,0x5F,0x52,0x65,0x61,0x64,0x20,0x66,0x61,0x69,0x6C,0x65,0x64
	.db 0x20,0x25,0x30,0x38,0x78,0x0D,0x0A
	.ds (1)
.STR.1243:
	.db 0x43,0x52,0x43,0x20,0x63,0x68,0x65,0x63,0x6B,0x20,0x66,0x61,0x69,0x6C,0x65,0x64
	.db 0x20,0x25,0x30,0x38,0x78,0x20,0x21,0x3D,0x20,0x25,0x30,0x38,0x78,0x0D,0x0A
	.ds (1)
.STR.1349:
	.db 0x2D,0x2D,0x2D,0x30,0x31,0x20,0x52,0x65,0x61,0x64,0x20,0x56,0x65,0x72,0x73,0x69
	.db 0x6F,0x6E,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1350:
	.db 0x2D,0x2D,0x2D,0x30,0x32,0x20,0x47,0x65,0x74,0x20,0x53,0x65,0x65,0x64,0x2D,0x2D
	.db 0x2D,0x0D,0x0A
	.ds (1)
.STR.1351:
	.db 0x2D,0x2D,0x2D,0x30,0x33,0x20,0x55,0x6E,0x6C,0x6F,0x63,0x6B,0x20,0x46,0x6C,0x61
	.db 0x73,0x68,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1352:
	.db 0x2D,0x2D,0x2D,0x30,0x34,0x20,0x45,0x6E,0x74,0x65,0x72,0x20,0x44,0x6F,0x77,0x6E
	.db 0x6C,0x6F,0x61,0x64,0x20,0x4D,0x6F,0x64,0x65,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1353:
	.db 0x53,0x61,0x6D,0x65,0x20,0x63,0x6D,0x64,0x20,0x63,0x6F,0x75,0x6E,0x74,0x65,0x72
	.db 0x0D,0x0A
	.ds (1)
.STR.1354:
	.db 0x53,0x61,0x6D,0x65,0x20,0x63,0x6D,0x64,0x20,0x63,0x6F,0x75,0x6E,0x74,0x65,0x72
	.db 0x0D,0x0A
	.ds (1)
.STR.1355:
	.db 0x53,0x61,0x6D,0x65,0x20,0x63,0x6D,0x64,0x20,0x63,0x6F,0x75,0x6E,0x74,0x65,0x72
	.db 0x0D,0x0A
	.ds (1)
.STR.1356:
	.db 0x2D,0x2D,0x2D,0x30,0x38,0x20,0x52,0x65,0x73,0x65,0x74,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1357:
	.db 0x2D,0x2D,0x2D,0x30,0x39,0x20,0x47,0x65,0x74,0x20,0x42,0x61,0x6E,0x6B,0x20,0x49
	.db 0x64,0x2D,0x2D,0x2D,0x0D,0x0A
	.ds (1)
.STR.1358:
	.db 0x2D,0x2D,0x2D,0x52,0x65,0x73,0x65,0x74,0x20,0x45,0x52,0x52,0x4F,0x52,0x2D,0x2D
	.db 0x2D,0x0D,0x0A
	.ds (1)
.STR.1383:
	.db 0x4D,0x70,0x75,0x20,0x4F,0x54,0x41,0x20,0x54,0x6F,0x20,0x42,0x6F,0x6F,0x74,0x6C
	.db 0x6F,0x61,0x64,0x65,0x72,0x0D,0x0A
	.ds (1)
