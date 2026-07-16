#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can.c -oDefaultBuild\Can.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8e6788dd611e4c0a992973448b99f1cbnzbthc0i.wdl
#@	compiled at Thu Jul 16 13:41:25 2026

	.file "..\..\Bsw\Mcal\can\src\Can.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaRegs
	.extern _Can_GblInitialized
	.extern _Can_GaaHwAccessFlag
	.extern _Can_GaaGlobalIntCount
	.extern _Can_GulPageID
	.extern _Can_GpConfig
	.extern _Can_GpPCController
	.extern _Can_GpPBController
	.extern _Can_GpHohConfig
	.extern _Can_GaaCtrlState
	.extern _Can_GaaMirrorGlobalReg
	.extern _Can_GaaMirrorChannelReg
	.extern _Can_GaaMirrorHohReg
	.public _Can_GetVersionInfo
	.extern _Det_ReportError
	.public _Can_Init
	.extern _Can_GlobalModeChange
	.extern _Dem_ReportErrorStatus
	.public _Can_ChangeBaudrate
	.extern _Can_CommonDetCheck
	.public _Can_CheckBaudrate
	.public _Can_SetBaudrate
	.public _Can_DisableControllerInterrupts
	.extern _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.extern _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.public _Can_EnableControllerInterrupts
	.extern _Can_WaitRegisterChange
	.extern _Can_ChannelModeChange
	.public _Can_RAMTest
	.extern _Can_RamTst_Set_RAMData
	.extern _Can_RamTest_Checker_Algorithm
	.extern _Can_RamTst_WalkPath_Algorithm
	.public _Can_CheckHWConsistency

	.section .text, text
_Can_GetVersionInfo:
	.stack _Can_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 648
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 656
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 659
	jarl32 _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	movea 0x0000003B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 667
	st.h r5, 0x00000000[r6]
	movea 0x00000050, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 669
	st.h r5, 0x00000002[r6]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 671
	st.b r5, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 673
	st.b r0, 0x00000006[r6]
	mov 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 675
	st.b r5, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Can_Init:
	.stack _Can_Init = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 726
	prepare 0x00000301, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 746
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000006, r9
	br9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 756
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r9
.BB.LABEL.2_4:	; if_then_bb15
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	mov r7, r8
	jarl32 _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 914
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.2_5:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 763
	ld.w 0x00000000[r6], r5
	mov 0x0ED40100, r7
	cmp r7, r5
	bz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	movea 0x000000EF, r0, r9
	br9 .BB.LABEL.2_4
