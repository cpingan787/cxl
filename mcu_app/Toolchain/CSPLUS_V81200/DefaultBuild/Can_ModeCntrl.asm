#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_ModeCntrl.c -oDefaultBuild\Can_ModeCntrl.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_816b231c29714b8588d6930e8980a871fv1fcpq5.icr
#@	compiled at Fri Mar 27 09:50:42 2026

	.file "..\..\Bsw\Mcal\can\src\Can_ModeCntrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Can_GaaRegs
	.extern _Can_GaaGlobalStateTransition
	.extern _Can_GaaActiveControllers
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
	.extern _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.extern _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.public _Can_SelfTestChannel
	.public _Can_SleepMode
	.public _Can_WakeupMode
	.public _Can_StartMode
	.public _Can_StopMode
	.public _Can_GlobalModeChange
	.public _Can_ChannelModeChange
	.public _Can_WaitRegisterChange
	.extern _Dem_ReportErrorStatus
	.extern _GetCounterValue

	.section .text, text
_Can_SetControllerMode:
	.stack _Can_SetControllerMode = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 624
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 638
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 641
	mov r20, r7
	jarl _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 642
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.1_34
.BB.LABEL.1_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 647
	cmp 0x00000004, r21
	bnc9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 655
	cmp 0x00000002, r22
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000002, r21
	bl9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; bb45
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb49
	addi 0xFFFFFFFE, r21, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb79
	mov 0x00000006, r9
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_7:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 670
	cmp r21, r22
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_8:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 673
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.1_14
.BB.LABEL.1_10:	; if_else_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 679
	cmp 0x00000001, r21
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_11:	; if_else_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 685
	cmp 0x00000002, r21
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_else_bb107.if_break_bb271_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	jr .BB.LABEL.1_34
.BB.LABEL.1_13:	; if_then_bb112
	mov 0x00000003, r7
.BB.LABEL.1_14:	; if_then_bb112
	mov r20, r6
	jarl _CanIf_ControllerModeIndication, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_15:	; if_else_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 700
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_else_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb136
	mov 0x00000002, r7
	br9 .BB.LABEL.1_14
