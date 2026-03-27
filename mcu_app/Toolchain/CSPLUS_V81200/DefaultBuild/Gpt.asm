#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\gpt\src\Gpt.c -oDefaultBuild\Gpt.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b84ae333bd6446f79a76b97b91a8d17c1predghv.sex
#@	compiled at Fri Mar 27 09:51:06 2026

	.file "..\..\Bsw\Mcal\gpt\src\Gpt.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Gpt_GpTAUUnitConfig
	.extern _Gpt_GpChannelConfig
	.extern _Gpt_GpChannelRamData
	.extern _Gpt_GucDriverMode
	.extern _Gpt_GblDriverStatus
	.public _Gpt_GetVersionInfo
	.public _Gpt_Init
	.extern _Gpt_HW_Init
	.extern _Gpt_HW_StartPredefTimer
	.public _Gpt_DeInit
	.extern _Gpt_HW_StopPredefTimer
	.extern _Gpt_HW_DeInit
	.public _Gpt_GetTimeElapsed
	.extern _Gpt_HW_GetTimeElapsed
	.public _Gpt_GetTimeRemaining
	.extern _Gpt_HW_GetTimeRemaining
	.public _Gpt_StartTimer
	.extern _Gpt_HW_StartTimer
	.public _Gpt_StopTimer
	.extern _Gpt_HW_StopTimer
	.public _Gpt_EnableNotification
	.extern _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION
	.extern _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION
	.extern _Gpt_HW_EnableInterrupt
	.public _Gpt_DisableNotification
	.extern _Gpt_HW_DisableInterrupt
	.public _Gpt_GetPredefTimerValue
	.extern _Gpt_HW_GetPredefTimerValue
	.public _Gpt_HWCheckConsistency
	.extern _Gpt_LLDriverHWCheckConsistency

	.section .text, text
_Gpt_GetVersionInfo:
	.stack _Gpt_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 460
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 479
	st.h r2, 0x00000000[r6]
	movea 0x00000064, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 481
	st.h r2, 0x00000002[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 483
	st.b r2, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 485
	st.b r0, 0x00000006[r6]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 487
	st.b r2, 0x00000007[r6]
	jmp [r31]
_Gpt_Init:
	.stack _Gpt_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 542
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 618
	ld.w 0x00000000[r6], r2
	mov 0x0ED90100, r5
	cmp r5, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 623
	ld.w 0x00000004[r6], r2
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r5
	st.w r2, LOWW(#_Gpt_GpTAUUnitConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 626
	ld.w 0x00000008[r6], r2
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r5
	st.w r2, LOWW(#_Gpt_GpChannelConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 628
	ld.w 0x0000000C[r6], r2
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r5
	st.w r2, LOWW(#_Gpt_GpChannelRamData)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 656
	jarl _Gpt_HW_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 666
	jarl _Gpt_HW_StartPredefTimer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 671
	movhi HIGHW1(#_Gpt_GblDriverStatus), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Gpt_GblDriverStatus)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 676
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r2
	st.w r0, LOWW(#_Gpt_GucDriverMode)[r2]
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 698
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_DeInit:
	.stack _Gpt_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 746
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 823
	jarl _Gpt_HW_StopPredefTimer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 829
	movhi HIGHW1(#_Gpt_GblDriverStatus), r0, r2
	st.b r0, LOWW(#_Gpt_GblDriverStatus)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 833
	jarl _Gpt_HW_DeInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_GetTimeElapsed:
	.stack _Gpt_GetTimeElapsed = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 896
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 924
	jarl _Gpt_HW_GetTimeElapsed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 935
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_GetTimeRemaining:
	.stack _Gpt_GetTimeRemaining = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 990
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1016
	jarl _Gpt_HW_GetTimeRemaining, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1028
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_StartTimer:
	.stack _Gpt_StartTimer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1077
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1142
	jarl _Gpt_HW_StartTimer, r31
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_StopTimer:
	.stack _Gpt_StopTimer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1204
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1231
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	mov r6, r5
	shl 0x00000002, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1236
	jarl _Gpt_HW_StopTimer, r31
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1250
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_EnableNotification:
	.stack _Gpt_EnableNotification = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1303
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1356
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1359
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r2
	ld.w LOWW(#_Gpt_GucDriverMode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1363
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1367
	mov r20, r6
	jarl _Gpt_HW_EnableInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1370
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1381
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	set1 0x00000000, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1385
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Gpt_DisableNotification:
	.stack _Gpt_DisableNotification = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1447
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1503
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1506
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r2
	ld.w LOWW(#_Gpt_GucDriverMode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 0
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r2
	mulhi 0x00000014, r20, r5
	add r5, r2
	tst1 0x00000004, 0x00000013[r2]
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1513
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1517
	mov r20, r6
	jarl _Gpt_HW_DisableInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1520
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1531
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	shl 0x00000002, r20
	add r20, r2
	clr1 0x00000000, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 1535
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	dispose 0x00000000, 0x00000041, [r31]
_Gpt_GetPredefTimerValue:
	.stack _Gpt_GetPredefTimerValue = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2347
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2367
	movhi HIGHW1(#_Gpt_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Gpt_GblDriverStatus)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2377
	cmp 0x00000001, r2
	setf 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2384
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r5
	ld.w LOWW(#_Gpt_GucDriverMode)[r5], r5
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2395
	cmov 0x00000002, 0x00000001, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2401
	addi 0x00000000, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2410
	cmov 0x00000002, 0x00000001, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2418
	cmp 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2437
	cmov 0x0000000F, 0x00000001, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2445
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2449
	jarl _Gpt_HW_GetPredefTimerValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2451
	st.w r10, 0x00000000[r21]
.BB.LABEL.10_2:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2472
	dispose 0x00000000, 0x00000061, [r31]
_Gpt_HWCheckConsistency:
	.stack _Gpt_HWCheckConsistency = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2531
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2538
	movhi HIGHW1(#_Gpt_GblDriverStatus), r0, r2
	ld.bu LOWW(#_Gpt_GblDriverStatus)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 0
	cmp 0x00000001, r6
	bh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2563
	jarl _Gpt_LLDriverHWCheckConsistency, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_3:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt.c", 2567
	dispose 0x00000000, 0x00000001, [r31]
