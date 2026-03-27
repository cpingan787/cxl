#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\StbM\StbM.c -oDefaultBuild\StbM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8728038f7c8a43b38e2962161a7424c2qhu2wubp.1hp
#@	compiled at Fri Mar 27 09:50:20 2026

	.file "..\..\Bsw\SystemServices\StbM\StbM.c"

	$reg_mode 32
	.dbl_size 8

	.public _StbM_Init
	.extern _Det_ReportError
	.extern _Gpt_StartTimer
	.public _StbM_GetCurrentTime
	.extern _SchM_Enter_StbM_Context
	.extern _SchM_Exit_StbM_Context
	.public _StbM_GetCurrentVirtualLocalTime
	.public _StbM_SetGlobalTime
	.public _StbM_UpdateGlobalTime
	.public _StbM_SetUserData
	.public _StbM_SetOffset
	.public _StbM_GetOffset
	.public _StbM_BusGetCurrentTime
	.public _StbM_BusSetGlobalTime
	.public _StbM_GetRateDeviation
	.public _StbM_SetRateCorrection
	.public _StbM_GetTimeLeap
	.public _StbM_GetTimeBaseStatus
	.public _StbM_TriggerTimeTransmission
	.public _StbM_GetTimeBaseUpdateCounter
	.public _StbM_MainFunction
	.extern _Gpt_GetTimeElapsed

	.section .text, text
