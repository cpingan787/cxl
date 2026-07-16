#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_ModeCntrl.c -oDefaultBuild\Can_ModeCntrl.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_56258790befb4d2c8d297723c7c4729cqhpiqos0.2y2
#@	compiled at Thu Jul 16 13:41:30 2026

	.file "..\..\Bsw\Mcal\can\src\Can_ModeCntrl.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaRegs
	.extern _Can_GpPCController
	.extern _Can_GpHohConfig
	.extern _Can_GaaCtrlState
	.extern _Can_GaaMirrorGlobalReg
	.extern _Can_GaaMirrorChannelReg
	.extern _Can_GaaMirrorHohReg
	.public _Can_SetControllerMode
	.extern _Can_CommonDetCheck
	.extern _Det_ReportError
	.extern _CanIf_ControllerModeIndication
	.extern _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION
	.extern _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION
	.public _Can_SelfTestChannel
	.public _Can_SleepMode
	.public _Can_WakeupMode
	.public _Can_StartMode
	.public _Can_StopMode
	.extern _Dem_ReportErrorStatus
	.extern _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.extern _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.public _Can_GlobalModeChange
	.public _Can_ChannelModeChange
	.public _Can_WaitRegisterChange
	.extern _GetCounterValue

	.section .text, text
_Can_SetControllerMode:
	.stack _Can_SetControllerMode = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 624
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 638
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000000[r6], r27
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 641
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 642
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 647
	cmp 0x00000004, r26
	bnc9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 655
	cmp 0x00000002, r27
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000002, r26
	bl9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; bb44
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb48
	addi 0xFFFFFFFE, r26, r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb78
	mov 0x00000006, r9
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_7:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 670
	cmp r26, r27
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_8:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 673
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.1_15
.BB.LABEL.1_10:	; if_else_bb96
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 679
	cmp 0x00000001, r26
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_11:	; if_else_bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 685
	cmp 0x00000002, r26
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_else_bb106.if_break_bb195_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
.BB.LABEL.1_13:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_14:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
.BB.LABEL.1_15:	; if_then_bb111
	mov r25, r6
	jarl32 _CanIf_ControllerModeIndication, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_16:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 700
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000003, r26
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb135
	mov 0x00000002, r7
	br9 .BB.LABEL.1_15
.BB.LABEL.1_19:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 709
	cmp 0x00000000, r26
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_20:	; if_else_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0xFFFFFFFF, r26
	cmp 0x00000000, r26
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_21:	; if_else_bb140
	mov 0x00000003, r7
	mov r25, r6
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.1_29
.BB.LABEL.1_22:	; switch_clause_bb187
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 750
	jarl _Can_SleepMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_23:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 712
	mov r25, r6
	jarl _Can_StartMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_24:	; switch_clause_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 722
	jarl32 _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 724
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_27
.BB.LABEL.1_25:	; bb151
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 729
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	mov 0x00000001, r5
	st.w r5, 0x00000004[r6]
.BB.LABEL.1_27:	; if_break_bb173
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 736
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 739
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_28:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 742
	mov r25, r6
	jarl _Can_StopMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.1_29:	; switch_clause_bb189
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 814
	jarl _Can_WakeupMode, r31
	br9 .BB.LABEL.1_12
_Can_SelfTestChannel:
	.stack _Can_SelfTestChannel = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 860
	prepare 0x00000387, 0x0000000C
	mov r6, r25
	mov r7, r26
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 886
	mov r25, r7
	jarl32 _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 887
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; entry.if_break_bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r27
.BB.LABEL.2_2:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 909
	cmp 0x00000001, r27
	bz17 .BB.LABEL.2_16