.BB.LABEL.2_7:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 776
	movhi HIGHW1(#_Can_GpConfig), r0, r5
	st.w r6, LOWW(#_Can_GpConfig)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 779
	ld.w 0x00000008[r6], r5
	movhi HIGHW1(#_Can_GpPCController), r0, r7
	st.w r5, LOWW(#_Can_GpPCController)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 785
	ld.w 0x0000000C[r6], r5
	movhi HIGHW1(#_Can_GpPBController), r0, r7
	st.w r5, LOWW(#_Can_GpPBController)[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 791
	ld.w 0x00000010[r6], r5
	movhi HIGHW1(#_Can_GpHohConfig), r0, r6
	st.w r5, LOWW(#_Can_GpHohConfig)[r6]
	mov 0x00000000, r10
	mov r10, r25
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 816
	andi 0x000000FF, r25, r6
	mov r6, r5
	shl 0x00000002, r5
	mov #_Can_GaaGlobalIntCount, r7
	add r5, r7
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 820
	jarl _Can_InitModule.1, r31
	add 0x00000001, r25
.BB.LABEL.2_9:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 801
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_11:	; bb47.bb102_crit_edge
	mov 0x00000000, r25
	br9 .BB.LABEL.2_15
.BB.LABEL.2_12:	; bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 834
	andi 0x000000FF, r25, r5
	mov r5, r6
	mul 0x00000014, r6, r0
	mov #_Can_GaaCtrlState, r7
	add r6, r7
	mov 0x00000001, r6
	st.w r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 836
	st.w r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 838
	st.b r0, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 840
	st.w r0, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 842
	st.w r0, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 850
	mul 0x0000001C, r5, r0
	movhi HIGHW1(#_Can_GpPCController), r0, r6
	ld.w LOWW(#_Can_GpPCController)[r6], r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 854
	andi 0x000000FF, r25, r6
	jarl _Can_InitController.1, r31
.BB.LABEL.2_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	add 0x00000001, r25
.BB.LABEL.2_15:	; bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 827
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_17:	; bb102.bb127_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.2_19
.BB.LABEL.2_18:	; bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 870
	andi 0x0000FFFF, r5, r6
	mov #_Can_GaaHwAccessFlag, r7
	add r6, r7
	st.b r0, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.2_19:	; bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 867
	andi 0x0000FFFF, r5, r6
	cmp 0x00000004, r6
	bl9 .BB.LABEL.2_18
.BB.LABEL.2_20:	; bb127.bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r25
	mov r10, r26
	br9 .BB.LABEL.2_24
.BB.LABEL.2_21:	; bb134
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 885
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 886
	andi 0x000000FF, r25, r6
	mov r3, r8
	mov 0x00000000, r7
	mov r7, r9
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 889
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_23
.BB.LABEL.2_22:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 892
	mov r26, r6
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.2_23:	; if_break_bb144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	add 0x00000001, r25
.BB.LABEL.2_24:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 879
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.2_26
.BB.LABEL.2_25:	; bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.2_21
.BB.LABEL.2_26:	; bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 905
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.2_28
.BB.LABEL.2_27:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 907
	jarl _Can_SetStatus.1, r31
.BB.LABEL.2_28:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 914
	dispose 0x00000004, 0x00000301, [r31]
_Can_ChangeBaudrate:
	.stack _Can_ChangeBaudrate = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 952
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 967
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 968
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 973
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000006, r9
.BB.LABEL.3_3:	; if_then_bb21
	mov 0x0000000D, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1076
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.3_4:	; if_else_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 984
	mov r25, r6
	mov r26, r7
	jarl _Can_SearchBaudrate.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 987
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000008, r9
	br9 .BB.LABEL.3_3
.BB.LABEL.3_6:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 998
	movhi HIGHW1(#_Can_GpPBController), r0, r5
	ld.w LOWW(#_Can_GpPBController)[r5], r5
	mov r25, r6
	shl 0x00000003, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1002
	mulhi 0x0000001C, r25, r6
	movhi HIGHW1(#_Can_GpPCController), r0, r7
	ld.w LOWW(#_Can_GpPCController)[r7], r8
	add r6, r8
	ld.bu 0x00000001[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1005
	ld.w LOWW(#_Can_GpPCController)[r7], r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1008
	mulhi 0x00000014, r25, r7
	mov #_Can_GaaCtrlState, r9
	add r7, r9
	st.w r10, 0x0000000C[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1012
	mov r6, r7
	shl 0x00000004, r7
	mulhi 0x0000001C, r8, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	add r7, r8
	mul 0x00000014, r10, r0
	add r10, r5
	ld.w 0x00000004[r5], r7
	st.w r7, 0x00000000[r8]
	shl 0x00000004, r25
	mov #_Can_GaaMirrorChannelReg, r7
	add r25, r7
	ld.w 0x00000004[r5], r8
	st.w r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1026
	shl 0x00000005, r6
	ld.w 0x0000000C[r9], r8
	add r6, r8
	ld.w 0x00000008[r5], r10
	st.w r10, 0x00000000[r8]
	ld.w 0x00000008[r5], r8
	st.w r8, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1035
	ld.w 0x0000000C[r9], r8
	add r6, r8
	ld.w 0x0000000C[r5], r6
	st.w r6, 0x00000004[r8]
	ld.w 0x0000000C[r5], r5
	st.w r5, 0x00000008[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1072
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.3_7:	; if_break_bb123
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1076
	dispose 0x00000000, 0x00000301, [r31]
_Can_CheckBaudrate:
	.stack _Can_CheckBaudrate = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1112
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	mov 0x0000000E, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1123
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1124
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r10
.BB.LABEL.4_2:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1150
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.4_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1132
	mov r25, r6
	mov r26, r7
	jarl _Can_SearchBaudrate.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1133
	cmp 0xFFFFFFFF, r10
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_2
.BB.LABEL.4_5:	; if_else_bb18
	mov 0x00000008, r9
	mov 0x0000000E, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1141
	jarl32 _Det_ReportError, r31
	br9 .BB.LABEL.4_1
_Can_SetBaudrate:
	.stack _Can_SetBaudrate = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1189
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1204
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1205
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1210
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_then_bb34
	mov 0x00000006, r9
.BB.LABEL.5_4:	; if_then_bb34
	mov 0x0000000F, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1298
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.5_5:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1224
	mov r25, r6
	mov r26, r7
	jarl _Can_SearchBaudrateID.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1228
	cmp 0xFFFFFFFF, r10
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000008, r9
	br9 .BB.LABEL.5_4
.BB.LABEL.5_7:	; if_else_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1240
	movhi HIGHW1(#_Can_GpPBController), r0, r5
	ld.w LOWW(#_Can_GpPBController)[r5], r5
	mov r25, r6
	shl 0x00000003, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1244
	mulhi 0x0000001C, r25, r6
	movhi HIGHW1(#_Can_GpPCController), r0, r7
	ld.w LOWW(#_Can_GpPCController)[r7], r8
	add r6, r8
	ld.bu 0x00000001[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1247
	ld.w LOWW(#_Can_GpPCController)[r7], r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1250
	mulhi 0x00000014, r25, r7
	mov #_Can_GaaCtrlState, r9
	add r7, r9
	st.w r10, 0x0000000C[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1254
	mov r6, r7
	shl 0x00000004, r7
	mulhi 0x0000001C, r8, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	add r7, r8
	mul 0x00000014, r10, r0
	add r10, r5
	ld.w 0x00000004[r5], r7
	st.w r7, 0x00000000[r8]
	shl 0x00000004, r25
	mov #_Can_GaaMirrorChannelReg, r7
	add r25, r7
	ld.w 0x00000004[r5], r8
	st.w r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1268
	shl 0x00000005, r6
	ld.w 0x0000000C[r9], r8
	add r6, r8
	ld.w 0x00000008[r5], r10
	st.w r10, 0x00000000[r8]
	ld.w 0x00000008[r5], r8
	st.w r8, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1277
	ld.w 0x0000000C[r9], r8
	add r6, r8
	ld.w 0x0000000C[r5], r6
	st.w r6, 0x00000004[r8]
	ld.w 0x0000000C[r5], r5
	st.w r5, 0x00000008[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1293
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.5_8:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1298
	dispose 0x00000000, 0x00000301, [r31]
_Can_DisableControllerInterrupts:
	.stack _Can_DisableControllerInterrupts = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1337
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1348
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1349
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1357
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1362
	mulhi 0x0000001C, r25, r5
	add r26, r5
	ld.bu 0x00000003[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1366
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1369
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1380
	mulhi 0x0000001C, r25, r5
	add r5, r26
	ld.bu 0x00000001[r26], r5
	mulhi 0x0000001C, r5, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1387
	ld.bu 0x00000001[r26], r5
	shl 0x00000002, r5
	mov #_Can_GaaGlobalIntCount, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1393
	ld.w 0x00000014[r26], r5
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1400
	ld.w 0x0000000C[r26], r5
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1407
	ld.w 0x00000010[r26], r5
	ld.b 0x00000000[r5], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1428
	ld.w 0x00000010[r26], r5
	ld.h 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1430
	syncp
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1434
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	add 0x00000001, r5
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1437
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
.BB.LABEL.6_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1445
	dispose 0x00000000, 0x00000301, [r31]
_Can_EnableControllerInterrupts:
	.stack _Can_EnableControllerInterrupts = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1484
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1495
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1496
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1504
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1509
	mulhi 0x0000001C, r25, r5
	add r26, r5
	ld.bu 0x00000003[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1512
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1515
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1522
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1525
	ld.w 0x00000010[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_4:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1534
	mulhi 0x0000001C, r25, r5
	add r26, r5
	ld.bu 0x00000001[r5], r6
	shl 0x00000002, r6
	mov #_Can_GaaGlobalIntCount, r7
	add r7, r6
	ld.w 0x00000000[r6], r8
	add 0xFFFFFFFF, r8
	st.w r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1537
	ld.bu 0x00000001[r5], r5
	mov r5, r6
	shl 0x00000002, r6
	add r6, r7
	ld.w 0x00000000[r7], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1539
	mulhi 0x0000001C, r5, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
.BB.LABEL.7_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1550
	mulhi 0x0000001C, r25, r5
	add r5, r26
	ld.w 0x00000014[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1553
	ld.w 0x0000000C[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1556
	ld.w 0x00000010[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
.BB.LABEL.7_7:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1584
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
.BB.LABEL.7_8:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1592
	dispose 0x00000000, 0x00000301, [r31]
_Can_SetStatus.1:
	.stack _Can_SetStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1714
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1718
	st.b r6, LOWW(#_Can_GblInitialized)[r5]
	jmp [r31]
_Can_InitModule.1:
	.stack _Can_InitModule.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1755
	prepare 0x00000301, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1772
	movhi HIGHW1(#_Can_GpConfig), r0, r5
	ld.w LOWW(#_Can_GpConfig)[r5], r5
	ld.w 0x00000004[r5], r26
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1781
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1782
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	movea 0x0000008C, r5, r6
	mov r3, r9
	mov 0x00000000, r8
	mov 0x00000008, r7
	jarl32 _Can_WaitRegisterChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1786
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1800
	st.w r5, 0x00000000[r3]
	mov 0x00000000, r9
	mov r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1801
	mov r25, r6
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1804
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r25
	mov r25, r6
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
	mov r25, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2012
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.9_3:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1821
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov 0x00000001, r7
	st.w r7, 0x000004FC[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1831
	ld.w 0x00000004[r6], r5
	st.w r0, 0x00000474[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1852
	mov r25, r5
	shl 0x00000005, r5
	add r26, r5
	ld.w 0x00000004[r5], r7
	ld.w 0x00000004[r6], r8
	st.w r7, 0x000000A4[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1861
	ld.w 0x00000008[r5], r5
	ld.w 0x00000004[r6], r6
	st.w r5, 0x00000084[r6]
	mov 0x00000000, r5
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1876
	mov r25, r6
	shl 0x00000005, r6
	add r26, r6
	ld.w 0x00000014[r6], r6
	mov r5, r7
	shl 0x00000002, r7
	add r7, r6
	mulhi 0x0000001C, r25, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	add r8, r7
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000390[r7]
	add 0x00000001, r5
.BB.LABEL.9_5:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1871
	mov r25, r6
	shl 0x00000005, r6
	add r26, r6
	ld.bu 0x00000000[r6], r6
	cmp r6, r5
	bl9 .BB.LABEL.9_4
.BB.LABEL.9_6:	; bb84.bb112_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; bb94
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1896
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	mov r5, r7
	shl 0x00000002, r7
	add r7, r6
	mov r25, r8
	shl 0x00000005, r8
	add r26, r8
	add r7, r8
	ld.w 0x0000000C[r8], r7
	st.w r7, 0x0000009C[r6]
	add 0x00000001, r5
.BB.LABEL.9_8:	; bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1892
	mov r25, r6
	shl 0x00000005, r6
	add r26, r6
	ld.bu 0x00000001[r6], r6
	cmp r6, r5
	bl9 .BB.LABEL.9_7
.BB.LABEL.9_9:	; bb112.bb215_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.9_15
.BB.LABEL.9_10:	; bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1913
	ori 0x00000100, r5, r9
	st.w r9, 0x00000098[r8]
	mov 0x00000000, r8
	br9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1932
	mulhi 0x0000001C, r25, r9
	mov #_Can_GaaRegs, r10
	add r9, r10
	ld.w 0x00000008[r10], r9
	mov r8, r11
	shl 0x00000004, r11
	add r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1928
	mov r25, r12
	shl 0x00000005, r12
	add r26, r12
	ld.w 0x00000018[r12], r12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1932
	mov r6, r13
	shl 0x00000004, r13
	add r13, r12
	ld.w 0x00000000[r12], r13
	st.w r13, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1944
	ld.w 0x00000008[r10], r9
	add r11, r9
	ld.w 0x00000004[r12], r13
	st.w r13, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1956
	ld.w 0x00000008[r10], r9
	add r11, r9
	ld.w 0x00000008[r12], r13
	st.w r13, 0x00000008[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1969
	ld.w 0x00000008[r10], r9
	add r9, r11
	ld.w 0x0000000C[r12], r9
	st.w r9, 0x0000000C[r11]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1981
	add 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1980
	add 0x00000001, r8
.BB.LABEL.9_12:	; bb193
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1924
	cmp 0x0000000F, r8
	bh9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; bb197
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	ld.hu 0x00000000[r7], r9
	cmp r9, r6
	bl9 .BB.LABEL.9_11
.BB.LABEL.9_14:	; bb212
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1984
	add 0x00000001, r5
.BB.LABEL.9_15:	; bb215
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1910
	mov r25, r7
	shl 0x00000005, r7
	add r26, r7
	ld.hu 0x00000002[r7], r8
	add 0x00000002, r7
	mulhi 0x0000001C, r25, r9
	mov #_Can_GaaRegs, r10
	add r9, r10
	cmp r8, r6
	ld.w 0x00000004[r10], r8
	bl9 .BB.LABEL.9_10
.BB.LABEL.9_16:	; bb224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 1987
	st.w r0, 0x00000098[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2002
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	ld.bu 0x00000000[r5], r7
	andi 0x0000007F, r7, r7
	st.b r7, 0x00000000[r5]
	ld.w 0x00000010[r6], r5
	ld.b 0x00000000[r5], r5
	syncp
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2008
	dispose 0x00000004, 0x00000301, [r31]
_Can_InitController.1:
	.stack _Can_InitController.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2047
	prepare 0x00000387, 0x00000008
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2067
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2073
	mulhi 0x0000001C, r25, r5
	add r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2070
	movhi HIGHW1(#_Can_GpPBController), r0, r6
	ld.w LOWW(#_Can_GpPBController)[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2085
	ld.bu 0x00000001[r5], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2074
	ld.bu 0x00000002[r5], r29
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2084
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2085
	st.w r0, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r28, r6
	mov r25, r7
	jarl32 _Can_ChannelModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2088
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2091
	mov r25, r6
	mov r25, r7
	jarl32 _Dem_ReportErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2094
	mov r25, r10
	dispose 0x00000008, 0x00000387, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2107
	mulhi 0x0000001C, r28, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r29, r7
	shl 0x00000004, r7
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2102
	mov r25, r7
	shl 0x00000003, r7
	add r7, r27
	ld.w 0x00000004[r27], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2107
	ld.w 0x00000004[r7], r8
	st.w r8, 0x00000000[r5]
	mov r25, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r8
	add r5, r8
	ld.w 0x00000004[r7], r5
	st.w r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2125
	ld.w 0x0000000C[r6], r5
	mov r29, r9
	shl 0x00000005, r9
	add r9, r5
	ld.w 0x0000000C[r7], r10
	st.w r10, 0x00000004[r5]
	ld.w 0x0000000C[r7], r5
	st.w r5, 0x00000008[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2138
	ld.w 0x0000000C[r6], r5
	add r9, r5
	ld.w 0x00000008[r7], r6
	st.w r6, 0x00000000[r5]
	ld.w 0x00000008[r7], r5
	st.w r5, 0x0000000C[r8]
	mov 0x00000000, r5
	br9 .BB.LABEL.10_8
.BB.LABEL.10_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2164
	movhi HIGHW1(#_Can_GpHohConfig), r0, r6
	ld.w LOWW(#_Can_GpHohConfig)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2166
	mov r5, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.bu 0x00000005[r7], r7
	cmp r7, r25
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_4:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2168
	mov r5, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.bu 0x00000010[r7], r8
	shl 0x00000002, r8
	mulhi 0x0000001C, r28, r9
	mov #_Can_GaaRegs, r10
	add r9, r10
	ld.w 0x0000000C[r7], r7
	mov r5, r9
	mul 0x00000018, r9, r0
	add r9, r6
	ld.w 0x00000014[r6], r9
	cmp 0x00000003, r7
	ld.w 0x00000004[r10], r7
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2178
	add r7, r8
	mov r5, r7
	mul 0x0000000C, r7, r0
	st.w r9, 0x000000B8[r8]
	mov #_Can_GaaMirrorHohReg, r8
	add r7, r8
	ld.w 0x00000014[r6], r6
	st.w r6, 0x00000000[r8]
	br9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; switch_clause_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2210
	add r7, r8
	mov r5, r7
	mul 0x0000000C, r7, r0
	st.w r9, 0x00000118[r8]
	mov #_Can_GaaMirrorHohReg, r8
	add r7, r8
	ld.w 0x00000014[r6], r6
	st.w r6, 0x00000008[r8]
.BB.LABEL.10_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	add 0x00000001, r5
.BB.LABEL.10_8:	; bb161
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2160
	cmp 0x00000004, r5
	bl9 .BB.LABEL.10_3
.BB.LABEL.10_9:	; bb166
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2235
	mulhi 0x0000001C, r28, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r29, r7
	shl 0x00000002, r7
	add r7, r5
	mulhi 0x0000001C, r25, r7
	add r7, r26
	ld.w 0x00000008[r26], r7
	st.w r7, 0x00000400[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2250
	ld.w 0x00000004[r6], r5
	shl 0x00000004, r29
	add r29, r5
	ld.w 0x00000004[r26], r6
	ori 0x00000001, r6, r6
	st.w r6, 0x00000004[r5]
	shl 0x00000004, r25
	mov #_Can_GaaMirrorChannelReg, r5
	add r25, r5
	ld.w 0x00000004[r26], r6
	ori 0x00000001, r6, r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2265
	ld.w 0x00000014[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2268
	ld.w 0x0000000C[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2271
	ld.w 0x00000010[r26], r5
	ld.bu 0x00000000[r5], r6
	andi 0x0000007F, r6, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2275
	ld.w 0x00000010[r26], r5
	ld.h 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2277
	syncp
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2280
	dispose 0x00000008, 0x00000387, [r31]
_Can_SearchBaudrate.1:
	.stack _Can_SearchBaudrate.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2317
	shl 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2328
	movhi HIGHW1(#_Can_GpPBController), r0, r5
	ld.w LOWW(#_Can_GpPBController)[r5], r8
	add r6, r8
	ld.w 0x00000004[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2331
	ld.w LOWW(#_Can_GpPBController)[r5], r5
	add r6, r5
	ld.hu 0x00000002[r5], r5
	mov 0x00000000, r6
	mov 0xFFFFFFFF, r10
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2340
	mov r6, r9
	mul 0x00000014, r9, r0
	add r8, r9
	ld.hu 0x00000002[r9], r9
	cmp r9, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2344
	cmov 0x00000002, r6, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2350
	add 0x00000001, r6
.BB.LABEL.11_2:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2336
	cmp r5, r6
	bnc9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	cmp 0xFFFFFFFF, r10
	bz9 .BB.LABEL.11_1
.BB.LABEL.11_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2353
	jmp [r31]
_Can_SearchBaudrateID.1:
	.stack _Can_SearchBaudrateID.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2386
	shl 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2397
	movhi HIGHW1(#_Can_GpPBController), r0, r5
	ld.w LOWW(#_Can_GpPBController)[r5], r8
	add r6, r8
	ld.w 0x00000004[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2400
	ld.w LOWW(#_Can_GpPBController)[r5], r5
	add r6, r5
	ld.hu 0x00000002[r5], r5
	mov 0x00000000, r6
	mov 0xFFFFFFFF, r10
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2409
	mov r6, r9
	mul 0x00000014, r9, r0
	add r8, r9
	ld.bu 0x00000000[r9], r9
	andi 0x000000FF, r7, r11
	cmp r9, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2413
	cmov 0x00000002, r6, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2419
	add 0x00000001, r6
.BB.LABEL.12_2:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2405
	cmp r5, r6
	bnc9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	cmp 0xFFFFFFFF, r10
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2422
	jmp [r31]
_Can_RAMTest:
	.stack _Can_RAMTest = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2475
	prepare 0x00000385, 0x00000004
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2497
	st.w r5, 0x00000000[r3]
	movea 0x00000054, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2501
	cmp r5, r6
	mov r6, r25
	bl9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x0000000B, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2504
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r26
	br9 .BB.LABEL.13_8
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2557
	addi 0xFFFFFFAD, r25, r0
	movea 0x00000040, r0, r26
	movea 0x00000010, r0, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2563
	cmov 0x00000002, r27, r26, r27
	mov 0x00000000, r26
	mov r26, r28
	br9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2590
	movhi HIGHW1(#_Can_GaaRegs+0x00000004), r0, r5
	ld.w LOWW(#_Can_GaaRegs+0x00000004)[r5], r5
	andi 0x000000FF, r28, r6
	shl 0x00000004, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x0000000C, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2594
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r26
.BB.LABEL.13_5:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	add 0x00000001, r28
.BB.LABEL.13_6:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2584
	andi 0x000000FF, r28, r5
	cmp 0x00000005, r5
	bgt9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r26, r0
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_8:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2607
	andi 0x000000FF, r26, r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.13_17
.BB.LABEL.13_9:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	movea 0x00000014, r0, r9
	mov r3, r8
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2611
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2615
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_10:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2632
	movhi HIGHW1(#_Can_GaaRegs+0x00000004), r0, r26
	ld.w LOWW(#_Can_GaaRegs+0x00000004)[r26], r26
	mov 0x00000001, r5
	st.w r5, 0x000004FC[r26]
	movea 0x00000014, r0, r9
	mov r3, r8
	mov 0x00000002, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2650
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2654
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_11:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2665
	movhi HIGHW1(#_Can_GaaRegs+0x00000004), r0, r26
	ld.w LOWW(#_Can_GaaRegs+0x00000004)[r26], r5
	movea 0x00007575, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2669
	st.w r6, 0x0000047C[r5]
	ori 0x00008A8A, r0, r6
	st.w r6, 0x0000047C[r5]
	mov 0x00000004, r6
	st.w r6, 0x0000046C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2672
	ld.w LOWW(#_Can_GaaRegs+0x00000004)[r26], r26
	mov r25, r5
	shl 0x00000010, r5
	st.w r5, 0x00000468[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2682
	movhi HIGHW1(#_Can_GulPageID), r0, r26
	st.w r25, LOWW(#_Can_GulPageID)[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2686
	andi 0x000000FF, r27, r26
	mov 0x00000000, r25
	mov r26, r6
	mov r25, r7
	mov r25, r8
	jarl32 _Can_RamTst_Set_RAMData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2688
	mov r26, r6
	mov r25, r7
	jarl32 _Can_RamTest_Checker_Algorithm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2689
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_12:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2691
	andi 0x000000FF, r27, r6
	mov 0x00000000, r7
	mov r7, r8
	jarl32 _Can_RamTst_WalkPath_Algorithm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2693
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_then_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2695
	andi 0x000000FF, r27, r6
	mov 0x00000001, r8
	mov 0x00000000, r7
	jarl32 _Can_RamTst_WalkPath_Algorithm, r31
.BB.LABEL.13_14:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2709
	andi 0x000000FF, r27, r6
	mov 0x00000000, r25
	mov r25, r7
	mov r25, r8
	jarl32 _Can_RamTst_Set_RAMData, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2712
	movhi HIGHW1(#_Can_GaaRegs+0x00000004), r0, r5
	ld.w LOWW(#_Can_GaaRegs+0x00000004)[r5], r5
	st.w r0, 0x0000046C[r5]
	movea 0x00000014, r0, r9
	mov r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2718
	mov r25, r6
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2722
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_15:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	movea 0x00000014, r0, r9
	mov r3, r8
	mov 0x00000005, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2733
	jarl32 _Can_GlobalModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2737
	cmp 0x00000000, r10
	bz9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_then_bb168
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r26
	mov r26, r6
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.13_17:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2760
	movhi HIGHW1(#_Can_GulPageID), r0, r5
	st.w r0, LOWW(#_Can_GulPageID)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2762
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	st.b r0, LOWW(#_Can_GblInitialized)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2765
	andi 0x000000FF, r26, r10
	dispose 0x00000004, 0x00000385, [r31]
_Can_CheckHWConsistency:
	.stack _Can_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2820
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2832
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000001, r5
	mov r6, r25
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb
	mov 0x00000005, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2836
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.14_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2847
	cmp 0x00000001, r25
	bnh9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x0000000D, r9
	movea 0x00000011, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2851
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.14_5:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2861
	cmp 0x00000001, r10
	bz9 .BB.LABEL.14_9
.BB.LABEL.14_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2865
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2867
	jarl _Can_CheckConsistencyStatic.1, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.14_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2872
	jarl _Can_CheckConsistencyDynamic.1, r31
.BB.LABEL.14_9:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2882
	dispose 0x00000000, 0x00000201, [r31]
_Can_CheckConsistencyStatic.1:
	.stack _Can_CheckConsistencyStatic.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2932
	prepare 0x00000300, 0x00000000
	mov 0x00000000, r10
	mov r10, r5
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2953
	movhi HIGHW1(#_Can_GpConfig), r0, r6
	ld.w LOWW(#_Can_GpConfig)[r6], r6
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2958
	andi 0x000000FF, r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2962
	mov r7, r8
	shl 0x00000005, r8
	add r6, r8
	mov r7, r9
	mul 0x0000001C, r9, r0
	mov #_Can_GaaRegs, r11
	add r9, r11
	ld.w 0x00000004[r11], r9
	ld.w 0x00000084[r9], r9
	ld.w 0x00000008[r8], r8
	cmp r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2964
	cmov 0x0000000A, 0x00000001, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2978
	ld.w 0x00000004[r11], r8
	ld.w 0x000004FC[r8], r8
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2986
	andi 0x000000FF, r5, r8
	mul 0x0000001C, r8, r0
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	ld.w 0x00000474[r8], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000001, r10
.BB.LABEL.15_4:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3006
	andi 0x000000FF, r10, r8
	cmp 0x00000001, r8
	bz17 .BB.LABEL.15_20
.BB.LABEL.15_5:	; if_break_bb52.bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r8
	br9 .BB.LABEL.15_7
.BB.LABEL.15_6:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3011
	mov r7, r11
	shl 0x00000005, r11
	add r6, r11
	mov r8, r12
	shl 0x00000002, r12
	add r12, r11
	add r12, r9
	ld.w 0x0000009C[r9], r9
	ld.w 0x0000000C[r11], r11
	cmp r11, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3014
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r8
.BB.LABEL.15_7:	; bb84
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3008
	andi 0x000000FF, r5, r9
	mul 0x0000001C, r9, r0
	mov #_Can_GaaRegs, r11
	add r9, r11
	mov r7, r9
	shl 0x00000005, r9
	add r6, r9
	ld.bu 0x00000001[r9], r9
	cmp r9, r8
	ld.w 0x00000004[r11], r9
	bl9 .BB.LABEL.15_6
.BB.LABEL.15_8:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3022
	ld.w 0x00000098[r9], r8
	andi 0x00000100, r8, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3025
	cmov 0x0000000A, 0x00000001, r10, r10
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.15_19
.BB.LABEL.15_9:	; bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3041
	andi 0x000000FF, r5, r12
	mul 0x0000001C, r12, r0
	mov #_Can_GaaRegs, r13
	add r12, r13
	ld.w 0x00000004[r13], r12
	st.w r9, 0x00000098[r12]
	mov 0x00000000, r12
	br9 .BB.LABEL.15_16
.BB.LABEL.15_10:	; bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3049
	mov r7, r13
	shl 0x00000005, r13
	add r6, r13
	ld.w 0x00000018[r13], r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3052
	mov r8, r14
	shl 0x00000004, r14
	add r13, r14
	andi 0x000000FF, r5, r25
	mul 0x0000001C, r25, r0
	mov #_Can_GaaRegs, r26
	add r25, r26
	ld.w 0x00000008[r26], r25
	mov r12, r26
	shl 0x00000004, r26
	add r26, r25
	ld.w 0x00000000[r25], r25
	ld.w 0x00000000[r14], r14
	cmp r14, r25
	bnz9 .BB.LABEL.15_14
.BB.LABEL.15_11:	; bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov r8, r14
	shl 0x00000004, r14
	add r13, r14
	andi 0x000000FF, r5, r25
	mul 0x0000001C, r25, r0
	mov #_Can_GaaRegs, r26
	add r25, r26
	ld.w 0x00000008[r26], r25
	mov r12, r26
	shl 0x00000004, r26
	add r26, r25
	ld.w 0x00000004[r25], r25
	ld.w 0x00000004[r14], r14
	cmp r14, r25
	bnz9 .BB.LABEL.15_14
.BB.LABEL.15_12:	; bb157
	mov r8, r14
	shl 0x00000004, r14
	add r13, r14
	andi 0x000000FF, r5, r13
	mul 0x0000001C, r13, r0
	mov #_Can_GaaRegs, r25
	add r13, r25
	ld.w 0x00000008[r25], r13
	mov r12, r25
	shl 0x00000004, r25
	add r13, r25
	ld.w 0x00000008[r25], r13
	ld.w 0x00000008[r14], r25
	add 0x00000008, r14
	cmp r25, r13
	bnz9 .BB.LABEL.15_14
.BB.LABEL.15_13:	; bb183
	andi 0x000000FF, r5, r13
	mul 0x0000001C, r13, r0
	mov #_Can_GaaRegs, r25
	add r13, r25
	ld.w 0x00000008[r25], r13
	mov r12, r25
	shl 0x00000004, r25
	add r13, r25
	ld.w 0x0000000C[r25], r13
	ld.w 0x00000004[r14], r14
	cmp r14, r13
	bz9 .BB.LABEL.15_15
.BB.LABEL.15_14:	; if_then_bb210
	mov 0x00000001, r10
.BB.LABEL.15_15:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3071
	add 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3070
	add 0x00000001, r12
.BB.LABEL.15_16:	; bb217
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3045
	cmp 0x0000000F, r12
	bh9 .BB.LABEL.15_18
.BB.LABEL.15_17:	; bb221
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	ld.hu 0x00000000[r11], r13
	cmp r13, r8
	bl9 .BB.LABEL.15_10
.BB.LABEL.15_18:	; bb237
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3074
	add 0x00000001, r9
.BB.LABEL.15_19:	; bb240
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3038
	mov r7, r11
	shl 0x00000005, r11
	add r6, r11
	ld.hu 0x00000002[r11], r12
	add 0x00000002, r11
	cmp r12, r8
	bl9 .BB.LABEL.15_9
.BB.LABEL.15_20:	; if_break_bb251
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3084
	andi 0x000000FF, r10, r8
	cmp 0x00000001, r8
	bz9 .BB.LABEL.15_24
.BB.LABEL.15_21:	; if_then_bb257
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3089
	mov r7, r8
	shl 0x00000005, r8
	add r6, r8
	andi 0x000000FF, r5, r9
	mul 0x0000001C, r9, r0
	mov #_Can_GaaRegs, r11
	add r9, r11
	ld.w 0x00000004[r11], r9
	ld.w 0x000000A4[r9], r9
	ld.w 0x00000004[r8], r8
	cmp r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3091
	cmov 0x0000000A, 0x00000001, r10, r10
	mov 0x00000000, r8
	br9 .BB.LABEL.15_23
.BB.LABEL.15_22:	; bb274
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3103
	mov r7, r9
	shl 0x00000005, r9
	add r6, r9
	andi 0x000000FF, r5, r11
	mul 0x0000001C, r11, r0
	mov #_Can_GaaRegs, r12
	add r11, r12
	ld.w 0x00000004[r12], r11
	mov r8, r12
	shl 0x00000002, r12
	add r12, r11
	ld.w 0x00000390[r11], r11
	ld.w 0x00000014[r9], r9
	add r12, r9
	ld.w 0x00000000[r9], r9
	cmp r9, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3107
	cmov 0x0000000A, 0x00000001, r10, r10
	add 0x00000001, r8
.BB.LABEL.15_23:	; bb299
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3099
	mov r7, r9
	shl 0x00000005, r9
	add r6, r9
	ld.bu 0x00000000[r9], r9
	cmp r9, r8
	bl9 .BB.LABEL.15_22
.BB.LABEL.15_24:	; if_break_bb310
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3121
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 2949
	andi 0x000000FF, r5, r0
	bz17 .BB.LABEL.15_1
.BB.LABEL.15_25:	; bb318
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3130
	zxb r10
	dispose 0x00000000, 0x00000300, [r31]
_Can_CheckConsistencyDynamic.1:
	.stack _Can_CheckConsistencyDynamic.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3171
	prepare 0x00000387, 0x00000000
	mov 0x00000000, r25
	mov r25, r26
	jr .BB.LABEL.16_18
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3191
	andi 0x000000FF, r26, r27
	mov r27, r5
	mul 0x0000001C, r5, r0
	movhi HIGHW1(#_Can_GpPCController), r0, r6
	ld.w LOWW(#_Can_GpPCController)[r6], r7
	add r5, r7
	ld.bu 0x00000001[r7], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3194
	ld.w LOWW(#_Can_GpPCController)[r6], r6
	add r5, r6
	ld.bu 0x00000002[r6], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3198
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3200
	mov r29, r5
	shl 0x00000004, r5
	mulhi 0x0000001C, r28, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	shl 0x00000004, r27
	mov #_Can_GaaMirrorChannelReg, r6
	add r27, r6
	ld.w 0x00000000[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r26, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r6
	add r5, r6
	mulhi 0x0000001C, r28, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	mov r29, r7
	shl 0x00000004, r7
	add r7, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000004[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb
	mov 0x00000001, r25
.BB.LABEL.16_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3219
	andi 0x000000FF, r26, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r6
	add r5, r6
	mulhi 0x0000001C, r28, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x0000000C[r7], r5
	mov r29, r7
	shl 0x00000005, r7
	add r7, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000008[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_5:	; bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r26, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r6
	add r5, r6
	mulhi 0x0000001C, r28, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x0000000C[r7], r5
	shl 0x00000005, r29
	add r29, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x0000000C[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_then_bb111
	mov 0x00000001, r25
.BB.LABEL.16_7:	; if_break_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3238
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	mov 0x00000000, r27
	br9 .BB.LABEL.16_15
.BB.LABEL.16_8:	; bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3247
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3251
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3253
	mov r27, r5
	mul 0x00000018, r5, r0
	add r29, r5
	ld.bu 0x00000005[r5], r5
	andi 0x000000FF, r26, r6
	cmp r5, r6
	bnz9 .BB.LABEL.16_14
.BB.LABEL.16_9:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3255
	mov r27, r5
	mul 0x00000018, r5, r0
	add r5, r29
	ld.bu 0x00000010[r29], r5
	shl 0x00000002, r5
	mulhi 0x0000001C, r28, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x0000000C[r29], r6
	mov #_Can_GaaMirrorHohReg, r8
	cmp 0x00000003, r6
	ld.w 0x00000004[r7], r6
	mov r27, r7
	mul 0x0000000C, r7, r0
	bnz9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3264
	add r7, r8
	add r6, r5
	ld.w 0x000000B8[r5], r5
	ld.w 0x00000000[r8], r6
	br9 .BB.LABEL.16_12
.BB.LABEL.16_11:	; switch_clause_bb154
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3291
	add r7, r8
	add r6, r5
	ld.w 0x00000118[r5], r5
	ld.w 0x00000008[r8], r6
.BB.LABEL.16_12:	; switch_clause_bb154
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	cmp r6, r5
	bz9 .BB.LABEL.16_14
.BB.LABEL.16_13:	; if_then_bb175
	mov 0x00000001, r25
.BB.LABEL.16_14:	; if_break_bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3310
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	add 0x00000001, r27
.BB.LABEL.16_15:	; bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3242
	cmp 0x00000003, r27
	bh9 .BB.LABEL.16_17
.BB.LABEL.16_16:	; bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.16_8
.BB.LABEL.16_17:	; bb199
	add 0x00000001, r26
.BB.LABEL.16_18:	; bb202
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3186
	andi 0x000000FF, r26, r0
	bz17 .BB.LABEL.16_1
.BB.LABEL.16_19:	; bb202.bb230_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.16_21
.BB.LABEL.16_20:	; bb209
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3324
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3326
	andi 0x000000FF, r26, r5
	mov r5, r6
	shl 0x00000002, r6
	mov #_Can_GaaMirrorGlobalReg, r7
	add r6, r7
	mul 0x0000001C, r5, r0
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x00000088[r5], r27
	ld.w 0x00000000[r7], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3335
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3326
	cmp r28, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3329
	cmov 0x0000000A, 0x00000001, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3335
	add 0x00000001, r26
.BB.LABEL.16_21:	; bb230
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3317
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.16_23
.BB.LABEL.16_22:	; bb230
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 0
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.16_20
.BB.LABEL.16_23:	; bb248
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can.c", 3340
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000387, [r31]