_StbM_Init:
	.stack _StbM_Init = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 233
	prepare 0x00000079, 0x00000018
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 240
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000011, r0, r9
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 242
	mov r7, r8
	jarl _Det_ReportError, r31
	dispose 0x00000018, 0x00000079, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 247
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	st.w r6, LOWW(#_StbM_ConfigData.2)[r2]
	mov 0x00000000, r20
	jr .BB.LABEL.1_16
.BB.LABEL.1_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 250
	andi 0x0000FFFF, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 252
	mov r21, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	st.b r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 258
	st.b r0, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 260
	st.b r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 261
	st.b r0, 0x00000003[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 262
	st.b r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 263
	st.b r0, 0x00000005[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 265
	st.b r0, 0x00000030[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 266
	st.w r0, 0x00000038[r5]
	st.w r0, 0x00000034[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 267
	st.w r0, 0x0000001C[r5]
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 268
	st.w r0, 0x00000024[r5]
	st.w r0, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 269
	st.w r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 270
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 271
	st.h r0, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 272
	st.w r0, 0x0000002C[r5]
	movea 0x00000018, r0, r2
	mov r3, r6
	mov #.STR.1, r7
	mov r2, r8
	add r6, r8
	mov r6, r9
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb
	ld23.dw 0x00000000[r7], r10
	st23.dw r10, 0x00000000[r9]
	add 0x00000008, r7
	add 0x00000008, r9
.BB.LABEL.1_5:	; bb
	cmp r9, r8
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 273
	movea 0x0000003C, r5, r7
	add r7, r2
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r7]
	add 0x00000008, r6
	add 0x00000008, r7
.BB.LABEL.1_8:	; bb
	cmp r7, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 274
	st.h r0, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 295
	mov r21, r2
	mul 0x0000003C, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 292
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r5
	ld.w LOWW(#_StbM_ConfigData.2)[r5], r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 295
	add r22, r2
	ld.w 0x00000028[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 296
	ld.w 0x0000000C[r2], r5
	cmp 0x00000001, r5
	mov r21, r23
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 298
	ld.w 0x00000010[r2], r7
	ld.bu 0x00000008[r2], r6
	jarl _Gpt_StartTimer, r31
.BB.LABEL.1_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 303
	mov r23, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	st.b r0, 0x0000005C[r5]
	mov 0x000F4240, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 304
	st.w r2, 0x00000054[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 305
	st.w r0, 0x00000058[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 306
	mul 0x0000003C, r21, r0
	add r21, r22
	ld.w 0x00000024[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 307
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_12:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 309
	mul 0x0000006C, r23, r0
	mov #_StbM_TimeBase.1, r5
	add r23, r5
	andi 0x0000FFFF, r20, r6
	shl 0x00000005, r6
	mov #_StbM_RateCorrection.3, r7
	add r6, r7
	st.w r7, 0x00000060[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 310
	st.w r0, 0x00000064[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 311
	st.w r0, 0x00000068[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 309
	movea 0x00000060, r5, r5
	mov 0x00000000, r6
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 314
	andi 0x0000FFFF, r6, r7
	shl 0x00000004, r7
	ld.w 0x00000000[r5], r8
	add r7, r8
	st.w r0, 0x00000004[r8]
	st.w r0, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 315
	ld.w 0x00000000[r5], r8
	add r7, r8
	st.w r0, 0x0000000C[r8]
	st.w r0, 0x00000008[r8]
	add 0x00000001, r6
.BB.LABEL.1_14:	; bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 312
	andi 0x0000FFFF, r6, r7
	ld.hu 0x0000001C[r2], r8
	cmp r8, r7
	bl9 .BB.LABEL.1_13
.BB.LABEL.1_15:	; if_break_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	add 0x00000001, r20
.BB.LABEL.1_16:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 248
	andi 0x0000FFFF, r20, r0
	bz17 .BB.LABEL.1_3
.BB.LABEL.1_17:	; bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 334
	movhi HIGHW1(#_StbM_InitStatus.4), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_StbM_InitStatus.4)[r2]
	dispose 0x00000018, 0x00000079, [r31]
_StbM_GetCurrentTime:
	.stack _StbM_GetCurrentTime = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 381
	prepare 0x00000679, 0x00000018
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000000, r8
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 388
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 389
	cmp 0x00000001, r10
	mov r10, r23
	bz17 .BB.LABEL.2_19
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 393
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb27
	movea 0x00000010, r0, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 395
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 396
	dispose 0x00000018, 0x00000679, [r31]
.BB.LABEL.2_4:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 401
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 403
	st.w r0, 0x00000014[r3]
	st.w r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 405
	add 0xFFFFFFF0, r20
	zxh r20
	cmp 0x0000000F, r20
	mov r10, r20
	bnh9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_else_bb29.if_break_bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r24
	mov r24, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 407
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r24
	ld.w LOWW(#_StbM_ConfigData.2)[r24], r24
	ld.w 0x00000000[r24], r24
	mov r20, r25
	mul 0x0000003C, r25, r0
	add r25, r24
	ld.w 0x00000020[r24], r24
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_then_bb49.if_break_bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r24
	mov 0x00000001, r23
	mov r24, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 409
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 410
	mov r20, r24
	mul 0x0000006C, r24, r0
	mov #_StbM_TimeBase.1, r25
	add r24, r25
	ld.w 0x00000014[r25], r9
	ld.w 0x00000010[r25], r8
	ld.w 0x0000000C[r25], r7
	ld.w 0x00000008[r25], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	mov r10, r24
	mov r11, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 411
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 412
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	mul 0x0000003C, r20, r0
	add r20, r2
	ld.w 0x00000020[r2], r20
	ld.hu 0x00000000[r20], r20
.BB.LABEL.2_9:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 422
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 424
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	mov r10, r23
.BB.LABEL.2_11:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 427
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.2_19
.BB.LABEL.2_12:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 430
	mov r20, r6
	jarl _StbM_GetGlobalTime64.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 431
	ld.w 0x00000014[r3], r2
	ld.w 0x00000010[r3], r5
	add r24, r5
	adf 0x00000001, r25, r2, r2
	st.w r2, 0x00000014[r3]
	st.w r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 432
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 433
	ld.w 0x00000014[r3], r8
	ld.w 0x00000010[r3], r7
	mov r3, r24
	mov r24, r6
	jarl _StbM_64TimeToGTTime.1, r31
	movea 0x00000010, r0, r2
	add r21, r2
	mov r21, r5
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; if_then_bb92
	ld23.dw 0x00000000[r24], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r24
	add 0x00000008, r5
.BB.LABEL.2_14:	; if_then_bb92
	cmp r5, r2
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_15:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 434
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	addi 0x00000002, r2, r5
	mov 0x00000004, r6
	add r22, r6
	br9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_then_bb92
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r22]
	add 0x00000001, r5
	add 0x00000001, r22
.BB.LABEL.2_17:	; if_then_bb92
	cmp r22, r6
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_18:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 435
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 436
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.2_19:	; if_break_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 440
	dispose 0x00000018, 0x00000679, [r31]
_StbM_GetCurrentVirtualLocalTime:
	.stack _StbM_GetCurrentVirtualLocalTime = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 453
	prepare 0x00000071, 0x00000008
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 457
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r8
	movea 0x0000001E, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 461
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 462
	cmp 0x00000001, r10
	mov r10, r22
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 466
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r0, r9
	movea 0x0000001E, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 468
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 473
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.3_3:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 478
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 479
	add 0xFFFFFFF0, r20
	zxh r20
	cmp 0x0000000F, r20
	bh9 .BB.LABEL.3_7
.BB.LABEL.3_4:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 481
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r5
	mov r10, r6
	mul 0x0000003C, r6, r0
	add r6, r5
	ld.w 0x00000020[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb35.if_break_bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 483
	ld.w 0x00000000[r2], r2
	mul 0x0000003C, r10, r0
	add r10, r2
	ld.w 0x00000020[r2], r2
	ld.hu 0x00000000[r2], r10
.BB.LABEL.3_7:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 492
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 494
	mov r10, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	mov r10, r22
.BB.LABEL.3_9:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 496
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 498
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 499
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000000[r21]
.BB.LABEL.3_11:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 503
	dispose 0x00000008, 0x00000071, [r31]
_StbM_SetGlobalTime:
	.stack _StbM_SetGlobalTime = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 520
	prepare 0x00000479, 0x0000001C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 526
	st.w r0, 0x00000018[r3]
	st.w r0, 0x00000014[r3]
	mov 0x00000000, r8
	mov 0x0000000B, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 528
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 529
	cmp 0x00000001, r10
	mov r10, r23
	bz17 .BB.LABEL.4_22
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 533
	cmp 0x00000000, r21
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb30
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 538
	ld.w 0x00000004[r21], r2
	mov 0x3B9ACA00, r5
	cmp r5, r2
	bl9 .BB.LABEL.4_7
.BB.LABEL.4_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000025, r0, r9
.BB.LABEL.4_6:	; if_then_bb39
	mov 0x0000000B, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 602
	dispose 0x0000001C, 0x00000479, [r31]
.BB.LABEL.4_7:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 543
	ld.bu 0x00000000[r22], r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000026, r0, r9
	br9 .BB.LABEL.4_6
.BB.LABEL.4_9:	; if_else_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 551
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 553
	add 0xFFFFFFF0, r20
	zxh r20
	cmp 0x0000000F, r20
	mov r10, r20
	mov r10, r24
	bh9 .BB.LABEL.4_19
.BB.LABEL.4_10:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r5
	mov r24, r6
	mul 0x0000003C, r6, r0
	add r6, r5
	ld.w 0x00000020[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_19
.BB.LABEL.4_11:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 556
	ld.w 0x00000000[r2], r2
	mov r24, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 557
	ld.hu 0x00000000[r2], r6
	mov r6, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	tst1 0x00000003, 0x00000000[r5]
	bz9 .BB.LABEL.4_20
.BB.LABEL.4_12:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 559
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 560
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_13:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 562
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 563
	ld.w 0x00000018[r3], r21
	ld.w 0x00000014[r3], r2
	cmp r2, r10
	sbf 0x00000001, r21, r11, r0
	bnc9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; if_then_bb120.if_break_bb148_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r23
	br9 .BB.LABEL.4_20
.BB.LABEL.4_15:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 565
	sub r2, r10
	sbf 0x00000001, r21, r11, r21
	st.w r21, 0x00000018[r3]
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 566
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 567
	ld.w 0x00000018[r3], r8
	ld.w 0x00000014[r3], r7
	movea 0x00000004, r3, r21
	mov r21, r6
	jarl _StbM_64TimeToGTTime.1, r31
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	add 0x00000008, r5
	movea 0x00000010, r0, r2
	add r5, r2
	br9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; if_then_bb128
	ld23.dw 0x00000000[r21], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r21
	add 0x00000008, r5
.BB.LABEL.4_17:	; if_then_bb128
	cmp r5, r2
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_18:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 568
	jarl _SchM_Exit_StbM_Context, r31
	br9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 579
	mov r24, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 580
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 584
	ld.w 0x00000018[r3], r2
	ld.w 0x00000014[r3], r9
	st.w r2, 0x00000000[r3]
	mov r24, r6
	mov r10, r7
	mov r11, r8
	jarl _StbM_UpdateMainTimeTuple.1, r31
.BB.LABEL.4_20:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 586
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_21:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 589
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 595
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r21
	add r20, r21
	mov 0x00000008, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 596
	ld.bu 0x00000003[r22], r7
	ld.bu 0x00000002[r22], r2
	ld.bu 0x00000001[r22], r5
	ld.bu 0x00000000[r22], r6
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000008, r7
	or r2, r7
	shl 0x00000010, r7
	or r5, r7
	mov r24, r6
	jarl _StbM_SetUserDataIn.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 597
	ld.b 0x00000001[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 598
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.4_22:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 602
	dispose 0x0000001C, 0x00000479, [r31]
_StbM_UpdateGlobalTime:
	.stack _StbM_UpdateGlobalTime = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 619
	prepare 0x00000479, 0x0000001C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 625
	st.w r0, 0x00000018[r3]
	st.w r0, 0x00000014[r3]
	mov 0x00000000, r8
	mov 0x0000000B, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 627
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 628
	cmp 0x00000001, r10
	mov r10, r23
	bz17 .BB.LABEL.5_22
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 632
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb30
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.5_6
.BB.LABEL.5_4:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 637
	ld.w 0x00000004[r21], r2
	mov 0x3B9ACA00, r5
	cmp r5, r2
	bl9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000025, r0, r9
.BB.LABEL.5_6:	; if_then_bb39
	mov 0x0000000B, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 700
	dispose 0x0000001C, 0x00000479, [r31]
.BB.LABEL.5_7:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 642
	ld.bu 0x00000000[r22], r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000026, r0, r9
	br9 .BB.LABEL.5_6
.BB.LABEL.5_9:	; if_else_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 650
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 652
	add 0xFFFFFFF0, r20
	zxh r20
	cmp 0x0000000F, r20
	mov r10, r20
	mov r10, r24
	bh9 .BB.LABEL.5_19
.BB.LABEL.5_10:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r5
	mov r24, r6
	mul 0x0000003C, r6, r0
	add r6, r5
	ld.w 0x00000020[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_11:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 655
	ld.w 0x00000000[r2], r2
	mov r24, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 656
	ld.hu 0x00000000[r2], r6
	mov r6, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	tst1 0x00000003, 0x00000000[r5]
	bz9 .BB.LABEL.5_20
.BB.LABEL.5_12:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 658
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 659
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.5_20
.BB.LABEL.5_13:	; if_then_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 661
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 662
	ld.w 0x00000018[r3], r21
	ld.w 0x00000014[r3], r2
	cmp r2, r10
	sbf 0x00000001, r21, r11, r0
	bnc9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_then_bb120.if_break_bb148_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r23
	br9 .BB.LABEL.5_20
.BB.LABEL.5_15:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 664
	sub r2, r10
	sbf 0x00000001, r21, r11, r21
	st.w r21, 0x00000018[r3]
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 665
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 666
	ld.w 0x00000018[r3], r8
	ld.w 0x00000014[r3], r7
	movea 0x00000004, r3, r21
	mov r21, r6
	jarl _StbM_64TimeToGTTime.1, r31
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	add 0x00000008, r5
	movea 0x00000010, r0, r2
	add r5, r2
	br9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; if_then_bb128
	ld23.dw 0x00000000[r21], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r21
	add 0x00000008, r5
.BB.LABEL.5_17:	; if_then_bb128
	cmp r5, r2
	bnz9 .BB.LABEL.5_16
.BB.LABEL.5_18:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 667
	jarl _SchM_Exit_StbM_Context, r31
	br9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 678
	mov r24, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 679
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 683
	ld.w 0x00000018[r3], r2
	ld.w 0x00000014[r3], r9
	st.w r2, 0x00000000[r3]
	mov r24, r6
	mov r10, r7
	mov r11, r8
	jarl _StbM_UpdateMainTimeTuple.1, r31
.BB.LABEL.5_20:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 685
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.5_22
.BB.LABEL.5_21:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 688
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 694
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	mov 0x00000008, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 695
	ld.bu 0x00000003[r22], r7
	ld.bu 0x00000002[r22], r2
	ld.bu 0x00000001[r22], r5
	ld.bu 0x00000000[r22], r6
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000008, r7
	or r2, r7
	shl 0x00000010, r7
	or r5, r7
	mov r24, r6
	jarl _StbM_SetUserDataIn.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 696
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.5_22:	; if_break_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 700
	dispose 0x0000001C, 0x00000479, [r31]
_StbM_SetUserData:
	.stack _StbM_SetUserData = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 715
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000000, r8
	mov 0x0000000C, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 719
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 720
	cmp 0x00000001, r10
	mov r10, r22
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 724
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r0, r9
.BB.LABEL.6_3:	; if_then_bb14
	mov 0x0000000C, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 743
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.6_4:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 729
	ld.bu 0x00000000[r21], r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000026, r0, r9
	br9 .BB.LABEL.6_3
.BB.LABEL.6_6:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 737
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 738
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 739
	ld.bu 0x00000003[r21], r7
	ld.bu 0x00000002[r21], r2
	ld.bu 0x00000001[r21], r5
	ld.bu 0x00000000[r21], r6
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000008, r7
	or r2, r7
	shl 0x00000010, r7
	or r5, r7
	mov r20, r6
	jarl _StbM_SetUserDataIn.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 740
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.6_7:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 743
	dispose 0x00000000, 0x00000071, [r31]
_StbM_SetOffset:
	.stack _StbM_SetOffset = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 758
	prepare 0x00000079, 0x0000000C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000004, r8
	mov 0x0000000D, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 765
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 766
	cmp 0x00000001, r10
	bz9 .BB.LABEL.7_14
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 770
	cmp 0x00000000, r21
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb28
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.7_6
.BB.LABEL.7_4:	; if_else_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 775
	ld.w 0x00000004[r21], r2
	mov 0x3B9ACA00, r5
	cmp r5, r2
	bl9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000025, r0, r9
.BB.LABEL.7_6:	; if_then_bb37
	mov 0x0000000D, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 815
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.7_7:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 780
	ld.bu 0x00000000[r22], r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000026, r0, r9
	br9 .BB.LABEL.7_6
.BB.LABEL.7_9:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 788
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 790
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 791
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r23
	add r2, r23
	addi 0x00000008, r23, r2
	movea 0x00000010, r0, r5
	add r2, r5
	mov r21, r6
	br9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; if_else_bb49
	ld23.dw 0x00000000[r6], r8
	st23.dw r8, 0x00000000[r2]
	add 0x00000008, r6
	add 0x00000008, r2
.BB.LABEL.7_11:	; if_else_bb49
	cmp r2, r5
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_12:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 798
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 800
	ld.bu 0x00000003[r22], r7
	ld.bu 0x00000002[r22], r2
	ld.bu 0x00000001[r22], r5
	ld.bu 0x00000000[r22], r6
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000008, r7
	or r2, r7
	shl 0x00000010, r7
	or r5, r7
	mov r20, r6
	jarl _StbM_SetUserDataIn.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 801
	ld.b 0x00000001[r23], r2
	add 0x00000001, r2
	st.b r2, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 802
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 804
	st.w r0, 0x00000008[r3]
	st.w r0, 0x00000004[r3]
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 805
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 806
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.7_15
.BB.LABEL.7_13:	; if_else_bb49.if_break_bb85_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r22, r10
.BB.LABEL.7_14:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 815
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.7_15:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 808
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 811
	ld.w 0x00000008[r3], r2
	ld.w 0x00000004[r3], r9
	st.w r2, 0x00000000[r3]
	mov r20, r6
	mov r10, r7
	mov r11, r8
	jarl _StbM_UpdateMainTimeTuple.1, r31
	br9 .BB.LABEL.7_13
_StbM_GetOffset:
	.stack _StbM_GetOffset = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 829
	prepare 0x00000079, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000004, r8
	mov 0x0000000E, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 836
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 837
	cmp 0x00000001, r10
	mov r10, r23
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 841
	cmp 0x00000000, r21
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb26
	movea 0x00000010, r0, r9
	mov 0x0000000E, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 843
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 844
	dispose 0x00000008, 0x00000079, [r31]
.BB.LABEL.8_4:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 849
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 852
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 853
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 854
	ld.w 0x00000010[r5], r2
	st.w r2, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 855
	ld.h 0x00000014[r5], r2
	st.h r2, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 856
	ld.b 0x00000000[r5], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 857
	add 0x00000002, r5
	mov 0x00000004, r2
	add r22, r2
	br9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_else_bb28
	ld.b 0x00000000[r5], r6
	st.b r6, 0x00000000[r22]
	add 0x00000001, r5
	add 0x00000001, r22
.BB.LABEL.8_6:	; if_else_bb28
	cmp r22, r2
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_7:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 858
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 860
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 861
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
.BB.LABEL.8_8:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 864
	dispose 0x00000008, 0x00000079, [r31]
_StbM_BusGetCurrentTime:
	.stack _StbM_BusGetCurrentTime = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 880
	prepare 0x00000479, 0x00000018
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	mov 0x00000002, r8
	movea 0x0000001F, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 888
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 889
	cmp 0x00000001, r10
	bz9 .BB.LABEL.9_7
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 893
	cmp 0x00000000, r21
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_else_bb
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb38
	movea 0x00000010, r0, r9
	movea 0x0000001F, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 895
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 896
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.9_5:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 901
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 902
	st.w r0, 0x00000014[r3]
	st.w r0, 0x00000010[r3]
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 905
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 906
	addi 0x00000000, r10, r24
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; if_else_bb40.if_break_bb79_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r24, r10
.BB.LABEL.9_7:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 921
	dispose 0x00000018, 0x00000479, [r31]
.BB.LABEL.9_8:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 908
	ld.w 0x00000014[r3], r2
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 909
	ld.w 0x00000010[r3], r2
	st.w r2, 0x00000000[r22]
	movea 0x00000010, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 910
	mov r20, r6
	jarl _StbM_GetGlobalTime64.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 911
	ld.w 0x00000014[r3], r8
	ld.w 0x00000010[r3], r7
	mov r3, r22
	mov r22, r6
	jarl _StbM_64TimeToGTTime.1, r31
	movea 0x00000010, r0, r2
	add r21, r2
	mov r21, r5
	br9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_then_bb50
	ld23.dw 0x00000000[r22], r6
	st23.dw r6, 0x00000000[r5]
	add 0x00000008, r22
	add 0x00000008, r5
.BB.LABEL.9_10:	; if_then_bb50
	cmp r5, r2
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_11:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 914
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 915
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	addi 0x00000002, r2, r5
	mov 0x00000004, r6
	add r23, r6
	br9 .BB.LABEL.9_13
.BB.LABEL.9_12:	; if_then_bb50
	ld.b 0x00000000[r5], r7
	st.b r7, 0x00000000[r23]
	add 0x00000001, r5
	add 0x00000001, r23
.BB.LABEL.9_13:	; if_then_bb50
	cmp r23, r6
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_14:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 916
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 917
	jarl _SchM_Exit_StbM_Context, r31
	br9 .BB.LABEL.9_6
_StbM_BusSetGlobalTime:
	.stack _StbM_BusSetGlobalTime = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 939
	prepare 0x00000479, 0x0000001C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	mov 0x00000001, r8
	mov 0x0000000F, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 949
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 950
	cmp 0x00000001, r10
	ld.w 0x00000034[r3], r2
	bz17 .BB.LABEL.10_18
.BB.LABEL.10_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 954
	cmp 0x00000000, r21
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r23
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_else_bb
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb41
	movea 0x00000010, r0, r9
	br9 .BB.LABEL.10_7
.BB.LABEL.10_5:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 959
	ld.w 0x00000004[r21], r2
	mov 0x3B9ACA00, r5
	cmp r5, r2
	bl9 .BB.LABEL.10_8
.BB.LABEL.10_6:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000025, r0, r9
.BB.LABEL.10_7:	; if_then_bb50
	mov 0x0000000F, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1038
	dispose 0x0000001C, 0x00000479, [r31]
.BB.LABEL.10_8:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 964
	cmp 0x00000000, r22
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	ld.bu 0x00000000[r22], r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb71
	movea 0x00000026, r0, r9
	br9 .BB.LABEL.10_7
.BB.LABEL.10_11:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 973
	st.w r0, 0x00000018[r3]
	st.w r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 975
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	movea 0x00000014, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 981
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 982
	ld.w 0x00000018[r3], r2
	ld.w 0x00000014[r3], r5
	st.w r2, 0x00000010[r3]
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 984
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.10_15
.BB.LABEL.10_12:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 986
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 987
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r24
	add r2, r24
	set1 0x00000003, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 988
	ld.w 0x00000018[r3], r2
	ld.w 0x00000014[r3], r5
	st.w r2, 0x00000038[r24]
	st.w r5, 0x00000034[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 989
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 990
	ld.w 0x0000000C[r21], r9
	ld.w 0x00000008[r21], r8
	ld.w 0x00000004[r21], r7
	ld.w 0x00000000[r21], r6
	jarl _StbM_GTTimeTo64Time.1, r31
	st.w r11, 0x00000008[r3]
	st.w r10, 0x00000004[r3]
	movea 0x0000000C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 991
	mov r20, r6
	jarl _StbM_GetGlobalTime64.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 992
	ld.w 0x00000008[r3], r2
	ld.w 0x00000004[r3], r9
	ld.w 0x00000010[r3], r8
	ld.w 0x0000000C[r3], r7
	st.w r2, 0x00000000[r3]
	mov r20, r6
	jarl _StbM_CheckTimeleap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 994
	ld.bu 0x00000030[r24], r2
	cmp 0x00000000, r2
	movea 0x00000030, r24, r2
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_13:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 996
	st.b r5, 0x00000000[r2]
.BB.LABEL.10_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1005
	ld.bu 0x00000000[r21], r9
	movea 0x00000014, r3, r8
	movea 0x00000004, r3, r7
	mov r20, r6
	jarl _StbM_TimeCorrection.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1008
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1009
	ld.b 0x00000000[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1011
	ori 0x00000004, r2, r5
	mov 0xFFFFFFFB, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1015
	and r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1009
	tst1 0x00000002, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1015
	cmov 0x00000002, r2, r5, r2
	st.b r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1017
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1020
	ld.w 0x00000018[r3], r2
	ld.w 0x00000014[r3], r9
	ld.w 0x00000008[r3], r8
	ld.w 0x00000004[r3], r7
	st.w r2, 0x00000000[r3]
	mov r20, r6
	jarl _StbM_UpdateMainTimeTuple.1, r31
.BB.LABEL.10_15:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1022
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1023
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	clr1 0x00000000, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1029
	ld.b 0x00000001[r5], r2
	add 0x00000001, r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1031
	cmp 0x00000000, r22
	bz9 .BB.LABEL.10_17
.BB.LABEL.10_16:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1033
	ld.bu 0x00000003[r22], r7
	ld.bu 0x00000002[r22], r2
	ld.bu 0x00000001[r22], r5
	ld.bu 0x00000000[r22], r6
	shl 0x00000008, r5
	or r6, r5
	shl 0x00000008, r7
	or r2, r7
	shl 0x00000010, r7
	or r5, r7
	mov r20, r6
	jarl _StbM_SetUserDataIn.1, r31
.BB.LABEL.10_17:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1035
	jarl _SchM_Exit_StbM_Context, r31
	mov r23, r10
.BB.LABEL.10_18:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1038
	dispose 0x0000001C, 0x00000479, [r31]
_StbM_GetRateDeviation:
	.stack _StbM_GetRateDeviation = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1052
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000000, r8
	movea 0x00000011, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1057
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1061
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r0, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1063
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_3:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1069
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1071
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1072
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x0000005C[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_else_bb16.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1074
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.h 0x00000054[r2], r20
	movea 0xFFFFBDC0, r20, r20
	st.h r20, 0x00000000[r21]
	mov 0x00000000, r20
.BB.LABEL.11_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1077
	jarl _SchM_Exit_StbM_Context, r31
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_7:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1087
	dispose 0x00000000, 0x00000061, [r31]
_StbM_SetRateCorrection:
	.stack _StbM_SetRateCorrection = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1101
	prepare 0x00000071, 0x00000014
	mov r6, r20
	mov r7, r21
	mov 0x00000000, r8
	movea 0x00000012, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1105
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1106
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1110
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1111
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1112
	mov r10, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000024[r2], r5
	cmp 0x00000000, r5
	movea 0x00000024, r2, r2
	mov r10, r20
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	ld.bu 0x00000000[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_3:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1116
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1118
	ld.h 0x00000002[r2], r22
	cmp r21, r22
	ble9 .BB.LABEL.12_7
.BB.LABEL.12_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1122
	mov r22, r2
	subr r0, r2
	cmp r2, r21
	ble9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_else_bb.if_break_bb74_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r21, r22
	br9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1124
	subr r0, r22
.BB.LABEL.12_7:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1132
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1133
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	sxh r22
	mov 0x000F4240, r2
	add r2, r22
	st.w r22, 0x00000054[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1134
	st.w r0, 0x00000058[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1135
	st.b r2, 0x0000005C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1136
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1138
	st.w r0, 0x00000010[r3]
	st.w r0, 0x0000000C[r3]
	movea 0x0000000C, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1139
	mov r20, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1140
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.12_9
.BB.LABEL.12_8:	; if_break_bb74.if_break_bb105_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r21, r10
	br9 .BB.LABEL.12_11
.BB.LABEL.12_9:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1142
	ld.w 0x00000010[r3], r2
	ld.w 0x0000000C[r3], r5
	st.w r2, 0x00000008[r3]
	st.w r5, 0x00000004[r3]
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1143
	mov r20, r6
	jarl _StbM_GetGlobalTime64.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1146
	ld.w 0x00000010[r3], r2
	ld.w 0x0000000C[r3], r9
	ld.w 0x00000008[r3], r8
	ld.w 0x00000004[r3], r7
	st.w r2, 0x00000000[r3]
	mov r20, r6
	jarl _StbM_UpdateMainTimeTuple.1, r31
	mov r21, r10
	dispose 0x00000014, 0x00000071, [r31]
.BB.LABEL.12_10:	; if_else_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000012, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1156
	mov r8, r9
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.12_11:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1163
	dispose 0x00000014, 0x00000071, [r31]
_StbM_GetTimeLeap:
	.stack _StbM_GetTimeLeap = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1176
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	mov 0x00000001, r8
	movea 0x00000013, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1180
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1181
	cmp 0x00000001, r10
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1185
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000010, r0, r9
	movea 0x00000013, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1187
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1188
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_3:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1193
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1194
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1195
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x00000030[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb16.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1197
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.w 0x0000002C[r2], r20
	st.w r20, 0x00000000[r21]
	mov 0x00000000, r20
.BB.LABEL.13_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1204
	jarl _SchM_Exit_StbM_Context, r31
	mov r20, r10
.BB.LABEL.13_7:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1207
	dispose 0x00000000, 0x00000061, [r31]
_StbM_GetTimeBaseStatus:
	.stack _StbM_GetTimeBaseStatus = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1223
	prepare 0x00000479, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000000, r8
	movea 0x00000014, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1230
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1231
	cmp 0x00000001, r10
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1235
	cmp 0x00000000, r21
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb25
	movea 0x00000010, r0, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1237
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1238
	dispose 0x00000008, 0x00000479, [r31]
.BB.LABEL.14_4:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1243
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1244
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1245
	mov r23, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1247
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1248
	mov r23, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	cmp 0x0000000F, r20
	bnh9 .BB.LABEL.14_8
.BB.LABEL.14_5:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x0000001F, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1253
	cmp r5, r20
	bh9 .BB.LABEL.14_8
.BB.LABEL.14_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1255
	st.b r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1256
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r22
	mov r23, r5
	mul 0x0000003C, r5, r0
	add r5, r22
	ld.w 0x00000020[r22], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_7:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1258
	ld.w 0x00000000[r2], r2
	mul 0x0000003C, r23, r0
	add r23, r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1259
	ld.hu 0x00000000[r2], r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r22
	add r2, r22
	ld.b 0x00000000[r22], r2
	st.b r2, 0x00000000[r21]
	br9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_else_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	st.b r2, 0x00000000[r21]
	st.b r0, 0x00000000[r22]
.BB.LABEL.14_9:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1267
	jarl _SchM_Exit_StbM_Context, r31
	mov r24, r10
.BB.LABEL.14_10:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1270
	dispose 0x00000008, 0x00000479, [r31]
_StbM_TriggerTimeTransmission:
	.stack _StbM_TriggerTimeTransmission = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1412
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov 0x00000001, r8
	movea 0x0000001C, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1416
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1417
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1421
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1422
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1423
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.b 0x00000001[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1424
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1427
	dispose 0x00000000, 0x00000061, [r31]
_StbM_GetTimeBaseUpdateCounter:
	.stack _StbM_GetTimeBaseUpdateCounter = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1441
	prepare 0x00000041, 0x00000000
	mov r6, r20
	mov 0x00000001, r8
	movea 0x0000001B, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1446
	jarl _Stbm_TimeBaseIdDetCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1447
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1455
	mov r20, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1456
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1457
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1458
	ld.bu 0x00000001[r2], r20
	jarl _SchM_Exit_StbM_Context, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1461
	dispose 0x00000000, 0x00000041, [r31]
_StbM_MainFunction:
	.stack _StbM_MainFunction = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1509
	prepare 0x00000061, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1511
	movhi HIGHW1(#_StbM_InitStatus.4), r0, r2
	ld.bu LOWW(#_StbM_InitStatus.4)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1514
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	mov 0x00000000, r20
	br9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1517
	andi 0x0000FFFF, r20, r21
	mov r3, r7
	mov r21, r6
	jarl _StbM_GetCurrentLocalTime.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1518
	ld.w 0x00000004[r3], r8
	ld.w 0x00000000[r3], r7
	mov r21, r6
	jarl _StbM_CheckTimeout.1, r31
	add 0x00000001, r20
.BB.LABEL.17_3:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1515
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1612
	dispose 0x00000008, 0x00000061, [r31]
_StbM_Abs.1:
	.stack _StbM_Abs.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1661
	mov r7, r2
	sar 0x0000001F, r2
	add r2, r6
	adf 0x00000001, r2, r7, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1665
	mov r6, r10
	xor r2, r10
	xor r2, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1671
	jmp [r31]
_CheckTimeBaseIdType.1:
	.stack _CheckTimeBaseIdType.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1683
	cmp 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1686
	bh9 .BB.LABEL.19_14
.BB.LABEL.19_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	shl 0x00000001, r7
	jmp #.SWITCH.LABEL.19_15[r7]
.SWITCH.LABEL.19_15:
	br9 .BB.LABEL.19_2
	br9 .BB.LABEL.19_4
	br9 .BB.LABEL.19_6
	br9 .BB.LABEL.19_8
	br9 .BB.LABEL.19_10
	br9 .BB.LABEL.19_12
.SWITCH.LABEL.19_15.END:
.BB.LABEL.19_2:	; switch_clause_bb
	movea 0x00000080, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1689
	cmp r2, r6
	bl9 .BB.LABEL.19_14
.BB.LABEL.19_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1691
	jmp [r31]
.BB.LABEL.19_4:	; switch_clause_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1695
	cmp r2, r6
	bl9 .BB.LABEL.19_14
.BB.LABEL.19_5:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1697
	jmp [r31]
.BB.LABEL.19_6:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1701
	add 0xFFFFFFF0, r6
	zxh r6
	cmp 0x0000000F, r6
	bh9 .BB.LABEL.19_14
.BB.LABEL.19_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1703
	jmp [r31]
.BB.LABEL.19_8:	; switch_clause_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1707
	cmp 0x0000000F, r6
	bh9 .BB.LABEL.19_14
.BB.LABEL.19_9:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1709
	jmp [r31]
.BB.LABEL.19_10:	; switch_clause_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1713
	add 0xFFFFFFF0, r6
	zxh r6
	cmp 0x0000000F, r6
	bnh9 .BB.LABEL.19_14
.BB.LABEL.19_11:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1715
	jmp [r31]
.BB.LABEL.19_12:	; switch_clause_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1719
	cmp 0x0000000F, r6
	bnh9 .BB.LABEL.19_14
.BB.LABEL.19_13:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1721
	jmp [r31]
.BB.LABEL.19_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1729
	jmp [r31]
_Stbm_TimeBaseIdDetCheck.1:
	.stack _Stbm_TimeBaseIdDetCheck.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1738
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1744
	movhi HIGHW1(#_StbM_InitStatus.4), r0, r2
	ld.bu LOWW(#_StbM_InitStatus.4)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x0000000B, r9
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1747
	mov r21, r8
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.20_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1752
	mov r22, r6
	jarl _StbM_FindSynchronizedTimeBase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1753
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_3:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1755
	mov r22, r6
	mov r20, r7
	jarl _CheckTimeBaseIdType.1, r31
.BB.LABEL.20_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1757
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x0000000A, r9
	mov 0x00000000, r7
	movea 0x000000A0, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1759
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.20_7:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1763
	dispose 0x00000000, 0x00000071, [r31]
_StbM_FindSynchronizedTimeBase.1:
	.stack _StbM_FindSynchronizedTimeBase.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1772
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1775
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	mov 0x00000000, r10
	br9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1778
	andi 0x0000FFFF, r10, r5
	mul 0x0000003C, r5, r0
	add r2, r5
	ld.hu 0x00000004[r5], r5
	cmp r5, r6
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	add 0x00000001, r10
.BB.LABEL.21_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1776
	andi 0x0000FFFF, r10, r0
	bz9 .BB.LABEL.21_1
.BB.LABEL.21_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1784
	zxh r10
	jmp [r31]
_StbM_LocalClockToLocalTime.1:
	.stack _StbM_LocalClockToLocalTime.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1793
	prepare 0x000007FD, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1801
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1802
	ld.w 0x0000000C[r20], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; entry.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r23
	br9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1823
	ld.bu 0x00000008[r20], r6
	jarl _Gpt_GetTimeElapsed, r31
	mov 0x00000000, r23
	mov r23, r2
.BB.LABEL.22_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1845
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1847
	ld.w 0x00000004[r21], r5
	ld.w 0x00000000[r21], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1848
	cmp r24, r10
	sbf 0x00000001, r5, r2, r0
	bl9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	subr r10, r24
	sbf 0x00000001, r5, r2, r25
	br9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; bb38
	ld.w 0x00000010[r20], r6
	mov 0x00000000, r25
	sub r24, r6
	sbf 0x00000001, r5, r25, r24
	add r10, r6
	adf 0x00000001, r2, r24, r24
	add 0x00000001, r6
	adf 0x00000001, r25, r24, r25
	mov r6, r24
.BB.LABEL.22_7:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1852
	st.w r10, 0x00000000[r21]
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1855
	ld.w 0x00000004[r20], r7
	mov r24, r6
	mulu r7, r6, r2
	mul r25, r7, r0
	add r2, r7
	mov 0x3B9ACA00, r2
	mul r2, r7, r0
	mulu r2, r6, r2
	add r2, r7
	ld.w 0x00000000[r20], r26
	mov 0x00000000, r9
	mov r26, r8
	jarl __COM_urem64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1854
	ld.w 0x0000000C[r21], r2
	ld.w 0x00000008[r21], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1855
	add r10, r5
	adf 0x00000001, r11, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1859
	cmp r26, r5
	sbf 0x00000001, r0, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1858
	ld.w 0x00000014[r21], r27
	ld.w 0x00000010[r21], r28
	bl9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1861
	sub r26, r5
	sbf 0x00000001, r6, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1862
	add 0x00000001, r28
	adf 0x00000001, r6, r27, r27
.BB.LABEL.22_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1864
	st.w r5, 0x00000008[r21]
	st.w r2, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1866
	ld.w 0x00000004[r20], r2
	mulu r2, r24, r5
	mul r2, r25, r0
	add r5, r25
	mov 0x3B9ACA00, r2
	mul r2, r25, r0
	mov r24, r6
	mulu r2, r6, r2
	mov r25, r7
	add r2, r7
	ld.w 0x00000000[r20], r8
	mov 0x00000000, r9
	jarl __COM_udiv64, r31
	add r10, r28
	adf 0x00000001, r11, r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1869
	st.w r2, 0x00000014[r21]
	st.w r28, 0x00000010[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1870
	st.w r2, 0x00000004[r22]
	st.w r28, 0x00000000[r22]
.BB.LABEL.22_10:	; if_break_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1872
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1874
	mov r23, r10
	dispose 0x00000000, 0x000007FD, [r31]
_StbM_GetCurrentLocalTime.1:
	.stack _StbM_GetCurrentLocalTime.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1882
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1885
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	mov r6, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000028[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1886
	cmp 0x00000000, r2
	mov r7, r8
	bz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1888
	mul 0x0000006C, r6, r0
	mov #_StbM_TimeBase.1, r5
	add r6, r5
	movea 0x0000003C, r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1889
	mov r2, r6
	jarl _StbM_LocalClockToLocalTime.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1892
	dispose 0x00000000, 0x00000001, [r31]
_StbM_GetGlobalTime64.1:
	.stack _StbM_GetGlobalTime64.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1899
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1901
	ld.w 0x00000004[r21], r22
	ld.w 0x00000000[r21], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1904
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1905
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	ld.w 0x00000020[r5], r6
	sub r6, r23
	sbf 0x00000001, r2, r22, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1907
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r24
	ld.w 0x00000000[r24], r2
	mov r20, r6
	mul 0x0000003C, r6, r0
	add r6, r2
	ld.w 0x00000024[r2], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1905
	movea 0x00000020, r5, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1907
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1909
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r24
	add r20, r24
	ld.w 0x0000001C[r24], r20
	ld.w 0x00000018[r24], r24
	add r23, r24
	adf 0x00000001, r22, r20, r20
	st.w r20, 0x00000004[r21]
	st.w r24, 0x00000000[r21]
	jr .BB.LABEL.24_6
.BB.LABEL.24_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1915
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r26
	add r2, r26
	ld.w 0x00000054[r26], r6
	jarl __COM_itod, r31
	mov r10, r27
	mov r11, r28
	ld.w 0x00000058[r26], r29
	mov r29, r6
	jarl __COM_itod, r31
	mov r27, r6
	mov r28, r7
	mov r10, r8
	mov r11, r9
	jarl __COM_dadd, r31
	mov 0x412E8480, r9
	mov 0x00000000, r8
	mov r10, r6
	mov r11, r7
	jarl __COM_ddiv, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1914
	ld.w 0x00000000[r24], r2
	mov r20, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1921
	cmp 0x00000000, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1915
	movea 0x00000058, r26, r24
	movea 0x00000054, r26, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1914
	ld.w 0x00000024[r2], r2
	ld.w 0x00000008[r2], r27
	ld.w 0x00000004[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1921
	mov r11, r29
	mov r10, r30
	bz9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	cmp r28, r23
	sbf 0x00000001, r27, r22, r0
	bl9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1924
	mov r28, r6
	mov r27, r7
	jarl __COM_u64tod, r31
	mov r10, r6
	mov r11, r7
	mov r30, r8
	mov r29, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtou64, r31
	mov r10, r29
	mov r11, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1926
	mov r23, r6
	sub r28, r6
	sbf 0x00000001, r27, r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1927
	jarl __COM_u64tod, r31
	mov r10, r22
	mov r11, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1923
	ld.w 0x00000004[r25], r2
	ld.w 0x00000000[r25], r5
	add r28, r5
	adf 0x00000001, r27, r2, r2
	st.w r2, 0x00000004[r25]
	st.w r5, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1924
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r25
	add r20, r25
	ld.w 0x0000001C[r25], r20
	ld.w 0x00000018[r25], r2
	add r29, r2
	adf 0x00000001, r30, r20, r20
	st.w r20, 0x0000001C[r25]
	st.w r2, 0x00000018[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1925
	st.w r0, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1927
	ld.w 0x00000000[r26], r6
	jarl __COM_itod, r31
	mov 0x412E8480, r9
	mov 0x00000000, r8
	mov r10, r6
	mov r11, r7
	jarl __COM_ddiv, r31
	mov r10, r6
	mov r11, r7
	mov r22, r8
	mov r23, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtou64, r31
	ld.w 0x0000001C[r25], r20
	ld.w 0x00000018[r25], r22
	add r10, r22
	adf 0x00000001, r11, r20, r20
	st.w r20, 0x00000004[r21]
	st.w r22, 0x00000000[r21]
	br9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; if_else_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1933
	mov r23, r6
	mov r22, r7
	jarl __COM_u64tod, r31
	mov r30, r6
	mov r29, r7
	mov r10, r8
	mov r11, r9
	jarl __COM_dmul, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtou64, r31
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.w 0x0000001C[r2], r5
	ld.w 0x00000018[r2], r2
	add r10, r2
	adf 0x00000001, r11, r5, r5
	st.w r5, 0x00000004[r21]
	st.w r2, 0x00000000[r21]
.BB.LABEL.24_6:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1938
	jarl _SchM_Exit_StbM_Context, r31
	dispose 0x00000000, 0x00000FFF, [r31]
_StbM_UpdateMainTimeTuple.1:
	.stack _StbM_UpdateMainTimeTuple.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1946
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1949
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1950
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.w 0x00000014[r3], r5
	st.w r5, 0x00000024[r2]
	st.w r23, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1951
	st.w r22, 0x0000001C[r2]
	st.w r21, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1952
	jarl _SchM_Exit_StbM_Context, r31
	dispose 0x00000000, 0x00000079, [r31]
_StbM_GTTimeTo64Time.1:
	.stack _StbM_GTTimeTo64Time.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1960
	add 0xFFFFFFF0, r3
	st.w r6, 0x00000000[r3]
	st.w r7, 0x00000004[r3]
	st.w r8, 0x00000008[r3]
	st.w r9, 0x0000000C[r3]
	mov 0x3B9ACA00, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1962
	ld.w 0x00000008[r3], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1963
	mulu r2, r10, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1962
	ld.hu 0x0000000C[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1963
	mul r2, r6, r0
	add r5, r6
	mov 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1964
	ld.w 0x00000004[r3], r5
	add r5, r10
	adf 0x00000001, r2, r6, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1966
	dispose 0x00000010, 0x00000000, [r31]
_StbM_64TimeToGTTime.1:
	.stack _StbM_64TimeToGTTime.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1973
	prepare 0x00000679, 0x00000010
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov 0x00000000, r23
	mov 0x3B9ACA00, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1976
	mov r21, r6
	mov r22, r7
	mov r24, r8
	mov r23, r9
	jarl __COM_urem64, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1977
	mov r21, r6
	mov r22, r7
	mov r24, r8
	mov r23, r9
	jarl __COM_udiv64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1975
	st.w r0, 0x0000000C[r3]
	st.w r0, 0x00000008[r3]
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1976
	st.w r25, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1978
	st.h r11, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1979
	st.w r10, 0x00000008[r3]
	movea 0x00000010, r0, r2
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1980
	add r20, r2
	br9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry
	ld23.dw 0x00000000[r5], r6
	st23.dw r6, 0x00000000[r20]
	add 0x00000008, r5
	add 0x00000008, r20
.BB.LABEL.27_2:	; entry
	cmp r20, r2
	bnz9 .BB.LABEL.27_1
.BB.LABEL.27_3:	; entry
	dispose 0x00000010, 0x00000679, [r31]
_StbM_CheckTimeleap.1:
	.stack _StbM_CheckTimeleap.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1989
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1992
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1993
	mov r20, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x00000030[r5], r2
	cmp 0x00000001, r2
	ld.w 0x00000014[r3], r2
	bnz9 .BB.LABEL.28_14
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1995
	cmp r21, r23
	mov r20, r7
	mul 0x0000003C, r7, r0
	sbf 0x00000001, r22, r2, r0
	movea 0x00000010, r0, r5
	movea 0x00000020, r0, r6
	cmov 0x00000001, r6, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 1997
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r6
	ld.w LOWW(#_StbM_ConfigData.2)[r6], r6
	ld.w 0x00000000[r6], r6
	bnc9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	add r7, r6
	movea 0x00000018, r6, r6
	br9 .BB.LABEL.28_4
.BB.LABEL.28_3:	; bb38
	add r7, r6
	movea 0x00000010, r6, r6
.BB.LABEL.28_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2000
	cmp r21, r23
	sbf 0x00000001, r22, r2, r0
	ld.w 0x00000004[r6], r7
	ld.w 0x00000000[r6], r6
	bnc9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; bb48.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov r21, r8
	mov r22, r9
	br9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; bb59
	mov r23, r8
	mov r2, r9
	mov r21, r23
	mov r22, r2
.BB.LABEL.28_7:	; bb64
	sub r23, r8
	sbf 0x00000001, r2, r9, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2001
	mov r6, r9
	or r7, r9
	cmp 0x00000000, r9
	bz9 .BB.LABEL.28_13
.BB.LABEL.28_8:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2003
	cmp r8, r6
	mov r20, r6
	mul 0x0000006C, r6, r0
	sbf 0x00000001, r2, r7, r0
	mov #_StbM_TimeBase.1, r7
	bnc9 .BB.LABEL.28_10
.BB.LABEL.28_9:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2005
	add r6, r7
	ld.b 0x00000000[r7], r6
	or r5, r6
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2006
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r6
	ld.w LOWW(#_StbM_ConfigData.2)[r6], r6
	ld.w 0x00000000[r6], r6
	mov r20, r9
	mul 0x0000003C, r9, r0
	add r9, r6
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000028[r7]
	br9 .BB.LABEL.28_13
.BB.LABEL.28_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2010
	add r6, r7
	ld.hu 0x00000028[r7], r6
	cmp 0x00000000, r6
	movea 0x00000028, r7, r7
	bnz9 .BB.LABEL.28_12
.BB.LABEL.28_11:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2012
	mov r20, r6
	mul 0x0000006C, r6, r0
	mov #_StbM_TimeBase.1, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2013
	andi 0x000000CF, r6, r6
	st.b r6, 0x00000000[r7]
	br9 .BB.LABEL.28_13
.BB.LABEL.28_12:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2017
	add 0xFFFFFFFF, r6
	st.h r6, 0x00000000[r7]
.BB.LABEL.28_13:	; if_break_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x7FFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2021
	cmp r8, r6
	sbf 0x00000001, r2, r0, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2023
	cmov 0x00000001, r6, r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2025
	mov r2, r6
	subr r0, r6
	add 0xFFFFFFF0, r5
	cmov 0x00000002, r2, r6, r2
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r5
	add r20, r5
	st.w r2, 0x0000002C[r5]
.BB.LABEL.28_14:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2029
	jarl _SchM_Exit_StbM_Context, r31
	dispose 0x00000000, 0x00000079, [r31]
_StbM_CheckTimeout.1:
	.stack _StbM_CheckTimeout.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2037
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2039
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2040
	mov r6, r21
	mul 0x0000003C, r21, r0
	add r20, r21
	ld.w 0x00000008[r21], r2
	ld.w 0x0000000C[r21], r5
	or r5, r2
	add 0x00000008, r21
	cmp 0x00000000, r2
	mov r8, r22
	mov r7, r23
	mov r6, r24
	mov r6, r25
	bz9 .BB.LABEL.29_9
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2044
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2048
	mov r25, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x00000030[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.29_8
.BB.LABEL.29_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2050
	mul 0x0000006C, r25, r0
	mov #_StbM_TimeBase.1, r2
	add r25, r2
	ld.w 0x00000038[r2], r5
	ld.w 0x00000034[r2], r6
	sub r6, r23
	sbf 0x00000001, r5, r22, r5
	ld.w 0x00000004[r21], r6
	ld.w 0x00000000[r21], r7
	cmp r23, r7
	sbf 0x00000001, r5, r6, r0
	ld.bu 0x00000000[r2], r5
	bnc9 .BB.LABEL.29_6
.BB.LABEL.29_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2052
	ori 0x00000001, r5, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2054
	mov r24, r6
	mul 0x0000003C, r6, r0
	add r20, r6
	ld.hu 0x00000004[r6], r6
	movea 0x0000001F, r0, r7
	cmp r7, r6
	bh9 .BB.LABEL.29_8
.BB.LABEL.29_4:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2056
	mul 0x0000003C, r24, r0
	add r24, r20
	ld.bu 0x00000038[r20], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.29_8
.BB.LABEL.29_5:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2058
	ori 0x00000005, r5, r5
	br9 .BB.LABEL.29_7
.BB.LABEL.29_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2064
	andi 0x000000FE, r5, r5
.BB.LABEL.29_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	st.b r5, 0x00000000[r2]
.BB.LABEL.29_8:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2067
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.29_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2072
	dispose 0x00000000, 0x00000679, [r31]
_StbM_CalculateRrc.1:
	.stack _StbM_CalculateRrc.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2085
	prepare 0x000007FD, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2091
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	mov r6, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000024[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2096
	cmp 0x00000000, r20
	mov r6, r21
	mov r9, r22
	mov r8, r23
	mov r7, r24
	bz17 .BB.LABEL.30_22
.BB.LABEL.30_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	ld.w 0x00000014[r20], r2
	ld.w 0x00000018[r20], r5
	or r5, r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.30_22
.BB.LABEL.30_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2104
	ld.hu 0x0000001C[r20], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2103
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2104
	mov r21, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	andi 0x00000010, r2, r0
	bz9 .BB.LABEL.30_7
.BB.LABEL.30_3:	; if_break_bb.bb92_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.30_5
.BB.LABEL.30_4:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2109
	mov r21, r5
	mul 0x0000006C, r5, r0
	mov #_StbM_TimeBase.1, r20
	add r5, r20
	ld.w 0x00000060[r20], r5
	andi 0x0000FFFF, r2, r22
	shl 0x00000004, r22
	add r22, r5
	st.w r0, 0x00000004[r5]
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2110
	ld.w 0x00000060[r20], r5
	add r22, r5
	st.w r0, 0x0000000C[r5]
	st.w r0, 0x00000008[r5]
	add 0x00000001, r2
.BB.LABEL.30_5:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2107
	andi 0x0000FFFF, r2, r5
	cmp r25, r5
	bnh9 .BB.LABEL.30_4
.BB.LABEL.30_6:	; bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2112
	mul 0x0000006C, r21, r0
	mov #_StbM_TimeBase.1, r5
	add r21, r5
	st.w r0, 0x00000064[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2113
	st.w r0, 0x00000068[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2114
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2115
	dispose 0x00000000, 0x000007FD, [r31]
.BB.LABEL.30_7:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	andi 0x00000020, r2, r0
	bnz9 .BB.LABEL.30_3
.BB.LABEL.30_8:	; if_break_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2121
	ld.bu 0x00000000[r5], r2
	xor r2, r22
	andi 0x00000004, r22, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2119
	ld.w 0x00000004[r24], r22
	ld.w 0x00000000[r24], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2118
	ld.w 0x00000004[r23], r26
	ld.w 0x00000000[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2121
	bnz9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.30_14
.BB.LABEL.30_10:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2125
	mov r21, r20
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	ld.w 0x00000060[r2], r20
	st.w r22, 0x00000004[r20]
	st.w r24, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2126
	ld.w 0x00000060[r2], r20
	st.w r26, 0x0000000C[r20]
	st.w r23, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2125
	movea 0x00000060, r2, r20
	mov 0x00000001, r22
	br9 .BB.LABEL.30_12
.BB.LABEL.30_11:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2129
	andi 0x0000FFFF, r22, r23
	shl 0x00000004, r23
	ld.w 0x00000000[r20], r24
	add r23, r24
	st.w r0, 0x00000004[r24]
	st.w r0, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2130
	ld.w 0x00000000[r20], r24
	add r23, r24
	st.w r0, 0x0000000C[r24]
	st.w r0, 0x00000008[r24]
	add 0x00000001, r22
.BB.LABEL.30_12:	; bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2127
	andi 0x0000FFFF, r22, r23
	cmp r25, r23
	bnh9 .BB.LABEL.30_11
.BB.LABEL.30_13:	; bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2132
	mul 0x0000006C, r21, r0
	mov #_StbM_TimeBase.1, r20
	add r21, r20
	st.w r0, 0x00000064[r20]
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2133
	st.w r21, 0x00000068[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2134
	jarl _SchM_Exit_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2135
	dispose 0x00000000, 0x000007FD, [r31]
.BB.LABEL.30_14:	; if_break_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2140
	mov r21, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.w 0x00000060[r5], r2
	ld.w 0x00000000[r2], r6
	ld.w 0x00000004[r2], r7
	or r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2138
	addi 0x00000001, r25, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2140
	cmp 0x00000000, r6
	movea 0x00000060, r5, r28
	bnz9 .BB.LABEL.30_17
.BB.LABEL.30_15:	; bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	ld.w 0x00000008[r2], r5
	ld.w 0x0000000C[r2], r2
	or r2, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.30_17
.BB.LABEL.30_16:	; if_then_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2142
	ld.w 0x00000000[r28], r20
	st.w r22, 0x00000004[r20]
	st.w r24, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2143
	ld.w 0x00000000[r28], r20
	st.w r26, 0x0000000C[r20]
	st.w r23, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2144
	mov r21, r20
	mul 0x0000006C, r20, r0
	mov #_StbM_TimeBase.1, r2
	add r20, r2
	st.w r0, 0x00000064[r2]
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2145
	st.w r20, 0x00000068[r2]
	br9 .BB.LABEL.30_19
.BB.LABEL.30_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2149
	ld.w 0x00000018[r20], r7
	ld.w 0x00000014[r20], r6
	mov 0x00000000, r9
	mov r25, r8
	jarl __COM_udiv64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2150
	mov r21, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	ld.w 0x00000068[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2152
	addi 0xFFFFFFFF, r2, r6
	divhu r27, r6, r6
	shl 0x00000004, r6
	ld.w 0x00000000[r28], r7
	add r7, r6
	ld.w 0x0000000C[r6], r8
	ld.w 0x00000008[r6], r6
	subr r23, r6
	sbf 0x00000001, r8, r26, r8
	cmp r10, r6
	sbf 0x00000001, r11, r8, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2150
	movea 0x00000068, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2152
	bl9 .BB.LABEL.30_19
.BB.LABEL.30_18:	; if_then_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2154
	divhu r27, r2, r2
	shl 0x00000004, r2
	add r2, r7
	st.w r22, 0x00000004[r7]
	st.w r24, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2155
	ld.w 0x00000000[r28], r6
	add r2, r6
	st.w r26, 0x0000000C[r6]
	st.w r23, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2156
	ld.w 0x00000000[r5], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.30_19:	; if_break_bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2160
	mov r21, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2161
	ld.w 0x00000068[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2160
	ld.w 0x00000064[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2161
	sub r20, r2
	cmp r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2160
	movea 0x00000064, r5, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2161
	bnh9 .BB.LABEL.30_21
.BB.LABEL.30_20:	; if_then_bb304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2163
	mov r20, r2
	divhu r27, r2, r2
	shl 0x00000004, r2
	ld.w 0x00000000[r28], r27
	add r2, r27
	ld.w 0x00000004[r27], r2
	ld.w 0x00000000[r27], r5
	mov r24, r6
	sub r5, r6
	sbf 0x00000001, r2, r22, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2166
	jarl __COM_u64tod, r31
	mov r10, r22
	mov r11, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2164
	ld.w 0x0000000C[r27], r2
	ld.w 0x00000008[r27], r5
	mov r23, r6
	sub r5, r6
	sbf 0x00000001, r2, r26, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2166
	jarl __COM_u64tod, r31
	mov r22, r6
	mov r24, r7
	mov r10, r8
	mov r11, r9
	jarl __COM_ddiv, r31
	mov 0x00000000, r22
	mov 0x412E8480, r9
	mov r10, r6
	mov r11, r7
	mov r22, r8
	jarl __COM_dmul, r31
	movhi 0x00003FE0, r0, r9
	mov r10, r6
	mov r11, r7
	mov r22, r8
	jarl __COM_dadd, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtoi, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2168
	add 0x00000001, r20
	st.w r20, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2169
	mul 0x0000006C, r21, r0
	mov #_StbM_TimeBase.1, r2
	add r21, r2
	st.w r10, 0x00000054[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2170
	st.b r5, 0x0000005C[r2]
.BB.LABEL.30_21:	; if_break_bb349
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2172
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.30_22:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2173
	dispose 0x00000000, 0x000007FD, [r31]
_StbM_CalculateRoc.1:
	.stack _StbM_CalculateRoc.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2184
	prepare 0x000007FD, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2186
	movhi HIGHW1(#_StbM_ConfigData.2), r0, r2
	ld.w LOWW(#_StbM_ConfigData.2)[r2], r2
	ld.w 0x00000000[r2], r2
	mov r6, r5
	mul 0x0000003C, r5, r0
	add r5, r2
	ld.w 0x00000024[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2189
	cmp 0x00000000, r20
	mov r6, r21
	mov r7, r22
	bz17 .BB.LABEL.31_11
.BB.LABEL.31_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2196
	ld.w 0x00000004[r8], r2
	ld.w 0x00000000[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2194
	ld.w 0x00000004[r22], r23
	ld.w 0x00000000[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2195
	ld.w 0x00000008[r20], r25
	ld.w 0x00000004[r20], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2196
	st.w r2, 0x00000004[r3]
	st.w r5, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2198
	jarl _StbM_GetGlobalTime64.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2199
	ld.w 0x00000004[r3], r27
	ld.w 0x00000000[r3], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2201
	jarl _SchM_Enter_StbM_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2199
	sub r28, r24
	sbf 0x00000001, r27, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2202
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000010[r20], r5
	or r5, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.31_4
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2206
	mov r24, r6
	mov r23, r7
	jarl _StbM_Abs.1, r31
	ld.w 0x00000010[r20], r2
	ld.w 0x0000000C[r20], r5
	cmp r5, r10
	sbf 0x00000001, r2, r11, r0
	bnc9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2210
	mov r26, r2
	or r25, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	mul 0x0000006C, r21, r0
	mov #_StbM_TimeBase.1, r20
	add r21, r20
	st.w r0, 0x00000058[r20]
	br9 .BB.LABEL.31_10
.BB.LABEL.31_5:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2214
	mov r24, r6
	mov r23, r7
	jarl _StbM_Abs.1, r31
	ld.w 0x00000010[r20], r2
	ld.w 0x0000000C[r20], r5
	cmp r5, r10
	sbf 0x00000001, r2, r11, r0
	bnc9 .BB.LABEL.31_10
.BB.LABEL.31_6:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2217
	mov r24, r6
	mov r23, r7
	jarl __COM_i64tod, r31
	mov 0x00000000, r20
	mov 0x412E8480, r9
	mov r10, r6
	mov r11, r7
	mov r20, r8
	jarl __COM_dmul, r31
	mov r10, r23
	mov r11, r24
	mov r26, r6
	mov r25, r7
	jarl __COM_u64tod, r31
	mov r23, r6
	mov r24, r7
	mov r10, r8
	mov r11, r9
	jarl __COM_ddiv, r31
	mov r10, r23
	mov r11, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2218
	mov r23, r6
	mov r24, r7
	mov r20, r8
	mov r20, r9
	jarl __COM_dunord, r31
	mov r10, r25
	mov r23, r6
	mov r24, r7
	mov r20, r8
	mov r20, r9
	jarl __COM_dle, r31
	cmp 0x00000000, r25
	setf 0x0000000A, r2
	cmp 0x00000000, r10
	setf 0x00000007, r5
	or r5, r2
	mul 0x0000006C, r21, r0
	mov #_StbM_TimeBase.1, r5
	add r21, r5
	cmp 0x00000000, r2
	movea 0x00000058, r5, r20
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 0
	movhi 0x00003FE0, r0, r9
	br9 .BB.LABEL.31_9
.BB.LABEL.31_8:	; if_else_bb93
	movhi 0x0000BFE0, r0, r9
.BB.LABEL.31_9:	; if_else_bb93
	mov 0x00000000, r8
	mov r23, r6
	mov r24, r7
	jarl __COM_dadd, r31
	mov r10, r6
	mov r11, r7
	jarl __COM_dtoi, r31
	st.w r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2227
	ld.w 0x00000004[r3], r2
	ld.w 0x00000000[r3], r5
	st.w r2, 0x00000004[r22]
	st.w r5, 0x00000000[r22]
.BB.LABEL.31_10:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2233
	jarl _SchM_Exit_StbM_Context, r31
.BB.LABEL.31_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2234
	dispose 0x00000008, 0x000007FD, [r31]
_StbM_TimeCorrection.1:
	.stack _StbM_TimeCorrection.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2246
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2252
	jarl _StbM_CalculateRrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2253
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _StbM_CalculateRoc.1, r31
	dispose 0x00000000, 0x00000071, [r31]
_StbM_SetUserDataIn.1:
	.stack _StbM_SetUserDataIn.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2454
	add 0xFFFFFFFC, r3
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2457
	mov r6, r2
	mul 0x0000006C, r2, r0
	mov #_StbM_TimeBase.1, r5
	add r2, r5
	mov r3, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2458
	ld.bu 0x00000000[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_4
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2460
	mov r6, r5
	mul 0x0000006C, r5, r0
	mov #_StbM_TimeBase.1, r7
	add r5, r7
	mov r3, r5
	ld.b 0x00000001[r5], r5
	st.b r5, 0x00000003[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2461
	cmp 0x00000002, r2
	bl9 .BB.LABEL.33_4
.BB.LABEL.33_2:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2463
	mov r6, r5
	mul 0x0000006C, r5, r0
	mov #_StbM_TimeBase.1, r7
	add r5, r7
	mov r3, r5
	ld.b 0x00000002[r5], r5
	st.b r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2464
	cmp 0x00000003, r2
	bl9 .BB.LABEL.33_4
.BB.LABEL.33_3:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2466
	mul 0x0000006C, r6, r0
	mov #_StbM_TimeBase.1, r2
	add r6, r2
	mov r3, r5
	ld.b 0x00000003[r5], r5
	st.b r5, 0x00000005[r2]
.BB.LABEL.33_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/StbM/StbM.c", 2470
	dispose 0x00000004, 0x00000000, [r31]
	.section .bss, bss
	.align 4
_StbM_TimeBase.1:
	.ds (108)
	.align 4
_StbM_ConfigData.2:
	.ds (4)
	.align 4
_StbM_RateCorrection.3:
	.ds (32)
	.section .data, data
_StbM_InitStatus.4:
	.ds (1)
	.section .const, const
	.align 4
.STR.1:
	.ds (24)
