#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\gpt\src\Gpt_LLDriver.c -oDefaultBuild\Gpt_LLDriver.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_817166f5bfcd433e94c1e37b2d44d6f5yt2tgc1f.z2f
#@	compiled at Fri Mar 27 09:51:08 2026

	.file "..\..\Bsw\Mcal\gpt\src\Gpt_LLDriver.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Gpt_GaaTAUDBUserReg_BaseAddress
	.extern _Gpt_GaaTAUJUserReg_BaseAddress
	.extern _Gpt_GaaTAUDBOsReg_BaseAddress
	.extern _Gpt_GaaTAUJOsReg_BaseAddress
	.extern _Gpt_GaaTAUDBChReg_BaseAddress
	.extern _Gpt_GaaTAUJChReg_BaseAddress
	.extern _Gpt_GaaOSTMReg_BaseAddress
	.extern _Gpt_GpOSTMRegPredefTimer_BaseAddress
	.extern _Gpt_GpTAUUnitConfig
	.extern _Gpt_GpChannelConfig
	.extern _Gpt_GpChannelRamData
	.extern _Gpt_GaaGptOSTMRegMirror
	.extern _Gpt_GaaGptTAUDBChRegMirror
	.extern _Gpt_GaaGptTAUJChRegMirror
	.extern _Gpt_GstGptPredefTimerOSTMRegMirror
	.extern _Gpt_GucDriverMode
	.extern _Gpt_GusPredefTimerNrOverflows
	.public _Gpt_HW_Init
	.extern _Gpt_WriteVerifyErrorCallback
	.public _Gpt_HW_DeInit
	.extern _Dem_ReportErrorStatus
	.public _Gpt_HW_GetTimeElapsed
	.extern _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION
	.extern _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION
	.public _Gpt_HW_GetTimeRemaining
	.public _Gpt_HW_StartTimer
	.public _Gpt_HW_StopTimer
	.public _Gpt_HW_DisableInterrupt
	.public _Gpt_HW_EnableInterrupt
	.public _Gpt_CbkNotification
	.extern _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION
	.extern _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION
	.public _Gpt_LLDriverHWCheckConsistency
	.public _Gpt_HW_GetPredefTimerValue
	.public _Gpt_HW_StartPredefTimer
	.public _Gpt_HW_StopPredefTimer
	.public _Gpt_HW_PredefTimerCallbackNotification

	.section .text, text