.BB.LABEL.1_18:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 709
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_22
.BB.LABEL.1_19:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0xFFFFFFFF, r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_20:	; if_else_bb141
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_21:	; switch_clause_bb188
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 750
	mov r20, r6
	jarl _Can_SleepMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_22:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 712
	mov r20, r6
	jarl _Can_StartMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_23:	; switch_clause_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 722
	jarl _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 724
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_24:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 729
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000004[r5]
.BB.LABEL.1_26:	; if_break_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 736
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 739
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.bu 0x00000008[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_27:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 742
	mov r20, r6
	jarl _Can_StopMode, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_28:	; switch_clause_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 755
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 767
	jarl _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 769
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_29:	; bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_30:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 774
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 777
	st.b r0, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 780
	mulhi 0x0000002C, r20, r2
	add r2, r21
	ld.w 0x0000001C[r21], r2
	cmp 0x00000000, r2
	movea 0x0000001C, r21, r5
	bz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 785
	ld.b 0x00000000[r2], r6
	ori 0x00000080, r6, r6
	st.b r6, 0x00000000[r2]
	ld.w 0x00000000[r5], r2
	ld.b 0x00000000[r2], r2
	syncp
.BB.LABEL.1_32:	; if_break_bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 801
	jarl _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 804
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_35
.BB.LABEL.1_33:	; if_break_bb254.if_break_bb271_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r10
.BB.LABEL.1_34:	; if_break_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 822
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_35:	; if_else_bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 814
	mov r20, r6
	jarl _Can_WakeupMode, r31
	jr .BB.LABEL.1_12
_Can_SelfTestChannel:
	.stack _Can_SelfTestChannel = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 860
	prepare 0x00000479, 0x0000000C
	mov r6, r20
	mov r7, r21
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 886
	mov r20, r7
	jarl _Can_CommonDetCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 887
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; entry.if_break_bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r22
.BB.LABEL.2_2:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 909
	cmp 0x00000001, r22
	bz17 .BB.LABEL.2_16
.BB.LABEL.2_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 913
	movhi HIGHW1(#_Can_GpPCController), r0, r22
	ld.w LOWW(#_Can_GpPCController)[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 915
	mulhi 0x0000002C, r20, r2
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 918
	ld.bu 0x00000002[r22], r23
	ld.bu 0x00000001[r22], r22
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r24
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 921
	st.w r2, 0x00000008[r3]
	movea 0x00000015, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 922
	st.w r2, 0x00000000[r3]
	movea 0x00000008, r3, r9
	mov 0x00000002, r8
	mov r22, r6
	mov r20, r7
	jarl _Can_ChannelModeChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 918
	shl 0x00000004, r23
	add r23, r24
	add 0x00000004, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 925
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 929
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	mov r23, r10
	dispose 0x0000000C, 0x00000479, [r31]
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 894
	cmp 0x00000002, r21
	bgt9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_else_bb.if_break_bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.2_2
.BB.LABEL.2_7:	; if_then_bb19
	mov 0x00000006, r9
	movea 0x00000015, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 897
	jarl _Det_ReportError, r31
	br9 .BB.LABEL.2_1
.BB.LABEL.2_8:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 936
	jarl _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 938
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_9:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0xFFFFFFFF, r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_10:	; if_else_bb59
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.2_14
.BB.LABEL.2_11:	; switch_clause_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 997
	ld.w 0x00000000[r24], r2
	movhi 0x00000100, r0, r5
	or r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1000
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	mov r20, r2
	shl 0x00000004, r2
	mov #_Can_GaaMirrorChannelReg, r5
	add r2, r5
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1010
	ld.w 0x00000000[r24], r2
	movhi 0x00000600, r0, r6
	or r6, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1013
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000004[r5]
	br9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 942
	ld.w 0x00000000[r24], r2
	mov 0xF8FFFFFF, r5
	and r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 945
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	mov r20, r24
	shl 0x00000004, r24
	mov #_Can_GaaMirrorChannelReg, r2
	add r24, r2
	ld.w 0x00000004[r3], r24
	st.w r24, 0x00000004[r2]
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; switch_clause_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 956
	ld.w 0x00000000[r24], r2
	movhi 0x00000100, r0, r5
	or r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 959
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	mov r20, r2
	shl 0x00000004, r2
	mov #_Can_GaaMirrorChannelReg, r5
	add r2, r5
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 971
	ld.w 0x00000000[r24], r2
	mov 0xF9FFFFFF, r6
	and r6, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 973
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 983
	ld.w 0x00000000[r24], r2
	movhi 0x00000400, r0, r6
	or r6, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 986
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000000[r24]
	ld.w 0x00000004[r3], r24
	st.w r24, 0x00000004[r5]
.BB.LABEL.2_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1026
	jarl _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	movea 0x00000015, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1029
	st.w r2, 0x00000000[r3]
	movea 0x00000008, r3, r9
	mov 0x00000000, r8
	mov r22, r6
	mov r20, r7
	jarl _Can_ChannelModeChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1033
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1036
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.2_16:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1052
	dispose 0x0000000C, 0x00000479, [r31]
_Can_SleepMode:
	.stack _Can_SleepMode = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1104
	prepare 0x000007F9, 0x00000008
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1120
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1122
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1124
	mulhi 0x0000002C, r6, r21
	add r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1145
	ld.bu 0x00000001[r21], r22
	ld.bu 0x00000002[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1125
	add 0x00000002, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1127
	mulhi 0x00000014, r6, r5
	mov #_Can_GaaCtrlState, r8
	add r5, r8
	ld.w 0x00000004[r8], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1145
	cmp 0x00000000, r23
	mov r6, r24
	mov r7, r25
	mov r6, r26
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1148
	st.w r25, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000005, r8
	mov r22, r6
	mov r26, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000006, r23
	br9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1156
	cmp 0x00000006, r23
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_else_bb.if_break_bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; bb
	mulhi 0x0000001C, r22, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	shl 0x00000004, r2
	add r2, r5
	ld.w 0x00000008[r5], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_5:	; if_then_bb56
	mov 0x00000001, r10
.BB.LABEL.3_6:	; if_break_bb58
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1172
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_7:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000006, r23
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1177
	jarl _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1180
	shl r26, r2
	not r2, r2
	mov r22, r5
	shl 0x00000002, r5
	mov #_Can_GaaActiveControllers, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	and r2, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1182
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1186
	mov #_Can_GaaGlobalStateTransition, r23
	add r22, r23
	mov 0x00000001, r27
	st.b r27, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1194
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1202
	mov r22, r6
	mov r27, r7
	mov r25, r9
	jarl _Can_GlobalModeChange, r31
	mov 0x00000007, r23
	br9 .BB.LABEL.3_16
.BB.LABEL.3_10:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1194
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	mov r27, r10
	br9 .BB.LABEL.3_16
.BB.LABEL.3_11:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1215
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000007, r23
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_else_bb108.if_break_bb146_crit_edge
	mov r27, r10
	br9 .BB.LABEL.3_16
.BB.LABEL.3_14:	; bb124
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.3_13
.BB.LABEL.3_15:	; if_then_bb143
	mov 0x00000001, r10
.BB.LABEL.3_16:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1232
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_19
.BB.LABEL.3_17:	; if_break_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000007, r23
	bnz9 .BB.LABEL.3_19
.BB.LABEL.3_18:	; if_then_bb163
	movea 0x00000004, r3, r8
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1236
	mov r22, r6
	mov r25, r9
	jarl _Can_GlobalModeChange, r31
	mov 0x00000008, r23
	br9 .BB.LABEL.3_23
.BB.LABEL.3_19:	; if_else_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1244
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_23
.BB.LABEL.3_20:	; if_else_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000008, r23
	bnz9 .BB.LABEL.3_23
.BB.LABEL.3_21:	; bb183
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	andi 0x00000004, r2, r0
	bnz9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; if_then_bb202
	mov 0x00000001, r10
.BB.LABEL.3_23:	; if_break_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1260
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_40
.BB.LABEL.3_24:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1263
	cmp 0x00000008, r23
	bnz9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; if_then_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1266
	mov #_Can_GaaGlobalStateTransition, r23
	add r23, r22
	st.b r0, 0x00000000[r22]
.BB.LABEL.3_26:	; if_break_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1276
	jarl _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1278
	mulhi 0x00000014, r26, r23
	mov #_Can_GaaCtrlState, r2
	add r23, r2
	mov 0x00000002, r23
	st.w r23, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1280
	st.w r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1282
	mulhi 0x0000002C, r24, r23
	add r20, r23
	ld.w 0x0000001C[r23], r2
	cmp 0x00000000, r2
	movea 0x0000001C, r23, r23
	bz9 .BB.LABEL.3_35
.BB.LABEL.3_27:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1285
	mulhi 0x0000002C, r24, r2
	add r20, r2
	tst1 0x00000003, 0x00000003[r2]
	bz9 .BB.LABEL.3_30
.BB.LABEL.3_28:	; bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r26, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_30
.BB.LABEL.3_29:	; bb244.bb255_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.3_31
.BB.LABEL.3_30:	; bb254
	mov 0x00000001, r2
.BB.LABEL.3_31:	; bb255
	cmp 0x00000000, r2
	ld.w 0x00000000[r23], r23
	ld.hu 0x00000000[r23], r2
	bnz9 .BB.LABEL.3_33
.BB.LABEL.3_32:	; if_then_bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1289
	andi 0x0000EF7F, r2, r2
	br9 .BB.LABEL.3_34
.BB.LABEL.3_33:	; if_else_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1296
	andi 0x0000EFFF, r2, r2
.BB.LABEL.3_34:	; if_else_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	st.h r2, 0x00000000[r23]
.BB.LABEL.3_35:	; if_break_bb284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1307
	mulhi 0x0000002C, r24, r23
	add r20, r23
	ld.w 0x00000024[r23], r23
	cmp 0x00000000, r23
	bz9 .BB.LABEL.3_37
.BB.LABEL.3_36:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1309
	st.b r2, 0x00000000[r23]
.BB.LABEL.3_37:	; if_break_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1317
	mulhi 0x0000002C, r24, r23
	add r23, r20
	ld.w 0x00000020[r20], r23
	cmp 0x00000000, r23
	bz9 .BB.LABEL.3_39
.BB.LABEL.3_38:	; if_then_bb303
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1319
	ld.bu 0x00000000[r21], r2
	mov 0x00000001, r5
	shl r2, r5
	ld.h 0x00000000[r23], r2
	or r5, r2
	st.h r2, 0x00000000[r23]
.BB.LABEL.3_39:	; if_break_bb319
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1328
	jarl _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1332
	mov r26, r6
	jarl _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x000007F9, [r31]
.BB.LABEL.3_40:	; if_else_bb324
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1340
	mulhi 0x00000014, r26, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	st.w r23, 0x00000004[r5]
	dispose 0x00000008, 0x000007F9, [r31]
_Can_WakeupMode:
	.stack _Can_WakeupMode = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1393
	prepare 0x00000779, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1410
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1412
	mulhi 0x0000002C, r6, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1429
	ld.bu 0x00000002[r2], r20
	ld.bu 0x00000001[r2], r21
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1416
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1417
	mulhi 0x00000014, r6, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1429
	cmp 0x00000001, r22
	mov r7, r23
	mov r6, r24
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000009, r22
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; entry
	cmp 0x0000000A, r22
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1435
	jarl _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1437
	mov #_Can_GaaGlobalStateTransition, r2
	add r21, r2
	ld.bu 0x00000000[r2], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb.if_break_bb76_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r25
	mov 0x0000000A, r22
	mov 0x00000000, r26
	br9 .BB.LABEL.4_9
.BB.LABEL.4_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1446
	mov r21, r25
	shl 0x00000002, r25
	mov #_Can_GaaActiveControllers, r26
	add r26, r25
	ld.w 0x00000000[r25], r26
	cmp 0x00000000, r26
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb63
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1450
	st.b r26, 0x00000000[r2]
.BB.LABEL.4_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1459
	shl r24, r2
	ld.w 0x00000000[r25], r5
	or r2, r5
	st.w r5, 0x00000000[r25]
	mov 0x00000000, r25
.BB.LABEL.4_9:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1462
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1466
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.4_15
.BB.LABEL.4_10:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	movea 0x00000004, r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1470
	mov r21, r6
	mov r23, r9
	jarl _Can_GlobalModeChange, r31
	mov 0x0000000B, r22
	mov r10, r25
	br9 .BB.LABEL.4_15
.BB.LABEL.4_11:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1483
	cmp 0x0000000B, r22
	bz9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; if_else_bb88.if_break_bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.4_15
.BB.LABEL.4_13:	; bb92
	mulhi 0x0000001C, r21, r25
	mov #_Can_GaaRegs, r2
	add r25, r2
	ld.w 0x00000004[r2], r25
	ld.w 0x0000008C[r25], r25
	andi 0x00000001, r25, r0
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; if_then_bb111
	mov 0x00000001, r25
.BB.LABEL.4_15:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1498
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.4_18
.BB.LABEL.4_16:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x0000000B, r22
	bnz9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; if_then_bb131
	movea 0x00000004, r3, r8
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1502
	mov r21, r6
	mov r23, r9
	jarl _Can_GlobalModeChange, r31
	mov 0x0000000C, r22
	br9 .BB.LABEL.4_23
.BB.LABEL.4_18:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1509
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x0000000C, r22
	bz9 .BB.LABEL.4_21
.BB.LABEL.4_20:	; if_else_bb135.if_break_bb172_crit_edge
	mov r25, r10
	br9 .BB.LABEL.4_23
.BB.LABEL.4_21:	; bb151
	mulhi 0x0000001C, r21, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_20
.BB.LABEL.4_22:	; if_then_bb169
	mov 0x00000001, r10
.BB.LABEL.4_23:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1525
	cmp 0x0000000D, r22
	bz9 .BB.LABEL.4_28
.BB.LABEL.4_24:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_28
.BB.LABEL.4_25:	; if_then_bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1529
	cmp 0x0000000C, r22
	bnz9 .BB.LABEL.4_27
.BB.LABEL.4_26:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1532
	mov #_Can_GaaGlobalStateTransition, r20
	add r21, r20
	st.b r0, 0x00000000[r20]
.BB.LABEL.4_27:	; if_break_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1541
	st.w r23, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r21, r6
	mov r24, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x0000000D, r22
	br9 .BB.LABEL.4_31
.BB.LABEL.4_28:	; if_else_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1549
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_31
.BB.LABEL.4_29:	; bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x0000001C, r21, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	shl 0x00000004, r20
	add r20, r2
	ld.w 0x00000008[r2], r2
	andi 0x00000007, r2, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_31
.BB.LABEL.4_30:	; if_then_bb233
	mov 0x00000001, r10
.BB.LABEL.4_31:	; if_break_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1564
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_34
.BB.LABEL.4_32:	; if_then_bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1566
	mulhi 0x00000014, r24, r22
	mov #_Can_GaaCtrlState, r2
	add r2, r22
	mov 0x00000001, r5
	st.w r5, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1568
	mulhi 0x00000014, r24, r22
	add r22, r2
	st.w r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1571
	ld.bu 0x0000000A[r2], r22
	cmp 0x00000001, r22
	bz9 .BB.LABEL.4_35
.BB.LABEL.4_33:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1577
	mov r24, r6
	jarl _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.4_34:	; if_else_bb267
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1586
	mulhi 0x00000014, r24, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	st.w r22, 0x00000004[r5]
.BB.LABEL.4_35:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1599
	dispose 0x00000008, 0x00000779, [r31]
_Can_StartMode:
	.stack _Can_StartMode = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1635
	prepare 0x00000679, 0x00000008
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1648
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1649
	mulhi 0x00000014, r6, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1651
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1653
	mulhi 0x0000002C, r6, r5
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1661
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1654
	ld.bu 0x00000002[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1661
	ld.bu 0x00000001[r5], r22
	mov r6, r23
	mov r7, r24
	mov r6, r25
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1665
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	mov r21, r5
	shl 0x00000004, r5
	add r5, r2
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1668
	mulhi 0x00000014, r25, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	st.b r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1672
	st.w r24, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r22, r6
	mov r25, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000002, r2
	br9 .BB.LABEL.5_7
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1679
	cmp 0x00000002, r2
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb.if_break_bb88_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; bb62
	mulhi 0x0000001C, r22, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r21, r6
	shl 0x00000004, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; if_then_bb86
	mov 0x00000001, r10
.BB.LABEL.5_7:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1694
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_8:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; bb93
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1705
	mov r22, r6
	mov r25, r7
	mov r24, r8
	jarl _Can_ClearRxBuffers.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1710
	st.w r24, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000000, r8
	mov r22, r6
	mov r25, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000003, r2
	br9 .BB.LABEL.5_15
.BB.LABEL.5_11:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1717
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_12:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_13:	; bb140
	mulhi 0x0000001C, r22, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r21, r6
	shl 0x00000004, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	andi 0x00000007, r5, r0
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; if_then_bb164
	mov 0x00000001, r10
.BB.LABEL.5_15:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1734
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1740
	mov r22, r6
	mov r25, r7
	mov r24, r8
	jarl _Can_EnableTxBuffers.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1745
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	shl 0x00000002, r21
	add r21, r2
	mulhi 0x0000002C, r23, r5
	add r5, r20
	ld.w 0x00000008[r20], r5
	ori 0x00000001, r5, r5
	st.w r5, 0x00000400[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1754
	mulhi 0x00000014, r25, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1756
	st.w r0, 0x00000004[r5]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1758
	mov r25, r6
	jarl _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x00000679, [r31]
.BB.LABEL.5_17:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1766
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	st.w r2, 0x00000004[r6]
	dispose 0x00000008, 0x00000679, [r31]
_Can_ClearRxBuffers.1:
	.stack _Can_ClearRxBuffers.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1804
	mov 0x00000000, r2
	br9 .BB.LABEL.6_6
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1822
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1825
	mov r2, r8
	mul 0x00000018, r8, r0
	add r5, r8
	ld.bu 0x00000005[r8], r8
	cmp r8, r7
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r2, r8
	mul 0x00000018, r8, r0
	add r5, r8
	ld.w 0x00000000[r8], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1828
	mov r2, r8
	mul 0x00000018, r8, r0
	add r5, r8
	ld.w 0x0000000C[r8], r8
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1857
	mulhi 0x0000001C, r6, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	mov r2, r10
	mul 0x00000018, r10, r0
	add r10, r5
	ld.bu 0x00000010[r5], r10
	shl 0x00000002, r10
	add r10, r8
	ld.w 0x00000014[r5], r10
	st.w r10, 0x000000B8[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1866
	ld.w 0x00000004[r9], r8
	ld.bu 0x00000010[r5], r9
	shl 0x00000002, r9
	add r9, r8
	ld.w 0x00000014[r5], r9
	ori 0x00000001, r9, r9
	st.w r9, 0x000000B8[r8]
	mov r2, r8
	mul 0x0000000C, r8, r0
	mov #_Can_GaaMirrorHohReg, r9
	add r8, r9
	ld.w 0x00000014[r5], r5
	ori 0x00000001, r5, r5
	st.w r5, 0x00000000[r9]
.BB.LABEL.6_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0x00000001, r2
.BB.LABEL.6_6:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1818
	cmp 0x00000004, r2
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1897
	jmp [r31]
_Can_EnableTxBuffers.1:
	.stack _Can_EnableTxBuffers.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1934
	mov 0x00000000, r2
	br9 .BB.LABEL.7_7
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1948
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1951
	mov r2, r8
	mul 0x00000018, r8, r0
	add r5, r8
	ld.bu 0x00000005[r8], r8
	cmp r8, r7
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1954
	mov r2, r8
	mul 0x00000018, r8, r0
	add r5, r8
	ld.w 0x0000000C[r8], r9
	add 0x0000000C, r8
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r2, r9
	mul 0x00000018, r9, r0
	add r5, r9
	ld.w 0x00000000[r9], r9
	cmp 0x00000001, r9
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; bb33
	ld.w 0x00000000[r8], r8
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1959
	mulhi 0x0000001C, r6, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	mov r2, r9
	mul 0x00000018, r9, r0
	add r9, r5
	ld.bu 0x00000010[r5], r9
	shl 0x00000002, r9
	add r9, r8
	ld.w 0x00000014[r5], r9
	ori 0x00000001, r9, r9
	st.w r9, 0x00000118[r8]
	mov r2, r8
	mul 0x0000000C, r8, r0
	mov #_Can_GaaMirrorHohReg, r9
	add r8, r9
	ld.w 0x00000014[r5], r5
	ori 0x00000001, r5, r5
	st.w r5, 0x00000008[r9]
.BB.LABEL.7_6:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	add 0x00000001, r2
.BB.LABEL.7_7:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1944
	cmp 0x00000004, r2
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 1994
	jmp [r31]
_Can_StopMode:
	.stack _Can_StopMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2029
	prepare 0x00000079, 0x00000008
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2040
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2041
	mulhi 0x00000014, r6, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2043
	mulhi 0x0000002C, r6, r5
	movhi HIGHW1(#_Can_GpPCController), r0, r8
	ld.w LOWW(#_Can_GpPCController)[r8], r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	ld.bu 0x00000001[r9], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2046
	ld.w LOWW(#_Can_GpPCController)[r8], r8
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2046
	ld.bu 0x00000002[r8], r21
	mov r7, r22
	mov r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2058
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2061
	st.w r22, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000002, r8
	mov r20, r6
	mov r23, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000004, r2
	br9 .BB.LABEL.8_6
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2068
	cmp 0x00000004, r2
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_else_bb.if_break_bb58_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; bb
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r21, r6
	shl 0x00000004, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	andi 0x00000002, r5, r0
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; if_then_bb56
	mov 0x00000001, r10
.BB.LABEL.8_6:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2083
	cmp 0x00000005, r2
	bz9 .BB.LABEL.8_9
.BB.LABEL.8_7:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2087
	st.w r22, 0x00000000[r3]
	movea 0x00000004, r3, r9
	mov 0x00000001, r8
	mov r20, r6
	mov r23, r7
	jarl _Can_ChannelModeChange, r31
	mov 0x00000005, r2
	br9 .BB.LABEL.8_12
.BB.LABEL.8_9:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2094
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	shl 0x00000004, r21
	add r21, r5
	ld.w 0x00000008[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb109
	mov 0x00000001, r10
.BB.LABEL.8_12:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2110
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2113
	mulhi 0x00000014, r23, r2
	mov #_Can_GaaCtrlState, r5
	add r5, r2
	mov 0x00000001, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2115
	mulhi 0x00000014, r23, r2
	add r2, r5
	st.w r0, 0x00000004[r5]
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2119
	mov r23, r6
	jarl _CanIf_ControllerModeIndication, r31
	dispose 0x00000008, 0x00000079, [r31]
.BB.LABEL.8_14:	; if_else_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2127
	mulhi 0x00000014, r23, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	st.w r2, 0x00000004[r6]
	dispose 0x00000008, 0x00000079, [r31]
_Can_GlobalModeChange:
	.stack _Can_GlobalModeChange = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2163
	prepare 0x00000001, 0x00000000
	mov r7, r2
	mov r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2172
	mulhi 0x0000001C, r6, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	st.w r2, 0x00000088[r5]
	shl 0x00000002, r6
	mov #_Can_GaaMirrorGlobalReg, r5
	add r6, r5
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2179
	ld.w 0x00000004[r7], r5
	movea 0x0000008C, r5, r6
	mov 0x00000007, r7
	mov r2, r8
	jarl _Can_WaitRegisterChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2183
	dispose 0x00000000, 0x00000001, [r31]
_Can_ChannelModeChange:
	.stack _Can_ChannelModeChange = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2218
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2231
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r2
	mulhi 0x0000002C, r7, r5
	add r5, r2
	ld.bu 0x00000002[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2235
	shl 0x00000004, r2
	mulhi 0x0000001C, r6, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	add r2, r5
	ld.w 0x00000004[r5], r5
	mov 0xFFFFFFF8, r10
	and r10, r5
	or r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2238
	ld.w 0x00000004[r6], r10
	add r2, r10
	st.w r5, 0x00000004[r10]
	shl 0x00000004, r7
	mov #_Can_GaaMirrorChannelReg, r10
	add r7, r10
	st.w r5, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2247
	ld.w 0x00000004[r6], r6
	add r2, r6
	add 0x00000008, r6
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2248
	jarl _Can_WaitRegisterChange, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2252
	dispose 0x00000000, 0x00000001, [r31]
_Can_WaitRegisterChange:
	.stack _Can_WaitRegisterChange = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2284
	prepare 0x00000679, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	movea 0x00000004, r3, r7
	mov 0x00000000, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2299
	mov r24, r6
	jarl _GetCounterValue, r31
	mov r24, r25
	br9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2305
	jarl _GetCounterValue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2307
	ld.w 0x00000004[r3], r2
	ld.w 0x00000000[r3], r5
	cmp r5, r2
	bnh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	movea 0x000003E8, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2311
	sub r2, r6
	add r5, r6
	add 0x00000001, r6
	br9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2318
	subr r5, r2
	mov r2, r6
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2321
	st.w r5, 0x00000004[r3]
	add r6, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2323
	ld.w 0x00000000[r23], r2
	cmp r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2326
	cmov 0x00000009, 0x00000001, r24, r24
.BB.LABEL.11_5:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2302
	ld.w 0x00000000[r20], r2
	and r21, r2
	andi 0x000000FF, r24, r0
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 0
	cmp r22, r2
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_7:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2334
	ld.w 0x00000000[r23], r2
	sub r25, r2
	st.w r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_ModeCntrl.c", 2337
	andi 0x000000FF, r24, r10
	dispose 0x00000008, 0x00000679, [r31]