.BB.LABEL.2_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 913
	movhi HIGHW1(#_Can_GpPCController), r0, r27
	ld.w LOWW(#_Can_GpPCController)[r27], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 915
	mulhi 0x0000001C, r25, r5
	add r5, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 918
	ld.bu 0x00000002[r27], r28
	ld.bu 0x00000001[r27], r27
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r29
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 921
	st.w r5, 0x00000008[r3]
	movea 0x00000015, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 922
	st.w r5, 0x00000000[r3]
	movea 0x00000008, r3, r9
	mov 0x00000002, r8
	mov r27, r6
	mov r25, r7
	jarl _Can_ChannelModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 918
	shl 0x00000004, r28
	add r28, r29
	add 0x00000004, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 925
	addi 0x00000000, r10, r28
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 929
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
	mov r28, r10
	dispose 0x0000000C, 0x00000387, [r31]
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 894
	cmp 0x00000002, r26
	bgt9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_else_bb.if_break_bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.2_2
.BB.LABEL.2_7:	; if_then_bb19
	mov 0x00000006, r9
	movea 0x00000015, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 897
	jarl32 _Det_ReportError, r31
	br9 .BB.LABEL.2_1
.BB.LABEL.2_8:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 936
	jarl32 _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 938
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_9:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0xFFFFFFFF, r26
	cmp 0x00000000, r26
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_10:	; if_else_bb59
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.2_14
.BB.LABEL.2_11:	; switch_clause_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 997
	ld.w 0x00000000[r29], r5
	movhi 0x00000100, r0, r6
	or r6, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1000
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	mov r25, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r6
	add r5, r6
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1010
	ld.w 0x00000000[r29], r5
	movhi 0x00000600, r0, r7
	or r7, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1013
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000004[r6]
	br9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 942
	ld.w 0x00000000[r29], r5
	mov 0xF8FFFFFF, r6
	and r6, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 945
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	mov r25, r29
	shl 0x00000004, r29
	mov #_Can_GaaMirrorChannelReg, r5
	add r29, r5
	ld.w 0x00000004[r3], r29
	st.w r29, 0x00000004[r5]
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 956
	ld.w 0x00000000[r29], r5
	movhi 0x00000100, r0, r6
	or r6, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 959
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	mov r25, r5
	shl 0x00000004, r5
	mov #_Can_GaaMirrorChannelReg, r6
	add r5, r6
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 971
	ld.w 0x00000000[r29], r5
	mov 0xF9FFFFFF, r7
	and r7, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 973
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 983
	ld.w 0x00000000[r29], r5
	movhi 0x00000400, r0, r7
	or r7, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 986
	ld.w 0x00000004[r3], r5
	st.w r5, 0x00000000[r29]
	ld.w 0x00000004[r3], r29
	st.w r29, 0x00000004[r6]
.BB.LABEL.2_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1026
	jarl32 _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	movea 0x00000015, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1029
	st.w r5, 0x00000000[r3]
	movea 0x00000008, r3, r9
	mov 0x00000000, r8
	mov r27, r6
	mov r25, r7
	jarl _Can_ChannelModeChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1033
	addi 0x00000000, r10, r27
	bz9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1036
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.2_16:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r27, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1052
	dispose 0x0000000C, 0x00000387, [r31]
_Can_SleepMode:
	.stack _Can_SleepMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1104
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1345
	mulhi 0x00000014, r6, r5
	mov #_Can_GaaCtrlState, r7
	add r5, r7
	mov 0x00000002, r5
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1347
	st.w r0, 0x00000004[r7]
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1350
	jarl32 _CanIf_ControllerModeIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_WakeupMode:
	.stack _Can_WakeupMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1393
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1591
	mulhi 0x00000014, r6, r5
	mov #_Can_GaaCtrlState, r7
	add r5, r7
	mov 0x00000001, r5
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1593
	st.w r0, 0x00000004[r7]
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1596
	jarl32 _CanIf_ControllerModeIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_StartMode:
	.stack _Can_StartMode = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1635
	prepare 0x00000B87, 0x00000008
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1648
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1649
	mulhi 0x00000014, r6, r5
	mov #_Can_GaaCtrlState, r8
	add r5, r8
	ld.w 0x00000004[r8], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1651
	movhi HIGHW1(#_Can_GpPCController), r0, r8
	ld.w LOWW(#_Can_GpPCController)[r8], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1653
	mulhi 0x0000001C, r6, r8
	add r25, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1661
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1654
	ld.bu 0x00000002[r8], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1661
	ld.bu 0x00000001[r8], r27
	mov r6, r28
	mov r7, r29
	mov r6, r30
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r30, r6
	mov #_Can_GaaCtrlState, r7
	add r6, r7
	ld.bu 0x00000008[r7], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1665
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r26, r6
	shl 0x00000004, r6
	add r6, r5
	st.w r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1668
	mulhi 0x00000014, r30, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	st.b r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1672
	st.w r29, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r27, r6
	mov r30, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000002, r5
	br9 .BB.LABEL.5_7
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1679
	cmp 0x00000002, r5
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb.if_break_bb88_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; bb62
	mulhi 0x0000001C, r27, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	mov r26, r7
	shl 0x00000004, r7
	add r7, r6
	ld.w 0x00000008[r6], r6
	andi 0x00000001, r6, r0
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; if_then_bb86
	mov 0x00000001, r10
.BB.LABEL.5_7:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1694
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_8:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; bb93
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1705
	mov r27, r6
	mov r30, r7
	mov r29, r8
	jarl _Can_ClearRxBuffers.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1710
	st.w r29, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000000, r8
	mov r27, r6
	mov r30, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000003, r5
	br9 .BB.LABEL.5_15
.BB.LABEL.5_11:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1717
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_12:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_13:	; bb140
	mulhi 0x0000001C, r27, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	mov r26, r7
	shl 0x00000004, r7
	add r7, r6
	ld.w 0x00000008[r6], r6
	andi 0x00000007, r6, r0
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_then_bb164
	mov 0x00000001, r10
.BB.LABEL.5_15:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1734
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1740
	mov r27, r6
	mov r30, r7
	mov r29, r8
	jarl _Can_EnableTxBuffers.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1745
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	shl 0x00000002, r26
	add r26, r5
	mulhi 0x0000001C, r28, r6
	add r6, r25
	ld.w 0x00000008[r25], r6
	ori 0x00000001, r6, r6
	st.w r6, 0x00000400[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1754
	mulhi 0x00000014, r30, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1756
	st.w r0, 0x00000004[r6]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1758
	mov r30, r6
	jarl32 _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x00000B87, [r31]
.BB.LABEL.5_17:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1766
	mulhi 0x00000014, r30, r6
	mov #_Can_GaaCtrlState, r7
	add r6, r7
	st.w r5, 0x00000004[r7]
	dispose 0x00000008, 0x00000B87, [r31]
_Can_ClearRxBuffers.1:
	.stack _Can_ClearRxBuffers.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1804
	mov 0x00000000, r5
	br9 .BB.LABEL.6_6
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1822
	movhi HIGHW1(#_Can_GpHohConfig), r0, r8
	ld.w LOWW(#_Can_GpHohConfig)[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1825
	mov r5, r9
	mul 0x00000018, r9, r0
	add r8, r9
	ld.bu 0x00000005[r9], r9
	cmp r9, r7
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r5, r9
	mul 0x00000018, r9, r0
	add r8, r9
	ld.w 0x00000000[r9], r9
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1828
	mov r5, r9
	mul 0x00000018, r9, r0
	add r8, r9
	ld.w 0x0000000C[r9], r9
	cmp 0x00000003, r9
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1857
	mulhi 0x0000001C, r6, r9
	mov #_Can_GaaRegs, r10
	add r9, r10
	ld.w 0x00000004[r10], r9
	mov r5, r11
	mul 0x00000018, r11, r0
	add r11, r8
	ld.bu 0x00000010[r8], r11
	shl 0x00000002, r11
	add r11, r9
	ld.w 0x00000014[r8], r11
	st.w r11, 0x000000B8[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1866
	ld.w 0x00000004[r10], r9
	ld.bu 0x00000010[r8], r10
	shl 0x00000002, r10
	add r10, r9
	ld.w 0x00000014[r8], r10
	ori 0x00000001, r10, r10
	st.w r10, 0x000000B8[r9]
	mov r5, r9
	mul 0x0000000C, r9, r0
	mov #_Can_GaaMirrorHohReg, r10
	add r9, r10
	ld.w 0x00000014[r8], r8
	ori 0x00000001, r8, r8
	st.w r8, 0x00000000[r10]
.BB.LABEL.6_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0x00000001, r5
.BB.LABEL.6_6:	; bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1818
	cmp 0x00000004, r5
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1897
	jmp [r31]
_Can_EnableTxBuffers.1:
	.stack _Can_EnableTxBuffers.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1934
	mov 0x00000000, r5
	br9 .BB.LABEL.7_7
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1948
	movhi HIGHW1(#_Can_GpHohConfig), r0, r8
	ld.w LOWW(#_Can_GpHohConfig)[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1951
	mov r5, r9
	mul 0x00000018, r9, r0
	add r8, r9
	ld.bu 0x00000005[r9], r9
	cmp r9, r7
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1954
	mov r5, r9
	mul 0x00000018, r9, r0
	add r8, r9
	ld.w 0x0000000C[r9], r10
	add 0x0000000C, r9
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r5, r10
	mul 0x00000018, r10, r0
	add r8, r10
	ld.w 0x00000000[r10], r10
	cmp 0x00000001, r10
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; bb33
	ld.w 0x00000000[r9], r9
	cmp 0x00000002, r9
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1959
	mulhi 0x0000001C, r6, r9
	mov #_Can_GaaRegs, r10
	add r9, r10
	ld.w 0x00000004[r10], r9
	mov r5, r10
	mul 0x00000018, r10, r0
	add r10, r8
	ld.bu 0x00000010[r8], r10
	shl 0x00000002, r10
	add r10, r9
	ld.w 0x00000014[r8], r10
	ori 0x00000001, r10, r10
	st.w r10, 0x00000118[r9]
	mov r5, r9
	mul 0x0000000C, r9, r0
	mov #_Can_GaaMirrorHohReg, r10
	add r9, r10
	ld.w 0x00000014[r8], r8
	ori 0x00000001, r8, r8
	st.w r8, 0x00000008[r10]
.BB.LABEL.7_6:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0x00000001, r5
.BB.LABEL.7_7:	; bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1944
	cmp 0x00000004, r5
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_8:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1994
	jmp [r31]
_Can_StopMode:
	.stack _Can_StopMode = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2029
	prepare 0x00000385, 0x00000008
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2040
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2041
	mulhi 0x00000014, r6, r5
	mov #_Can_GaaCtrlState, r8
	add r5, r8
	ld.w 0x00000004[r8], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2043
	mulhi 0x0000001C, r6, r8
	movhi HIGHW1(#_Can_GpPCController), r0, r9
	ld.w LOWW(#_Can_GpPCController)[r9], r10
	add r8, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	ld.bu 0x00000001[r10], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2046
	ld.w LOWW(#_Can_GpPCController)[r9], r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2046
	ld.bu 0x00000002[r9], r26
	mov r7, r27
	mov r6, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2061
	st.w r27, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000002, r8
	mov r25, r6
	mov r28, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000004, r5
	br9 .BB.LABEL.8_6
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2068
	cmp 0x00000004, r5
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_else_bb.if_break_bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; bb
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	mov r26, r7
	shl 0x00000004, r7
	add r7, r6
	ld.w 0x00000008[r6], r6
	andi 0x00000002, r6, r0
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; if_then_bb56
	mov 0x00000001, r10
.BB.LABEL.8_6:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2083
	cmp 0x00000005, r5
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_7:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2087
	st.w r27, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r25, r6
	mov r28, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000005, r5
	br9 .BB.LABEL.8_12
.BB.LABEL.8_9:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2094
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	shl 0x00000004, r26
	add r26, r6
	ld.w 0x00000008[r6], r6
	andi 0x00000001, r6, r0
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb109
	mov 0x00000001, r10
.BB.LABEL.8_12:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2110
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2113
	mulhi 0x00000014, r28, r5
	mov #_Can_GaaCtrlState, r6
	add r6, r5
	mov 0x00000001, r7
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2115
	mulhi 0x00000014, r28, r5
	add r5, r6
	st.w r0, 0x00000004[r6]
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2119
	mov r28, r6
	jarl32 _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x00000385, [r31]
.BB.LABEL.8_14:	; if_else_bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2127
	mulhi 0x00000014, r28, r6
	mov #_Can_GaaCtrlState, r7
	add r6, r7
	st.w r5, 0x00000004[r7]
	dispose 0x00000008, 0x00000385, [r31]
_Can_GlobalModeChange:
	.stack _Can_GlobalModeChange = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2163
	prepare 0x00000001, 0x00000000
	mov r7, r5
	mov r8, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2172
	mulhi 0x0000001C, r6, r7
	mov #_Can_GaaRegs, r8
	add r7, r8
	ld.w 0x00000004[r8], r7
	st.w r5, 0x00000088[r7]
	shl 0x00000002, r6
	mov #_Can_GaaMirrorGlobalReg, r7
	add r6, r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2179
	ld.w 0x00000004[r8], r6
	movea 0x0000008C, r6, r6
	mov 0x00000007, r7
	mov r5, r8
	jarl _Can_WaitRegisterChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2183
	dispose 0x00000000, 0x00000001, [r31]
_Can_ChannelModeChange:
	.stack _Can_ChannelModeChange = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2218
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2231
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	mulhi 0x0000001C, r7, r10
	add r10, r5
	ld.bu 0x00000002[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2235
	shl 0x00000004, r5
	mulhi 0x0000001C, r6, r6
	mov #_Can_GaaRegs, r10
	add r6, r10
	ld.w 0x00000004[r10], r6
	add r5, r6
	ld.w 0x00000004[r6], r6
	mov 0xFFFFFFF8, r11
	and r11, r6
	or r8, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2238
	ld.w 0x00000004[r10], r11
	add r5, r11
	st.w r6, 0x00000004[r11]
	shl 0x00000004, r7
	mov #_Can_GaaMirrorChannelReg, r11
	add r7, r11
	st.w r6, 0x00000004[r11]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2247
	ld.w 0x00000004[r10], r6
	add r5, r6
	add 0x00000008, r6
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2248
	jarl _Can_WaitRegisterChange, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2252
	dispose 0x00000000, 0x00000001, [r31]
_Can_WaitRegisterChange:
	.stack _Can_WaitRegisterChange = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2284
	prepare 0x00000B87, 0x00000008
	mov r6, r25
	mov r7, r26
	mov r8, r27
	mov r9, r28
	movea 0x00000004, r3, r7
	mov 0x00000000, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2299
	mov r29, r6
	jarl32 _GetCounterValue, r31
	mov r29, r30
	br9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2305
	jarl32 _GetCounterValue, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2307
	ld.w 0x00000004[r3], r5
	ld.w 0x00000000[r3], r6
	cmp r6, r5
	bnh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	movea 0x000003E8, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2311
	sub r5, r7
	add r6, r7
	add 0x00000001, r7
	br9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2318
	subr r6, r5
	mov r5, r7
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2321
	st.w r6, 0x00000004[r3]
	add r7, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2323
	ld.w 0x00000000[r28], r5
	cmp r5, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2326
	cmov 0x00000009, 0x00000001, r29, r29
.BB.LABEL.11_5:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2302
	ld.w 0x00000000[r25], r5
	and r26, r5
	andi 0x000000FF, r29, r0
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp r27, r5
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2334
	ld.w 0x00000000[r28], r5
	sub r30, r5
	st.w r5, 0x00000000[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2337
	andi 0x000000FF, r29, r10
	dispose 0x00000008, 0x00000B87, [r31]