_Gpt_HW_Init:
	.stack _Gpt_HW_Init = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 652
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 710
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 705
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.1_6
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 719
	andi 0x000000FF, r22, r2
	mul 0x00000014, r2, r0
	add r21, r2
	ld.bu 0x00000013[r2], r5
	andi 0x00000007, r5, r5
	cmp 0x00000003, r5
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.bu 0x00000013[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 727
	andi 0x000000FF, r22, r2
	mul 0x00000014, r2, r0
	add r21, r2
	ld.bu 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 729
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 732
	st.w r0, 0x00000000[r5]
	mov #_Gpt_GaaGptOSTMRegMirror, r6
	add r2, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 736
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_5:	; if_break_bb69
	add 0x00000001, r22
.BB.LABEL.1_6:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 714
	andi 0x000000FF, r22, r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_7:	; bb72.bb293_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r22
	jr .BB.LABEL.1_24
.BB.LABEL.1_8:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 756
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 760
	ld.h 0x00000020[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 763
	ld.h 0x00000020[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_10:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 766
	ld.h 0x00000028[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000028[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 768
	ld.h 0x00000028[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_12:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 771
	ld.h 0x00000024[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000024[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 773
	ld.h 0x00000024[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_14:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 776
	ld.h 0x0000002C[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x0000002C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 778
	ld.h 0x0000002C[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_16:	; if_break_bb201
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 785
	ld.bu 0x00000007[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_17:	; if_then_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 788
	ld.h 0x00000004[r20], r2
	st.h r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 789
	ld.hu 0x00000004[r20], r2
	ld.hu 0x00000000[r23], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_19:	; if_break_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 793
	ld.b 0x00000006[r20], r2
	st.b r2, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 795
	ld.bu 0x00000006[r20], r2
	ld.bu 0x00000004[r23], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_then_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_21:	; if_break_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 806
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 811
	ld.h 0x0000001C[r2], r5
	ld.h 0x00000002[r20], r6
	or r6, r5
	st.h r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 814
	ld.hu 0x00000002[r20], r5
	ld.h 0x0000001C[r2], r2
	ld.h 0x00000002[r20], r6
	and r6, r2
	zxh r2
	cmp r5, r2
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_23:	; if_break_bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 822
	add 0x00000001, r22
	add 0x00000008, r20
.BB.LABEL.1_24:	; bb293
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 749
	andi 0x000000FF, r22, r0
	bz17 .BB.LABEL.1_8
.BB.LABEL.1_25:	; bb293.bb494_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r22
	jr .BB.LABEL.1_40
.BB.LABEL.1_26:	; bb300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 835
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 839
	ld.h 0x00000020[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000020[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 841
	ld.h 0x00000020[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; if_then_bb333
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_28:	; if_break_bb335
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 844
	ld.h 0x00000028[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000028[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 846
	ld.h 0x00000028[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; if_then_bb362
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_30:	; if_break_bb364
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 849
	ld.h 0x00000024[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x00000024[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 851
	ld.h 0x00000024[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb391
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_32:	; if_break_bb393
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 854
	ld.h 0x0000002C[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x0000002C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 856
	ld.h 0x0000002C[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; if_then_bb420
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_34:	; if_break_bb422
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 863
	ld.bu 0x00000007[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_35:	; if_then_bb430
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 866
	ld.h 0x00000004[r20], r2
	st.h r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 867
	ld.hu 0x00000004[r20], r2
	ld.hu 0x00000000[r23], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_37
.BB.LABEL.1_36:	; if_then_bb448
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_37:	; if_break_bb452
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 878
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 883
	ld.h 0x0000001C[r2], r5
	ld.h 0x00000002[r20], r6
	or r6, r5
	st.h r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 886
	ld.hu 0x00000002[r20], r5
	ld.h 0x0000001C[r2], r2
	ld.h 0x00000002[r20], r6
	and r6, r2
	zxh r2
	cmp r5, r2
	bz9 .BB.LABEL.1_39
.BB.LABEL.1_38:	; if_then_bb487
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_39:	; if_break_bb489
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 896
	add 0x00000001, r22
	add 0x00000008, r20
.BB.LABEL.1_40:	; bb494
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 829
	andi 0x000000FF, r22, r0
	bz17 .BB.LABEL.1_26
.BB.LABEL.1_41:	; bb494.bb660_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.1_54
.BB.LABEL.1_42:	; bb501
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 911
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 917
	ld.b 0x00000010[r23], r2
	ld.b 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.b r2, 0x00000010[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 920
	ld.bu 0x00000010[r23], r2
	ld.hu 0x00000002[r20], r5
	tst r5, r2
	bz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; if_then_bb534
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_44:	; if_break_bb536
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 923
	ld.b 0x00000014[r23], r2
	ld.b 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.b r2, 0x00000014[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 925
	ld.bu 0x00000014[r23], r2
	ld.hu 0x00000002[r20], r5
	tst r5, r2
	bz9 .BB.LABEL.1_46
.BB.LABEL.1_45:	; if_then_bb563
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_46:	; if_break_bb565
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 931
	ld.bu 0x00000007[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_51
.BB.LABEL.1_47:	; if_then_bb573
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 934
	ld.h 0x00000004[r20], r2
	st.h r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 935
	ld.hu 0x00000004[r20], r2
	ld.hu 0x00000000[r23], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_49
.BB.LABEL.1_48:	; if_then_bb591
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_49:	; if_break_bb593
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 939
	ld.b 0x00000006[r20], r2
	st.b r2, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 941
	ld.bu 0x00000006[r20], r2
	ld.bu 0x00000004[r23], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_51
.BB.LABEL.1_50:	; if_then_bb611
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_51:	; if_break_bb615
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 952
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 956
	ld.b 0x00000010[r2], r5
	ld.b 0x00000002[r20], r6
	or r6, r5
	st.b r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 959
	ld.bu 0x00000002[r20], r5
	ld.b 0x00000010[r2], r2
	ld.b 0x00000002[r20], r6
	and r6, r2
	zxb r2
	cmp r5, r2
	bz9 .BB.LABEL.1_53
.BB.LABEL.1_52:	; if_then_bb653
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_53:	; if_break_bb655
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 968
	add 0x00000001, r22
	add 0x00000008, r20
.BB.LABEL.1_54:	; bb660
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 904
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.1_42
.BB.LABEL.1_55:	; bb660.bb861_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	jr .BB.LABEL.1_74
.BB.LABEL.1_56:	; bb667
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 980
	ld.bu 0x00000013[r21], r2
	andi 0x00000007, r2, r2
	addi 0xFFFFFFFD, r2, r5
	cmp 0x00000002, r5
	bl17 .BB.LABEL.1_70
.BB.LABEL.1_57:	; bb667
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.1_65
.BB.LABEL.1_58:	; bb667
	cmp 0x00000001, r2
	bh17 .BB.LABEL.1_73
.BB.LABEL.1_59:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 993
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 997
	ld.h 0x0000000E[r21], r2
	st.h r2, 0x00000200[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1000
	ld.hu 0x0000000E[r21], r2
	ld.hu 0x00000200[r22], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_61
.BB.LABEL.1_60:	; if_then_bb698
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_61:	; if_break_bb700
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1009
	andi 0x000000FF, r20, r23
	mov 0x00000000, r7
	mov r23, r6
	jarl _Gpt_HW_DisableInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1015
	shl 0x00000002, r23
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r5
	add r23, r5
	clr1 0x00000000, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1029
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	add r23, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1032
	st.b r0, 0x000000C0[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1033
	ld.bu 0x000000C0[r22], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.1_63
.BB.LABEL.1_62:	; if_then_bb726
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_63:	; if_break_bb728
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1036
	st.h r0, 0x00000000[r22]
	ld.bu 0x00000004[r21], r2
	add r2, r2
	mov #_Gpt_GaaGptTAUDBChRegMirror, r5
	add r2, r5
	st.h r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1039
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_73
.BB.LABEL.1_64:	; if_then_bb745
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
	br9 .BB.LABEL.1_73
.BB.LABEL.1_65:	; switch_clause_bb748
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1049
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1052
	ld.h 0x0000000E[r21], r2
	st.h r2, 0x00000080[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1055
	ld.hu 0x0000000E[r21], r2
	ld.hu 0x00000080[r22], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_67
.BB.LABEL.1_66:	; if_then_bb772
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_67:	; if_break_bb774
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1059
	st.b r0, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1060
	ld.bu 0x00000020[r22], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.1_69
.BB.LABEL.1_68:	; if_then_bb785
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_69:	; if_break_bb787
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1063
	st.w r0, 0x00000000[r22]
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaGptTAUJChRegMirror, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1066
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_71
	br9 .BB.LABEL.1_72
.BB.LABEL.1_70:	; switch_clause_bb821
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1103
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1107
	st.b r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1108
	ld.bu 0x00000020[r2], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.1_72
.BB.LABEL.1_71:	; if_then_bb838
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_72:	; if_break_bb840
	andi 0x000000FF, r20, r22
	mov 0x00000000, r7
	mov r22, r6
	jarl _Gpt_HW_DisableInterrupt, r31
	shl 0x00000002, r22
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r5
	add r22, r5
	clr1 0x00000000, 0x00000001[r5]
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	add r22, r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.1_73:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1149
	add 0x00000001, r20
	movea 0x00000014, r21, r21
.BB.LABEL.1_74:	; bb861
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 975
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl17 .BB.LABEL.1_56
.BB.LABEL.1_75:	; bb867
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1161
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r5
	st.w r0, 0x00000000[r5]
	movhi HIGHW1(#_Gpt_GstGptPredefTimerOSTMRegMirror), r0, r5
	st.w r0, LOWW(#_Gpt_GstGptPredefTimerOSTMRegMirror)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1164
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_77
.BB.LABEL.1_76:	; if_then_bb877
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_77:	; if_break_bb879
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1169
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r5
	st.b r0, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1171
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
	ld.bu 0x00000020[r2], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.1_79
.BB.LABEL.1_78:	; if_then_bb890
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000080, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.1_79:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1175
	dispose 0x00000000, 0x00000079, [r31]
_Gpt_HW_DeInit:
	.stack _Gpt_HW_DeInit = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1226
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1288
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r2
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1283
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r21
	mov 0x00000000, r22
	br9 .BB.LABEL.2_16
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1299
	ld.bu 0x00000007[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1302
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1305
	st.h r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1306
	ld.hu 0x00000000[r23], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1310
	andi 0x000000FF, r22, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1313
	st.b r0, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1315
	ld.bu 0x00000004[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_7:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1336
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1341
	ld.h 0x0000001C[r23], r2
	ld.h 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.h r2, 0x0000001C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1343
	ld.h 0x0000001C[r23], r2
	ld.h 0x00000002[r20], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_9:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1352
	ld.hu 0x00000002[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1353
	st.h r2, 0x00000188[r23]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1368
	add 0xFFFFFFFF, r5
.BB.LABEL.2_11:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1361
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000180[r23], r6
	tst r2, r6
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_13:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1374
	ld.hu 0x00000180[r23], r5
	tst r2, r5
	bz9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1378
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_15:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1388
	add 0x00000001, r22
	add 0x00000008, r20
.BB.LABEL.2_16:	; bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1293
	andi 0x000000FF, r22, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_17:	; bb148.bb287_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.2_32
.BB.LABEL.2_18:	; bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1407
	ld.bu 0x00000007[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_19:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1411
	ld.bu 0x00000001[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJOsReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1415
	st.h r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1416
	ld.hu 0x00000000[r23], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_21:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1420
	st.b r0, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1421
	ld.bu 0x00000004[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_23
.BB.LABEL.2_22:	; if_then_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_23:	; if_break_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1432
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1438
	ld.b 0x00000010[r23], r2
	ld.b 0x00000002[r20], r5
	not r5, r5
	and r5, r2
	st.b r2, 0x00000010[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1442
	ld.bu 0x00000010[r23], r2
	ld.hu 0x00000002[r20], r5
	tst r5, r2
	bz9 .BB.LABEL.2_25
.BB.LABEL.2_24:	; if_then_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_25:	; if_break_bb232
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1450
	ld.hu 0x00000002[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1452
	st.b r2, 0x00000008[r23]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.2_27
.BB.LABEL.2_26:	; bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1465
	add 0xFFFFFFFF, r5
.BB.LABEL.2_27:	; bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1459
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_29
.BB.LABEL.2_28:	; bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000000[r23], r6
	and r2, r6
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.2_26
.BB.LABEL.2_29:	; bb267
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1471
	ld.b 0x00000000[r23], r5
	and r2, r5
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.2_31
.BB.LABEL.2_30:	; if_then_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1475
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_31:	; if_break_bb282
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1485
	add 0x00000001, r22
	add 0x00000008, r20
.BB.LABEL.2_32:	; bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1399
	andi 0x000000FF, r22, r0
	bz9 .BB.LABEL.2_18
.BB.LABEL.2_33:	; bb287.bb512_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	jr .BB.LABEL.2_56
.BB.LABEL.2_34:	; bb294
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1496
	ld.bu 0x00000013[r21], r2
	andi 0x00000007, r2, r2
	addi 0xFFFFFFFD, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.2_44
.BB.LABEL.2_35:	; bb294
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_41
.BB.LABEL.2_36:	; bb294
	cmp 0x00000001, r2
	bh17 .BB.LABEL.2_55
.BB.LABEL.2_37:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1508
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1512
	st.h r0, 0x00000200[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1514
	ld.hu 0x00000200[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_39
.BB.LABEL.2_38:	; if_then_bb318
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_39:	; if_break_bb320
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1517
	st.h r0, 0x00000000[r22]
	ld.bu 0x00000004[r21], r2
	add r2, r2
	mov #_Gpt_GaaGptTAUDBChRegMirror, r5
	add r2, r5
	st.h r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1520
	ld.hu 0x00000000[r22], r2
.BB.LABEL.2_40:	; if_break_bb320
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_53
	br9 .BB.LABEL.2_54
.BB.LABEL.2_41:	; switch_clause_bb355
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1560
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1564
	st.h r0, 0x00000080[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1566
	ld.hu 0x00000080[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_43
.BB.LABEL.2_42:	; if_then_bb372
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_43:	; if_break_bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1570
	st.w r0, 0x00000000[r22]
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaGptTAUJChRegMirror, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1573
	ld.w 0x00000000[r22], r2
	br9 .BB.LABEL.2_40
.BB.LABEL.2_44:	; switch_clause_bb408
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1613
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1620
	st.b r2, 0x00000018[r22]
	movea 0x000000F0, r0, r2
	br9 .BB.LABEL.2_46
.BB.LABEL.2_45:	; bb418
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1634
	add 0xFFFFFFFF, r2
.BB.LABEL.2_46:	; bb421
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1627
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_48
.BB.LABEL.2_47:	; bb425
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r22]
	bnz9 .BB.LABEL.2_45
.BB.LABEL.2_48:	; bb445
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1638
	tst1 0x00000000, 0x00000010[r22]
	bz9 .BB.LABEL.2_50
.BB.LABEL.2_49:	; if_then_bb458
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1644
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_50:	; if_break_bb460
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1653
	st.w r0, 0x00000000[r22]
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaGptOSTMRegMirror, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1656
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_52
.BB.LABEL.2_51:	; if_then_bb476
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_52:	; if_break_bb478
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1659
	st.b r0, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1660
	ld.bu 0x00000020[r22], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.2_54
.BB.LABEL.2_53:	; if_then_bb489
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_54:	; if_break_bb491
	andi 0x000000FF, r20, r22
	mov 0x00000000, r7
	mov r22, r6
	jarl _Gpt_HW_DisableInterrupt, r31
	shl 0x00000002, r22
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r5
	add r22, r5
	clr1 0x00000000, 0x00000001[r5]
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	add r22, r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.2_55:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1702
	add 0x00000001, r20
	movea 0x00000014, r21, r21
.BB.LABEL.2_56:	; bb512
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1492
	andi 0x000000FF, r20, r2
	cmp 0x00000008, r2
	bl17 .BB.LABEL.2_34
.BB.LABEL.2_57:	; bb518
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1710
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r5
	st.w r0, 0x00000000[r5]
	movhi HIGHW1(#_Gpt_GstGptPredefTimerOSTMRegMirror), r0, r5
	st.w r0, LOWW(#_Gpt_GstGptPredefTimerOSTMRegMirror)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1713
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_59
.BB.LABEL.2_58:	; if_then_bb528
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_59:	; if_break_bb530
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1716
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r5
	st.b r0, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1718
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
	ld.bu 0x00000020[r2], r2
	andi 0x00000003, r2, r0
	bz9 .BB.LABEL.2_61
.BB.LABEL.2_60:	; if_then_bb541
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000081, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.2_61:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1722
	dispose 0x00000000, 0x00000079, [r31]
_Gpt_HW_GetTimeElapsed:
	.stack _Gpt_HW_GetTimeElapsed = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1766
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1797
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r20
	mulhi 0x00000014, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1802
	ld.bu 0x00000013[r21], r2
	andi 0x00000007, r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1806
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1811
	mov r6, r2
	shl 0x00000002, r2
	add r2, r23
	ld.bu 0x00000000[r23], r2
	cmp 0x00000000, r2
	mov r6, r24
	bz17 .BB.LABEL.3_26
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1816
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1818
	cmp 0x00000002, r22
	bl9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r22
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_3:	; if_then_bb
	addi 0xFFFFFFFD, r22, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.3_17
.BB.LABEL.3_4:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r25
	jr .BB.LABEL.3_25
.BB.LABEL.3_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1829
	mulhi 0x00000014, r24, r22
	add r22, r20
	ld.bu 0x00000004[r20], r22
	shl 0x00000002, r22
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r24
	add r22, r24
	ld.w 0x00000000[r24], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1835
	ld.hu 0x00000000[r22], r25
	ld.hu 0x00000080[r22], r24
	sub r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1840
	ld.w 0x00000008[r20], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_25
.BB.LABEL.3_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1842
	ld.hu 0x00000000[r20], r20
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1859
	ld.bu 0x00000000[r23], r20
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_9:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_10:	; if_then_bb108
	ld.hu 0x00000000[r22], r25
	br9 .BB.LABEL.3_24
.BB.LABEL.3_11:	; switch_clause_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1889
	mulhi 0x00000014, r24, r22
	add r22, r20
	ld.bu 0x00000004[r20], r22
	shl 0x00000002, r22
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r24
	add r22, r24
	ld.w 0x00000000[r24], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1893
	ld.w 0x00000000[r22], r25
	ld.w 0x00000010[r22], r24
	sub r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1897
	ld.w 0x00000008[r20], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_25
.BB.LABEL.3_12:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1899
	ld.hu 0x00000000[r20], r20
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bz9 .BB.LABEL.3_16
.BB.LABEL.3_14:	; if_else_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1915
	ld.bu 0x00000000[r23], r20
	cmp 0x00000003, r20
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_15:	; bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_16:	; if_then_bb197
	ld.w 0x00000000[r22], r25
	br9 .BB.LABEL.3_24
.BB.LABEL.3_17:	; switch_clause_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1942
	mulhi 0x00000014, r24, r25
	add r20, r25
	ld.bu 0x00000004[r25], r25
	shl 0x00000002, r25
	mov #_Gpt_GaaOSTMReg_BaseAddress, r2
	add r25, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1945
	ld.w 0x00000000[r2], r25
	ld.w 0x00000004[r2], r5
	sub r5, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1954
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_18:	; if_then_bb231
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1956
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.3_22
.BB.LABEL.3_19:	; bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mulhi 0x00000014, r24, r5
	add r20, r5
	ld.w 0x00000008[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_20:	; if_then_bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1959
	mulhi 0x00000014, r24, r5
	add r5, r20
	ld.w 0x00000008[r20], r5
	ld.hu 0x00000000[r5], r5
	andi 0x00001000, r5, r0
	bz9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_then_bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1969
	ld.w 0x00000000[r2], r25
	add 0x00000001, r25
.BB.LABEL.3_22:	; if_break_bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1982
	ld.bu 0x00000000[r23], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_23:	; if_then_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 1991
	ld.w 0x00000000[r2], r25
.BB.LABEL.3_24:	; if_then_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	add 0x00000001, r25
.BB.LABEL.3_25:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2011
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	mov r25, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.3_26:	; if_break_bb289
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2019
	dispose 0x00000000, 0x00000679, [r31]
_Gpt_HW_GetTimeRemaining:
	.stack _Gpt_HW_GetTimeRemaining = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2066
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2127
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r20
	mulhi 0x00000014, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2132
	ld.bu 0x00000013[r21], r2
	andi 0x00000007, r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2136
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2142
	mov r6, r2
	shl 0x00000002, r2
	add r2, r23
	ld.bu 0x00000000[r23], r2
	cmp 0x00000000, r2
	mov r6, r24
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb469_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r25
	jr .BB.LABEL.4_46
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2149
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2152
	cmp 0x00000002, r22
	bl9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r22
	bz9 .BB.LABEL.4_18
.BB.LABEL.4_4:	; if_then_bb
	addi 0xFFFFFFFD, r22, r25
	cmp 0x00000002, r25
	bl17 .BB.LABEL.4_30
.BB.LABEL.4_5:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r20
	mov r20, r25
	jr .BB.LABEL.4_44
.BB.LABEL.4_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2162
	mulhi 0x00000014, r24, r22
	add r20, r22
	ld.bu 0x00000004[r22], r22
	shl 0x00000002, r22
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r25
	add r22, r25
	ld.w 0x00000000[r25], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2169
	ld.hu 0x00000080[r22], r25
	add 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2176
	ld.bu 0x00000000[r23], r22
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb71
	mov 0x00000000, r25
.BB.LABEL.4_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2188
	mulhi 0x00000014, r24, r22
	add r20, r22
	ld.w 0x00000008[r22], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_break_bb.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	jr .BB.LABEL.4_44
.BB.LABEL.4_11:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2190
	ld.hu 0x00000000[r22], r22
	andi 0x00001000, r22, r0
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_12:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_13:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2204
	mulhi 0x00000014, r24, r21
	add r21, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2211
	ld.hu 0x0000000C[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2204
	ld.bu 0x00000012[r20], r20
	shl 0x00000003, r20
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r22
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r22], r22
	add r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2208
	ld.bu 0x00000000[r22], r20
	shl 0x00000002, r20
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r22
	add r20, r22
	ld.w 0x00000000[r22], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2214
	st.h r21, 0x00000188[r20]
	movea 0x000000F0, r0, r22
	br9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2229
	add 0xFFFFFFFF, r22
.BB.LABEL.4_15:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2222
	cmp 0x00000000, r22
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000180[r20], r23
	tst r21, r23
	bnz9 .BB.LABEL.4_14
.BB.LABEL.4_17:	; bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2237
	ld.hu 0x00000180[r20], r20
	tst r21, r20
	bz9 .BB.LABEL.4_5
	jr .BB.LABEL.4_43
.BB.LABEL.4_18:	; switch_clause_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2266
	mulhi 0x00000014, r24, r22
	add r20, r22
	ld.bu 0x00000004[r22], r22
	shl 0x00000002, r22
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r25
	add r22, r25
	ld.w 0x00000000[r25], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2271
	ld.w 0x00000010[r22], r25
	add 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2276
	ld.bu 0x00000000[r23], r22
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_19:	; bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_20:	; if_then_bb208
	mov 0x00000000, r25
.BB.LABEL.4_21:	; if_break_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2288
	mulhi 0x00000014, r24, r22
	add r20, r22
	ld.w 0x00000008[r22], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.4_23
.BB.LABEL.4_22:	; if_break_bb210.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	jr .BB.LABEL.4_44
.BB.LABEL.4_23:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2290
	ld.hu 0x00000000[r22], r22
	andi 0x00001000, r22, r0
	bz9 .BB.LABEL.4_22
.BB.LABEL.4_24:	; bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_25:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2303
	mulhi 0x00000014, r24, r21
	add r21, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2311
	ld.hu 0x0000000C[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2303
	ld.bu 0x00000012[r20], r20
	shl 0x00000003, r20
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r22
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r22], r22
	add r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2308
	ld.bu 0x00000000[r22], r20
	shl 0x00000002, r20
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r22
	add r20, r22
	ld.w 0x00000000[r22], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2314
	st.b r21, 0x00000008[r20]
	movea 0x000000F0, r0, r22
	br9 .BB.LABEL.4_27
.BB.LABEL.4_26:	; bb266
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2328
	add 0xFFFFFFFF, r22
.BB.LABEL.4_27:	; bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2321
	cmp 0x00000000, r22
	bz9 .BB.LABEL.4_29
.BB.LABEL.4_28:	; bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000000[r20], r23
	and r21, r23
	andi 0x000000FF, r23, r0
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_29:	; bb293
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2336
	ld.b 0x00000000[r20], r20
	and r21, r20
	andi 0x000000FF, r20, r0
	bz17 .BB.LABEL.4_5
	br9 .BB.LABEL.4_43
.BB.LABEL.4_30:	; switch_clause_bb313
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2363
	mulhi 0x00000014, r24, r2
	add r20, r2
	ld.bu 0x00000004[r2], r25
	add 0x00000004, r2
	shl 0x00000002, r25
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r25, r5
	ld.w 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2367
	ld.w 0x00000004[r25], r25
	add 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2372
	ld.bu 0x00000000[r23], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.4_33
.BB.LABEL.4_31:	; bb330
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_33
.BB.LABEL.4_32:	; if_then_bb348
	mov 0x00000000, r25
.BB.LABEL.4_33:	; if_break_bb350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2384
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.4_35
.BB.LABEL.4_34:	; if_break_bb350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000003, r22
	bz9 .BB.LABEL.4_36
.BB.LABEL.4_35:	; if_break_bb350.switch_break_bb_crit_edge
	mov 0x00000000, r20
	br9 .BB.LABEL.4_44
.BB.LABEL.4_36:	; bb372
	mulhi 0x00000014, r24, r5
	add r20, r5
	ld.w 0x00000008[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_35
.BB.LABEL.4_37:	; bb385
	mulhi 0x00000014, r24, r5
	add r5, r20
	ld.w 0x00000008[r20], r20
	ld.hu 0x00000000[r20], r20
	andi 0x00001000, r20, r0
	bz9 .BB.LABEL.4_35
.BB.LABEL.4_38:	; if_then_bb404
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2398
	ld.bu 0x00000000[r2], r20
	shl 0x00000002, r20
	mov #_Gpt_GaaOSTMReg_BaseAddress, r25
	add r20, r25
	ld.w 0x00000000[r25], r20
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2404
	st.b r25, 0x00000018[r20]
	movea 0x000000F0, r0, r25
	br9 .BB.LABEL.4_40
.BB.LABEL.4_39:	; bb414
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2418
	add 0xFFFFFFFF, r25
.BB.LABEL.4_40:	; bb417
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2411
	cmp 0x00000000, r25
	bz9 .BB.LABEL.4_42
.BB.LABEL.4_41:	; bb421
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r20]
	bnz9 .BB.LABEL.4_39
.BB.LABEL.4_42:	; bb441
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2426
	tst1 0x00000000, 0x00000010[r20]
	bz17 .BB.LABEL.4_5
.BB.LABEL.4_43:	; if_then_bb454
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r25
	mov 0x00000001, r20
.BB.LABEL.4_44:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2454
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2457
	cmp 0x00000000, r20
	bz9 .BB.LABEL.4_46
.BB.LABEL.4_45:	; if_then_bb465
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2460
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.4_46:	; if_break_bb469
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2473
	dispose 0x00000000, 0x00000679, [r31]
_Gpt_HW_StartTimer:
	.stack _Gpt_HW_StartTimer = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2519
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2570
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r20
	mulhi 0x00000014, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2575
	ld.bu 0x00000013[r21], r2
	andi 0x00000007, r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2586
	andi 0x00000010, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2579
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2586
	mov r6, r24
	mov r6, r25
	mov r7, r26
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r2
	ld.w LOWW(#_Gpt_GucDriverMode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; bb42
	mov r24, r2
	shl 0x00000002, r2
	add r23, r2
	tst1 0x00000000, 0x00000001[r2]
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2598
	jarl _Gpt_HW_EnableInterrupt, r31
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2602
	jarl _Gpt_HW_DisableInterrupt, r31
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2609
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2611
	addi 0xFFFFFFFD, r22, r2
	cmp 0x00000002, r2
	bl17 .BB.LABEL.5_28
.BB.LABEL.5_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r22
	bz9 .BB.LABEL.5_18
.BB.LABEL.5_7:	; if_break_bb
	cmp 0x00000001, r22
	bh17 .BB.LABEL.5_38
.BB.LABEL.5_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2624
	mulhi 0x00000014, r25, r2
	add r20, r2
	ld.bu 0x00000012[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2628
	ld.bu 0x00000004[r2], r6
	add 0x00000004, r2
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2624
	shl 0x00000003, r5
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r7
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r7], r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2635
	ld.bu 0x00000000[r7], r5
	shl 0x00000002, r5
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2636
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2640
	add 0xFFFFFFFF, r26
	st.h r26, 0x00000000[r6]
	ld.bu 0x00000000[r2], r2
	add r2, r2
	mov #_Gpt_GaaGptTAUDBChRegMirror, r21
	add r2, r21
	st.h r26, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2645
	zxh r26
	ld.hu 0x00000000[r6], r2
	cmp r2, r26
	bnz9 .BB.LABEL.5_11
	br9 .BB.LABEL.5_12
.BB.LABEL.5_10:	; if_else_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2654
	st.h r26, 0x00000000[r6]
	ld.bu 0x00000000[r2], r21
	add r21, r21
	mov #_Gpt_GaaGptTAUDBChRegMirror, r2
	add r21, r2
	st.h r26, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2659
	zxh r26
	ld.hu 0x00000000[r6], r21
	cmp r21, r26
	bz9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000084, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.5_12:	; if_break_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2664
	mulhi 0x00000014, r25, r21
	add r21, r20
	ld.hu 0x0000000C[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2667
	st.h r20, 0x00000184[r22]
	movea 0x000000F0, r0, r21
	br9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2681
	add 0xFFFFFFFF, r21
.BB.LABEL.5_14:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2674
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_16
.BB.LABEL.5_15:	; bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000180[r22], r25
	and r20, r25
	cmp r25, r20
	bnz9 .BB.LABEL.5_13
.BB.LABEL.5_16:	; bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2689
	shl 0x00000002, r24
	add r24, r23
	ld.hu 0x00000180[r22], r21
	mov 0x00000001, r24
	st.b r24, 0x00000000[r23]
	and r20, r21
	cmp r21, r20
	bz9 .BB.LABEL.5_27
.BB.LABEL.5_17:	; if_then_bb450.critedge23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2867
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.5_18:	; switch_clause_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2707
	mulhi 0x00000014, r25, r2
	add r20, r2
	ld.bu 0x00000012[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2712
	ld.bu 0x00000004[r2], r6
	add 0x00000004, r2
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2707
	shl 0x00000003, r5
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r7
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r7], r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2714
	ld.bu 0x00000000[r7], r5
	shl 0x00000002, r5
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2715
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2720
	add 0xFFFFFFFF, r26
	st.w r26, 0x00000000[r6]
	ld.bu 0x00000000[r2], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaGptTAUJChRegMirror, r21
	add r2, r21
	st.w r26, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2723
	ld.w 0x00000000[r6], r2
	cmp r2, r26
	bnz9 .BB.LABEL.5_21
	br9 .BB.LABEL.5_22
.BB.LABEL.5_20:	; if_else_bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2734
	st.w r26, 0x00000000[r6]
	ld.bu 0x00000000[r2], r21
	shl 0x00000002, r21
	mov #_Gpt_GaaGptTAUJChRegMirror, r2
	add r21, r2
	st.w r26, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2737
	ld.w 0x00000000[r6], r21
	cmp r21, r26
	bz9 .BB.LABEL.5_22
.BB.LABEL.5_21:	; if_then_bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000084, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.5_22:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2743
	mulhi 0x00000014, r25, r21
	add r21, r20
	ld.hu 0x0000000C[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2746
	st.b r20, 0x00000004[r22]
	movea 0x000000F0, r0, r21
	br9 .BB.LABEL.5_24
.BB.LABEL.5_23:	; bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2760
	add 0xFFFFFFFF, r21
.BB.LABEL.5_24:	; bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2753
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; bb295
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000000[r22], r25
	and r20, r25
	zxb r25
	andi 0x000000FF, r20, r26
	cmp r25, r26
	bnz9 .BB.LABEL.5_23
.BB.LABEL.5_26:	; bb315
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2768
	shl 0x00000002, r24
	add r24, r23
	ld.b 0x00000000[r22], r21
	mov 0x00000001, r24
	st.b r24, 0x00000000[r23]
	and r20, r21
	zxb r21
	zxb r20
	cmp r21, r20
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_27:	; return.critedge21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2875
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.5_28:	; switch_clause_bb331
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2784
	mulhi 0x00000014, r25, r2
	add r2, r20
	ld.bu 0x00000004[r20], r2
	add 0x00000004, r20
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2785
	tst1 0x00000004, 0x00000013[r21]
	bnz9 .BB.LABEL.5_30
.BB.LABEL.5_29:	; if_then_bb348
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2790
	add 0xFFFFFFFF, r26
	st.w r26, 0x00000000[r22]
	ld.bu 0x00000000[r20], r20
	shl 0x00000002, r20
	mov #_Gpt_GaaGptOSTMRegMirror, r2
	add r20, r2
	st.w r26, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2793
	ld.w 0x00000000[r22], r20
	cmp r20, r26
	bnz9 .BB.LABEL.5_31
	br9 .BB.LABEL.5_32
.BB.LABEL.5_30:	; if_else_bb373
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2803
	st.w r26, 0x00000000[r22]
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaGptOSTMRegMirror, r5
	add r2, r5
	st.w r26, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2807
	ld.w 0x00000000[r22], r2
	cmp r2, r26
	bz9 .BB.LABEL.5_32
.BB.LABEL.5_31:	; if_then_bb392
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000084, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.5_32:	; if_break_bb395
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2814
	st.b r2, 0x00000014[r22]
	movea 0x000000F0, r0, r2
	br9 .BB.LABEL.5_34
.BB.LABEL.5_33:	; bb399
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2827
	add 0xFFFFFFFF, r2
.BB.LABEL.5_34:	; bb402
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2820
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_36
.BB.LABEL.5_35:	; bb406
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r22]
	bz9 .BB.LABEL.5_33
.BB.LABEL.5_36:	; bb426
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2835
	shl 0x00000002, r24
	add r24, r23
	tst1 0x00000000, 0x00000010[r22]
	mov 0x00000001, r24
	st.b r24, 0x00000000[r23]
	bz17 .BB.LABEL.5_17
.BB.LABEL.5_37:	; return.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2861
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2864
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.5_38:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2855
	shl 0x00000002, r24
	add r24, r23
	mov 0x00000001, r2
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2861
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2864
	dispose 0x00000000, 0x00000779, [r31]
_Gpt_HW_StopTimer:
	.stack _Gpt_HW_StopTimer = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2916
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2962
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r21
	mulhi 0x00000014, r20, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2967
	ld.bu 0x00000013[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2971
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2979
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2967
	andi 0x00000007, r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2981
	addi 0xFFFFFFFD, r2, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.6_14
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_2:	; entry
	cmp 0x00000001, r2
	bh9 .BB.LABEL.6_8
.BB.LABEL.6_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2994
	mulhi 0x00000014, r20, r2
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3001
	ld.hu 0x0000000C[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2994
	ld.bu 0x00000012[r21], r21
	shl 0x00000003, r21
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r5
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r5], r5
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 2999
	ld.bu 0x00000000[r5], r21
	shl 0x00000002, r21
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r5
	add r21, r5
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3004
	st.h r2, 0x00000188[r21]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3016
	add 0xFFFFFFFF, r5
.BB.LABEL.6_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3010
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000180[r21], r6
	tst r2, r6
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3024
	ld.hu 0x00000180[r21], r21
	tst r2, r21
	bnz9 .BB.LABEL.6_19
.BB.LABEL.6_8:	; if_break_bb208.critedge9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	br9 .BB.LABEL.6_20
.BB.LABEL.6_9:	; switch_clause_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3045
	mulhi 0x00000014, r20, r2
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3052
	ld.hu 0x0000000C[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3045
	ld.bu 0x00000012[r21], r21
	shl 0x00000003, r21
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r5
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r5], r5
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3050
	ld.bu 0x00000000[r5], r21
	shl 0x00000002, r21
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r5
	add r21, r5
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3057
	st.b r2, 0x00000008[r21]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3070
	add 0xFFFFFFFF, r5
.BB.LABEL.6_11:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3063
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000000[r21], r6
	and r2, r6
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_13:	; bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3078
	ld.b 0x00000000[r21], r21
	and r2, r21
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.6_8
	br9 .BB.LABEL.6_19
.BB.LABEL.6_14:	; switch_clause_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3094
	mulhi 0x00000014, r20, r2
	add r2, r21
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3099
	st.b r5, 0x00000018[r2]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.6_16
.BB.LABEL.6_15:	; bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3112
	add 0xFFFFFFFF, r5
.BB.LABEL.6_16:	; bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3105
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r2]
	bnz9 .BB.LABEL.6_15
.BB.LABEL.6_18:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3120
	tst1 0x00000000, 0x00000010[r2]
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_19:	; if_then_bb206.critedge10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3149
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.6_20:	; if_break_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3161
	mov r20, r6
	jarl _Gpt_HW_DisableInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3164
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3170
	shl 0x00000002, r20
	add r20, r23
	ld.bu 0x00000000[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_21:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3172
	st.b r2, 0x00000000[r23]
.BB.LABEL.6_22:	; if_break_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3181
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	dispose 0x00000000, 0x00000079, [r31]
_Gpt_HW_DisableInterrupt:
	.stack _Gpt_HW_DisableInterrupt = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3223
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3231
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r20
	mulhi 0x00000014, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3237
	mov r6, r22
	addi 0x00000000, r7, r23
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3240
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3248
	mulhi 0x00000014, r22, r2
	add r20, r2
	ld.w 0x00000008[r2], r5
	add 0x00000008, r2
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3253
	ld.bu 0x00000013[r21], r6
	andi 0x00000007, r6, r6
	cmp 0x00000004, r6
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3258
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
	ld.w 0x00000000[r2], r5
	ld.b 0x00000000[r5], r5
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3268
	mulhi 0x00000014, r22, r5
	add r20, r5
	movhi 0x0000FFC0, r0, r6
	ld.w 0x00000104[r6], r7
	ld.h 0x00000010[r5], r5
	shl 0x00000010, r5
	movhi 0x0000FFFF, r0, r8
	xor r8, r5
	or r5, r7
	st.w r7, 0x00000104[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3274
	ld.w 0x00000104[r6], r5
.BB.LABEL.7_6:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	syncp
.BB.LABEL.7_7:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3284
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_12
.BB.LABEL.7_8:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3287
	ld.bu 0x00000013[r21], r6
	andi 0x00000007, r6, r6
	cmp 0x00000004, r6
	bz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3290
	ld.hu 0x00000000[r5], r20
	andi 0x0000EFFF, r20, r20
	st.h r20, 0x00000000[r5]
	ld.w 0x00000000[r2], r20
	ld.h 0x00000000[r20], r20
	br9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; if_else_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3296
	mulhi 0x00000014, r22, r2
	add r2, r20
	ld23.w 0xFFC00108[r0], r2
	ld.h 0x00000010[r20], r5
	shl 0x00000010, r5
	movhi 0x0000FFFF, r0, r6
	xor r6, r5
	or r5, r2
	st23.w r2, 0xFFC00108[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3301
	ld23.w 0xFFC00100[r0], r2
.BB.LABEL.7_11:	; if_else_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	syncp
.BB.LABEL.7_12:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3313
	cmp 0x00000000, r23
	bz9 .BB.LABEL.7_14
.BB.LABEL.7_13:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3316
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
.BB.LABEL.7_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3324
	dispose 0x00000000, 0x00000079, [r31]
_Gpt_HW_EnableInterrupt:
	.stack _Gpt_HW_EnableInterrupt = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3363
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3370
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3375
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3370
	mulhi 0x00000014, r20, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3381
	ld.w 0x00000008[r2], r5
	addi 0x00000008, r2, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3384
	ld.bu 0x00000013[r2], r7
	andi 0x00000007, r7, r7
	cmp 0x00000004, r7
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3389
	ld.hu 0x00000000[r5], r7
	andi 0x0000EFFF, r7, r7
	st.h r7, 0x00000000[r5]
	ld.w 0x00000000[r6], r5
	ld.h 0x00000000[r5], r5
	syncp
	br9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3404
	mulhi 0x00000014, r20, r5
	add r21, r5
	ld23.w 0xFFC00108[r0], r7
	ld.h 0x00000010[r5], r5
	shl 0x00000010, r5
	movhi 0x0000FFFF, r0, r8
	xor r8, r5
	or r5, r7
	st23.w r7, 0xFFC00108[r0]
.BB.LABEL.8_4:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3417
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_5:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3423
	ld.bu 0x00000013[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3428
	ld.bu 0x00000000[r5], r20
	andi 0x0000007F, r20, r20
	st.b r20, 0x00000000[r5]
	ld.w 0x00000000[r6], r20
	ld.b 0x00000000[r20], r20
	br9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_else_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3438
	mulhi 0x00000014, r20, r2
	add r2, r21
	movhi 0x0000FFC0, r0, r2
	ld.w 0x00000104[r2], r5
	ld.h 0x00000010[r21], r6
	shl 0x00000010, r6
	ori 0x0000FFFF, r6, r6
	and r6, r5
	st.w r5, 0x00000104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3444
	ld.w 0x00000104[r2], r2
.BB.LABEL.8_8:	; if_else_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	syncp
.BB.LABEL.8_9:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3455
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	dispose 0x00000000, 0x00000061, [r31]
_Gpt_CbkNotification:
	.stack _Gpt_CbkNotification = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3508
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3567
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r21
	mulhi 0x00000014, r20, r22
	add r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3594
	ld.bu 0x00000013[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3580
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3585
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3590
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3594
	tst1 0x00000004, 0x00000013[r22]
	bnz17 .BB.LABEL.9_23
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3601
	jarl _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION, r31
	andi 0x00000007, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3603
	cmp 0x00000002, r2
	bl9 .BB.LABEL.9_5
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_3:	; if_then_bb
	add 0xFFFFFFFD, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.9_15
.BB.LABEL.9_4:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000000, r24
	jr .BB.LABEL.9_20
.BB.LABEL.9_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3617
	mulhi 0x00000014, r20, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3625
	ld.hu 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3617
	ld.bu 0x00000012[r2], r2
	shl 0x00000003, r2
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r6
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3622
	ld.bu 0x00000000[r6], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3628
	st.h r5, 0x00000188[r2]
	movea 0x000000F0, r0, r6
	br9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3642
	add 0xFFFFFFFF, r6
.BB.LABEL.9_7:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3635
	cmp 0x00000000, r6
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000180[r2], r7
	tst r5, r7
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_9:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3662
	mov r20, r6
	shl 0x00000002, r6
	add r6, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3650
	ld.hu 0x00000180[r2], r2
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3662
	st.b r6, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3654
	tst r5, r2
	setf 0x0000000A, r24
	br9 .BB.LABEL.9_20
.BB.LABEL.9_10:	; switch_clause_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3674
	mulhi 0x00000014, r20, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3681
	ld.hu 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3674
	ld.bu 0x00000012[r2], r2
	shl 0x00000003, r2
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r6
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3679
	ld.bu 0x00000000[r6], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3684
	st.b r5, 0x00000008[r2]
	movea 0x000000F0, r0, r6
	br9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3698
	add 0xFFFFFFFF, r6
.BB.LABEL.9_12:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3691
	cmp 0x00000000, r6
	bz9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000000[r2], r7
	and r5, r7
	andi 0x000000FF, r7, r0
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_14:	; bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3718
	mov r20, r6
	shl 0x00000002, r6
	add r6, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3706
	ld.b 0x00000000[r2], r2
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3718
	st.b r6, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3706
	and r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3710
	andi 0x000000FF, r2, r0
	setf 0x0000000A, r24
	br9 .BB.LABEL.9_20
.BB.LABEL.9_15:	; switch_clause_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3726
	mulhi 0x00000014, r20, r2
	add r21, r2
	ld.bu 0x00000004[r2], r2
	shl 0x00000002, r2
	mov #_Gpt_GaaOSTMReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3731
	st.b r5, 0x00000018[r2]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.9_17
.BB.LABEL.9_16:	; bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3745
	add 0xFFFFFFFF, r5
.BB.LABEL.9_17:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3738
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r2]
	bnz9 .BB.LABEL.9_16
.BB.LABEL.9_19:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3764
	mov r20, r5
	shl 0x00000002, r5
	add r5, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3753
	ld.bu 0x00000010[r2], r2
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3764
	st.b r5, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3753
	andi 0x00000001, r2, r24
.BB.LABEL.9_20:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3778
	jarl _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3781
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.9_22
.BB.LABEL.9_21:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3784
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.9_22:	; if_break_bb225
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3791
	mov r20, r6
	jarl _Gpt_HW_DisableInterrupt, r31
.BB.LABEL.9_23:	; if_break_bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3882
	movhi HIGHW1(#_Gpt_GucDriverMode), r0, r2
	ld.w LOWW(#_Gpt_GucDriverMode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_27
.BB.LABEL.9_24:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3892
	movhi HIGHW1(#_Gpt_GpChannelRamData), r0, r2
	ld.w LOWW(#_Gpt_GpChannelRamData)[r2], r2
	mov r20, r5
	shl 0x00000002, r5
	add r5, r2
	tst1 0x00000000, 0x00000001[r2]
	bz9 .BB.LABEL.9_27
.BB.LABEL.9_25:	; if_then_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3896
	mulhi 0x00000014, r20, r2
	add r2, r21
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_27
.BB.LABEL.9_26:	; if_then_bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3904
	jarl [r2], r31
.BB.LABEL.9_27:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 3960
	dispose 0x00000000, 0x00000479, [r31]
_Gpt_LLDriverHWCheckConsistency:
	.stack _Gpt_LLDriverHWCheckConsistency = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4017
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4092
	jarl _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4107
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4104
	movhi HIGHW1(#_Gpt_GpChannelConfig), r0, r2
	ld.w LOWW(#_Gpt_GpChannelConfig)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4100
	movhi HIGHW1(#_Gpt_GpTAUUnitConfig), r0, r5
	ld.w LOWW(#_Gpt_GpTAUUnitConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4107
	bnz17 .BB.LABEL.10_49
.BB.LABEL.10_1:	; entry.bb163_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.10_12
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4119
	ld.bu 0x00000001[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUDBOsReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4122
	ld.hu 0x00000020[r6], r7
	ld.hu 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000024[r6], r7
	tst r8, r7
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; bb52
	ld.h 0x00000028[r6], r7
	ld.h 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; bb71
	ld.h 0x0000002C[r6], r7
	ld.h 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb91
	mov 0x00000001, r21
.BB.LABEL.10_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4142
	ld.bu 0x00000007[r5], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.10_11
.BB.LABEL.10_8:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4144
	ld.hu 0x00000000[r6], r7
	ld.hu 0x00000004[r5], r8
	cmp r8, r7
	bnz9 .BB.LABEL.10_10
.BB.LABEL.10_9:	; bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.bu 0x00000004[r6], r6
	ld.bu 0x00000006[r5], r7
	cmp r7, r6
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb129
	mov 0x00000001, r21
.BB.LABEL.10_11:	; if_break_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4161
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4163
	ld.hu 0x0000001C[r6], r7
	ld.h 0x0000001C[r6], r6
	ld.h 0x00000002[r5], r8
	or r8, r6
	zxh r6
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4166
	cmov 0x0000000A, 0x00000001, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4178
	add 0x00000001, r20
	add 0x00000008, r5
.BB.LABEL.10_12:	; bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4111
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_13:	; bb163.bb302_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.10_23
.BB.LABEL.10_14:	; bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4192
	ld.bu 0x00000001[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUDBOsReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4194
	ld.hu 0x00000020[r6], r7
	ld.hu 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.10_18
.BB.LABEL.10_15:	; bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.hu 0x00000024[r6], r7
	tst r8, r7
	bnz9 .BB.LABEL.10_18
.BB.LABEL.10_16:	; bb207
	ld.h 0x00000028[r6], r7
	ld.h 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.10_18
.BB.LABEL.10_17:	; bb226
	ld.h 0x0000002C[r6], r7
	ld.h 0x00000002[r5], r8
	and r8, r7
	andi 0x0000FFFF, r7, r0
	bz9 .BB.LABEL.10_19
.BB.LABEL.10_18:	; if_then_bb246
	mov 0x00000001, r21
.BB.LABEL.10_19:	; if_break_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4213
	ld.bu 0x00000007[r5], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.10_22
.BB.LABEL.10_20:	; if_then_bb256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4215
	ld.hu 0x00000000[r6], r6
	ld.hu 0x00000004[r5], r7
	cmp r7, r6
	bz9 .BB.LABEL.10_22
.BB.LABEL.10_21:	; if_then_bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r21
.BB.LABEL.10_22:	; if_break_bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4231
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUDBUserReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4234
	ld.hu 0x0000001C[r6], r7
	ld.h 0x0000001C[r6], r6
	ld.h 0x00000002[r5], r8
	or r8, r6
	zxh r6
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4238
	cmov 0x0000000A, 0x00000001, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4250
	add 0x00000001, r20
	add 0x00000008, r5
.BB.LABEL.10_23:	; bb302
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4185
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.10_14
.BB.LABEL.10_24:	; bb302.bb426_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.10_33
.BB.LABEL.10_25:	; bb309
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4263
	ld.bu 0x00000001[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUJOsReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4266
	ld.b 0x00000010[r6], r7
	ld.hu 0x00000002[r5], r8
	and r8, r7
	andi 0x000000FF, r7, r0
	bnz9 .BB.LABEL.10_27
.BB.LABEL.10_26:	; bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.b 0x00000014[r6], r7
	and r8, r7
	andi 0x000000FF, r7, r0
	bz9 .BB.LABEL.10_28
.BB.LABEL.10_27:	; if_then_bb349
	mov 0x00000001, r21
.BB.LABEL.10_28:	; if_break_bb351
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4281
	ld.bu 0x00000007[r5], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.10_32
.BB.LABEL.10_29:	; if_then_bb359
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4283
	ld.hu 0x00000000[r6], r7
	ld.hu 0x00000004[r5], r8
	cmp r8, r7
	bnz9 .BB.LABEL.10_31
.BB.LABEL.10_30:	; bb370
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.bu 0x00000004[r6], r6
	ld.bu 0x00000006[r5], r7
	cmp r7, r6
	bz9 .BB.LABEL.10_32
.BB.LABEL.10_31:	; if_then_bb389
	mov 0x00000001, r21
.BB.LABEL.10_32:	; if_break_bb393
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4300
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_Gpt_GaaTAUJUserReg_BaseAddress, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4303
	ld.bu 0x00000010[r6], r7
	ld.b 0x00000010[r6], r6
	ld.b 0x00000002[r5], r8
	or r8, r6
	zxb r6
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4308
	cmov 0x0000000A, 0x00000001, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4320
	add 0x00000001, r20
	add 0x00000008, r5
.BB.LABEL.10_33:	; bb426
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4257
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.10_25
.BB.LABEL.10_34:	; bb426.bb532_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.10_46
.BB.LABEL.10_35:	; bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4329
	ld.bu 0x00000013[r2], r5
	andi 0x00000007, r5, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.10_39
.BB.LABEL.10_36:	; bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000002, r5
	bz9 .BB.LABEL.10_41
.BB.LABEL.10_37:	; bb433
	add 0xFFFFFFFD, r5
	cmp 0x00000002, r5
	bnc9 .BB.LABEL.10_45
.BB.LABEL.10_38:	; switch_clause_bb510
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4387
	ld.bu 0x00000004[r2], r5
	shl 0x00000002, r5
	mov #_Gpt_GaaOSTMReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	br9 .BB.LABEL.10_42
.BB.LABEL.10_39:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4343
	ld.bu 0x00000004[r2], r5
	shl 0x00000002, r5
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4346
	ld.hu 0x00000200[r5], r6
	ld.hu 0x0000000E[r2], r7
	cmp r7, r6
	bnz9 .BB.LABEL.10_44
.BB.LABEL.10_40:	; bb457
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.bu 0x000000C0[r5], r5
	br9 .BB.LABEL.10_43
.BB.LABEL.10_41:	; switch_clause_bb475
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4365
	ld.bu 0x00000004[r2], r5
	shl 0x00000002, r5
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4368
	ld.hu 0x00000080[r5], r6
	ld.hu 0x0000000E[r2], r7
	cmp r7, r6
	bnz9 .BB.LABEL.10_44
.BB.LABEL.10_42:	; bb492
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	ld.bu 0x00000020[r5], r5
.BB.LABEL.10_43:	; bb492
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_45
.BB.LABEL.10_44:	; if_then_bb524
	mov 0x00000001, r21
.BB.LABEL.10_45:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4410
	add 0x00000001, r20
	movea 0x00000014, r2, r2
.BB.LABEL.10_46:	; bb532
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4326
	andi 0x000000FF, r20, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.10_35
.BB.LABEL.10_47:	; bb538
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4419
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r20
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r20], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4420
	ld.bu 0x00000020[r20], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.10_63
.BB.LABEL.10_48:	; if_then_bb547
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.10_63
.BB.LABEL.10_49:	; if_else_bb550
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4434
	cmp 0x00000001, r20
	bz9 .BB.LABEL.10_51
.BB.LABEL.10_50:	; if_else_bb550.if_break_bb687_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.10_63
.BB.LABEL.10_51:	; if_else_bb550.bb576_crit_edge
	mov 0x00000000, r2
	mov r2, r21
	br9 .BB.LABEL.10_53
.BB.LABEL.10_52:	; bb556
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4444
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_Gpt_GaaGptOSTMRegMirror, r6
	add r5, r6
	mov #_Gpt_GaaOSTMReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r6], r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4447
	cmov 0x0000000A, 0x00000001, r21, r21
	add 0x00000001, r2
.BB.LABEL.10_53:	; bb576
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4439
	andi 0x000000FF, r21, r5
	cmp 0x00000001, r5
	mov r2, r5
	zxb r5
	bz9 .BB.LABEL.10_55
.BB.LABEL.10_54:	; bb576
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000004, r5
	blt9 .BB.LABEL.10_52
.BB.LABEL.10_55:	; bb576.bb617_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.10_57
.BB.LABEL.10_56:	; bb595
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4462
	andi 0x000000FF, r2, r5
	mov r5, r6
	add r6, r6
	mov #_Gpt_GaaGptTAUDBChRegMirror, r7
	add r6, r7
	shl 0x00000002, r5
	mov #_Gpt_GaaTAUDBChReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x00000000[r5], r5
	ld.hu 0x00000000[r7], r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4465
	cmov 0x0000000A, 0x00000001, r21, r21
	add 0x00000001, r2
.BB.LABEL.10_57:	; bb617
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4458
	andi 0x000000FF, r21, r5
	cmp 0x00000001, r5
	mov r2, r5
	zxb r5
	bz9 .BB.LABEL.10_59
.BB.LABEL.10_58:	; bb617
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	cmp 0x00000003, r5
	blt9 .BB.LABEL.10_56
.BB.LABEL.10_59:	; bb617.bb666_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.10_61
.BB.LABEL.10_60:	; bb636
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4482
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_Gpt_GaaGptTAUJChRegMirror, r6
	add r5, r6
	mov #_Gpt_GaaTAUJChReg_BaseAddress, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r6], r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4485
	cmov 0x0000000A, 0x00000001, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4497
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r5
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r5], r5
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_Gpt_GstGptPredefTimerOSTMRegMirror), r0, r6
	ld.w LOWW(#_Gpt_GstGptPredefTimerOSTMRegMirror)[r6], r6
	cmp r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4500
	cmov 0x0000000A, 0x00000001, r21, r21
	add 0x00000001, r2
.BB.LABEL.10_61:	; bb666
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4477
	andi 0x000000FF, r21, r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.10_63
.BB.LABEL.10_62:	; bb666
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.10_60
.BB.LABEL.10_63:	; if_break_bb687
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4518
	jarl _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4522
	andi 0x000000FF, r21, r10
	dispose 0x00000000, 0x00000061, [r31]
_Gpt_HW_GetPredefTimerValue:
	.stack _Gpt_HW_GetPredefTimerValue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4567
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4604
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4681
	ld23.w 0xFFC00100[r0], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4698
	ld.w 0x00000004[r2], r7
	mov 0xFFFFFFFE, r8
	subr r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4700
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4707
	ld.hu LOWW(#_Gpt_GusPredefTimerNrOverflows)[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4705
	ld.w 0x00000004[r2], r10
	sub r10, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4689
	shr 0x00000015, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4707
	andi 0x00000001, r5, r5
	cmp r8, r7
	bnh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4715
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r7
	ld.hu LOWW(#_Gpt_GusPredefTimerNrOverflows)[r7], r9
	mov r8, r7
.BB.LABEL.11_3:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4738
	ld23.w 0xFFC00100[r0], r8
	movhi 0x00000020, r0, r10
	and r10, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4746
	mov r8, r10
	shr 0x00000015, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4663
	cmp r10, r5
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_4:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4753
	shr 0x00000015, r8
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4765
	cmp 0x00000003, r6
	bh9 .BB.LABEL.11_10
.BB.LABEL.11_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.11_12[r6]
.SWITCH.LABEL.11_12:
	br9 .BB.LABEL.11_6
	br9 .BB.LABEL.11_7
	br9 .BB.LABEL.11_8
	br9 .BB.LABEL.11_9
.SWITCH.LABEL.11_12.END:
.BB.LABEL.11_6:	; bb57.switch_break_bb_crit_edge
	movea 0x00000010, r0, r2
	ori 0x0000FFFF, r0, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; switch_clause_bb71
	movea 0x00000010, r0, r2
	mov 0x00FFFFFF, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_8:	; switch_clause_bb72
	movea 0x00000010, r0, r2
	mov 0xFFFFFFFF, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_9:	; switch_clause_bb73
	movea 0x00000640, r0, r2
	mov 0xFFFFFFFF, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; switch_clause_bb74
	movea 0x00000010, r0, r2
	mov 0x00000000, r5
.BB.LABEL.11_11:	; switch_break_bb
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4827
	divhu r2, r10, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4817
	zxh r9
	divhu r2, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4827
	andi 0x000007FF, r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4834
	mul r8, r10, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4827
	divhu r2, r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4834
	add r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4827
	mul r6, r8, r0
	add r8, r9
	divhu r2, r9, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4834
	add r9, r10
	and r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4843
	jmp [r31]
_Gpt_HW_StartPredefTimer:
	.stack _Gpt_HW_StartPredefTimer = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4880
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4889
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r20
	movhi 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4906
	st23.w r2, 0xFFC00108[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4910
	movhi 0x0000FFC0, r0, r2
	ld.w 0x00000104[r2], r5
	mov 0xFFDFFFFF, r6
	and r6, r5
	st.w r5, 0x00000104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4914
	ld.w 0x00000104[r2], r2
	syncp
	mov 0xFFFFFFFE, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4923
	st.w r2, 0x00000000[r20]
	movhi HIGHW1(#_Gpt_GstGptPredefTimerOSTMRegMirror), r0, r5
	st.w r2, LOWW(#_Gpt_GstGptPredefTimerOSTMRegMirror)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4926
	ld.w 0x00000000[r20], r2
	cmp 0xFFFFFFFE, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movea 0x00000089, r0, r7
	mov 0x00000002, r6
	jarl _Gpt_WriteVerifyErrorCallback, r31
.BB.LABEL.12_2:	; if_break_bb
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4931
	st.b r2, 0x00000014[r20]
	movea 0x000000F0, r0, r2
	br9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4943
	add 0xFFFFFFFF, r2
.BB.LABEL.12_4:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4937
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r20]
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_6:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4947
	tst1 0x00000000, 0x00000010[r20]
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4953
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.12_8:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4962
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r2
	st.h r0, LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_Gpt_HW_StopPredefTimer:
	.stack _Gpt_HW_StopPredefTimer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 4999
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5007
	movhi HIGHW1(#_Gpt_GpOSTMRegPredefTimer_BaseAddress), r0, r2
	ld.w LOWW(#_Gpt_GpOSTMRegPredefTimer_BaseAddress)[r2], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5009
	st.b r5, 0x00000018[r2]
	movea 0x000000F0, r0, r5
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5021
	add 0xFFFFFFFF, r5
.BB.LABEL.13_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5014
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	tst1 0x00000000, 0x00000010[r2]
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_4:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5027
	tst1 0x00000000, 0x00000010[r2]
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5031
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.13_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 0
	movhi 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5053
	st23.w r2, 0xFFC00108[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5057
	ld23.w 0xFFC00104[r0], r5
	or r2, r5
	st23.w r5, 0xFFC00104[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5062
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r2
	st.h r0, LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Gpt_HW_PredefTimerCallbackNotification:
	.stack _Gpt_HW_PredefTimerCallbackNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5109
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r2
	ld.hu LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2], r2
	movea 0x0000063E, r0, r5
	cmp r5, r2
	movhi HIGHW1(#_Gpt_GusPredefTimerNrOverflows), r0, r2
	bh9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5114
	ld.h LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2]
	jmp [r31]
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/gpt/src/Gpt_LLDriver.c", 5122
	st.h r0, LOWW(#_Gpt_GusPredefTimerNrOverflows)[r2]
	jmp [r31]
