#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_MainServ.c -oDefaultBuild\Can_MainServ.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_39688f8203624b02975e9d8994eef899ho4aopaq.akz
#@	compiled at Thu Jul 16 13:41:28 2026

	.file "..\..\Bsw\Mcal\can\src\Can_MainServ.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaRegs
	.extern _Can_GblInitialized
	.extern _Can_GpPCController
	.extern _Can_GpHohConfig
	.extern _Can_GaaCtrlState
	.public _Can_GaaDLCFromPayloadTable, 65
	.public _Can_GaaPayloadFromDLCTable, 16
	.public _Can_MainFunction_Write
	.public _Can_MainFunction_Write_0
	.public _Can_MainFunction_Read
	.public _Can_MainFunction_Read_0
	.public _Can_MainFunction_BusOff
	.extern _Det_ReportError
	.public _Can_MainFunction_Wakeup
	.public _Can_MainFunction_Mode
	.extern _Can_StartMode
	.extern _Can_StopMode
	.public _Can_CommonDetCheck
	.public _Can_TxConfirmationProcessing
	.public _Can_RxProcessing
	.extern _Dem_ReportErrorStatus
	.extern _CanIf_TxConfirmation
	.extern _CanIf_RxIndication

	.section .text, text
_Can_MainFunction_Write:
	.stack _Can_MainFunction_Write = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 565
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 569
	jarl _Can_MainFunction_Write_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Write_0:
	.stack _Can_MainFunction_Write_0 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 573
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 576
	jarl _Can_MainFunction_Write_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read:
	.stack _Can_MainFunction_Read = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 671
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 675
	jarl _Can_MainFunction_Read_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read_0:
	.stack _Can_MainFunction_Read_0 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 679
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 682
	jarl _Can_MainFunction_Read_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_BusOff:
	.stack _Can_MainFunction_BusOff = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 777
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 789
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 793
	jarl32 _Det_ReportError, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 875
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Wakeup:
	.stack _Can_MainFunction_Wakeup = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 910
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 922
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x0000000A, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 927
	jarl32 _Det_ReportError, r31
.BB.LABEL.6_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1020
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Mode:
	.stack _Can_MainFunction_Mode = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1055
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1062
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb21_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; if_then_bb
	mov 0x00000005, r9
	mov 0x0000000C, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1067
	jarl32 _Det_ReportError, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.7_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1080
	andi 0x000000FF, r25, r5
	mul 0x00000014, r5, r0
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	add 0xFFFFFFFE, r5
	cmp 0x00000003, r5
	bh9 .BB.LABEL.7_7
.BB.LABEL.7_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	andi 0x000000FF, r25, r6
	mov 0x0000000C, r7
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.7_10[r5]
.SWITCH.LABEL.7_10:
	br9 .BB.LABEL.7_5
	br9 .BB.LABEL.7_5
	br9 .BB.LABEL.7_6
	br9 .BB.LABEL.7_6
.SWITCH.LABEL.7_10.END:
.BB.LABEL.7_5:	; switch_clause_bb12
	jarl32 _Can_StartMode, r31
	br9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; switch_clause_bb16
	jarl32 _Can_StopMode, r31
.BB.LABEL.7_7:	; switch_break_bb
	add 0x00000001, r25
.BB.LABEL.7_8:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1076
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1126
	dispose 0x00000000, 0x00000201, [r31]
_Can_CommonDetCheck:
	.stack _Can_CommonDetCheck = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1178
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	mov r6, r8
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
.BB.LABEL.8_2:	; if_then_bb
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1206
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1190
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	mulhi 0x0000001C, r7, r6
	add r6, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb29
	mov 0x00000004, r9
	br9 .BB.LABEL.8_2
.BB.LABEL.8_6:	; if_break_bb33
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1206
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Write_Common.1:
	.stack _Can_MainFunction_Write_Common.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1238
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1251
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000001, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1256
	jarl32 _Det_ReportError, r31
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1296
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read_Common.1:
	.stack _Can_MainFunction_Read_Common.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1328
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1335
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	mov 0x00000000, r7
	cmp 0x00000000, r5
	mov r6, r8
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000008, r8
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1340
	jarl32 _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movea 0x00000FFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1348
	jarl _Can_RxProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_TxConfirmationProcessing:
	.stack _Can_TxConfirmationProcessing = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1386
	prepare 0x00000B87, 0x00000008
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1415
	mulhi 0x0000001C, r6, r5
	movhi HIGHW1(#_Can_GpPCController), r0, r7
	ld.w LOWW(#_Can_GpPCController)[r7], r8
	add r5, r8
	ld.bu 0x00000001[r8], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1418
	ld.w LOWW(#_Can_GpPCController)[r7], r7
	add r5, r7
	ld.bu 0x00000002[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1432
	st.w r5, 0x00000000[r3]
	shl 0x00000002, r5
	mulhi 0x0000001C, r25, r7
	mov #_Can_GaaRegs, r8
	add r7, r8
	ld.w 0x0000000C[r8], r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1447
	ld.w 0x00000004[r8], r8
	add r8, r5
	ld.w 0x00000420[r5], r5
	andi 0x00000004, r5, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1432
	movea 0x00005B00, r7, r5
	st.w r5, 0x00000004[r3]
	mov r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1447
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1450
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1458
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x00000000[r3], r6
	shl 0x00000002, r6
	add r5, r6
	mov 0xFFFFFFFB, r5
	st.w r5, 0x00000420[r6]
	mov 0x00000000, r27
	br9 .BB.LABEL.11_14
.BB.LABEL.11_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1467
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r28
	add r5, r28
	ld.w 0x00000004[r28], r5
	ld.w 0x00000000[r3], r6
	mov r6, r29
	shl 0x00000002, r29
	add r29, r5
	movea 0x00001F07, r0, r6
	st.w r6, 0x00000420[r5]
	ld.w 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1468
	ld.w 0x00000000[r5], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1474
	andi 0x0000FFFF, r30, r6
	shr 0x00000008, r6
	jarl32 _CanIf_TxConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1477
	ld.w 0x00000004[r28], r5
	add r5, r29
	movea 0x000000FF, r0, r5
	st.w r5, 0x00000440[r29]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1485
	andi 0x00000007, r30, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1482
	shr 0x00000003, r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1488
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.11_13
.BB.LABEL.11_4:	; bb.bb156_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.11_11
.BB.LABEL.11_5:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1496
	movhi HIGHW1(#_Can_GpHohConfig), r0, r7
	ld.w LOWW(#_Can_GpHohConfig)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1498
	mov r5, r8
	mul 0x00000018, r8, r0
	add r7, r8
	ld.w 0x00000000[r8], r8
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_6:	; bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov r5, r8
	mul 0x00000018, r8, r0
	add r7, r8
	ld.bu 0x00000005[r8], r8
	cmp r8, r26
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_7:	; bb117
	mov r5, r8
	mul 0x00000018, r8, r0
	add r7, r8
	ld.w 0x0000000C[r8], r8
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_8:	; bb130
	mov r5, r8
	mul 0x00000018, r8, r0
	add r7, r8
	ld.w 0x00000014[r8], r8
	shr 0x00000014, r8
	xor r30, r8
	andi 0x0000000F, r8, r0
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1503
	mov r5, r6
	mul 0x00000018, r6, r0
	add r6, r7
	ld.bu 0x00000010[r7], r6
.BB.LABEL.11_10:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	add 0x00000001, r5
.BB.LABEL.11_11:	; bb156
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1492
	cmp 0x00000004, r5
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_12:	; bb161
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1511
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	shl 0x00000002, r6
	add r6, r5
	ori 0x0000FF0F, r0, r6
	st.w r6, 0x00000178[r5]
.BB.LABEL.11_13:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1533
	add 0x00000001, r27
.BB.LABEL.11_14:	; bb175
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1463
	andi 0x000000FF, r27, r5
	cmp 0x0000000F, r5
	bgt9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; bb180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x00000000[r3], r6
	shl 0x00000002, r6
	add r5, r6
	ld.w 0x00000420[r6], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_16:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1535
	dispose 0x00000008, 0x00000B87, [r31]
_Can_RxProcessing:
	.stack _Can_RxProcessing = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1576
	prepare 0x00000381, 0x00000000
	mov 0x00000000, r25
	mov r7, r26
	mov r6, r27
	br9 .BB.LABEL.12_7
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1593
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r5
	mov r25, r6
	mul 0x00000018, r6, r0
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1596
	movhi HIGHW1(#_Can_GpPCController), r0, r7
	ld.w LOWW(#_Can_GpPCController)[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1599
	ld.w 0x00000000[r6], r8
	cmp 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1596
	ld.bu 0x00000005[r6], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1599
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mulhi 0x0000001C, r8, r9
	add r7, r9
	ld.b 0x00000003[r9], r9
	xor r26, r9
	andi 0x00000002, r9, r0
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1612
	mulhi 0x0000001C, r8, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1613
	mov r25, r8
	mul 0x00000018, r8, r0
	add r8, r5
	ld.w 0x0000000C[r5], r5
	cmp 0x00000003, r5
	ld.bu 0x00000001[r7], r7
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movea 0x00000100, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1617
	shl r7, r5
	tst r27, r5
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1620
	jarl _Can_RxIndicationRxFIFO.1, r31
.BB.LABEL.12_6:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	add 0x00000001, r25
.BB.LABEL.12_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1589
	cmp 0x00000004, r25
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_8:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1668
	dispose 0x00000000, 0x00000381, [r31]
_Can_RxIndicationRxFIFO.1:
	.stack _Can_RxIndicationRxFIFO.1 = 88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1702
	prepare 0x00000385, 0x00000044
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1723
	mulhi 0x0000001C, r7, r5
	mov #_Can_GaaRegs, r8
	add r5, r8
	ld.w 0x00000004[r8], r5
	ld.bu 0x00000010[r6], r8
	shl 0x00000002, r8
	add r8, r5
	ori 0x0000FF07, r0, r8
	st.w r8, 0x000000D8[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1728
	ld.w 0x00000014[r6], r5
	shr 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1730
	andi 0x00000007, r5, r5
	mov 0x00000000, r27
	cmp 0x00000001, r5
	mov r7, r25
	mov r6, r26
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb249_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000004, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_2:	; bb35
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; bb35.bb249_crit_edge
	mov 0x00000008, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_4:	; bb41
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; bb41.bb249_crit_edge
	movea 0x00000010, r0, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_6:	; bb47
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; bb47.bb249_crit_edge
	movea 0x00000020, r0, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_8:	; bb53
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.13_10
.BB.LABEL.13_9:	; bb53.bb249_crit_edge
	movea 0x00000030, r0, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_10:	; bb59
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; bb59.bb249_crit_edge
	movea 0x00000040, r0, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_12:	; bb65
	cmp 0x00000007, r5
	setf 0x00000002, r28
	shl 0x00000007, r28
	jr .BB.LABEL.13_19
.BB.LABEL.13_13:	; bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1739
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.bu 0x00000010[r26], r6
	mov r6, r7
	shl 0x00000002, r7
	add r5, r7
	ld.w 0x000000D8[r7], r5
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.13_15
.BB.LABEL.13_14:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1744
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	shl 0x00000002, r6
	add r5, r6
	ori 0x0000FF0B, r0, r5
	st.w r5, 0x000000D8[r6]
	mov 0x00000007, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1749
	jarl32 _Det_ReportError, r31
.BB.LABEL.13_15:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1771
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	ld.bu 0x00000010[r26], r7
	shl 0x00000007, r7
	add r7, r5
	ld.w 0x00002B08[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1773
	ld.w 0x0000000C[r6], r7
	ld.bu 0x00000010[r26], r8
	shl 0x00000007, r8
	add r8, r7
	ld.w 0x00002B00[r7], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1775
	ld.w 0x0000000C[r6], r7
	ld.bu 0x00000010[r26], r8
	shl 0x00000007, r8
	add r8, r7
	ld.w 0x00002B04[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1781
	shr 0x0000001C, r7
	mov #_Can_GaaPayloadFromDLCTable, r8
	add r7, r8
	ld.bu 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1784
	ld.w 0x00000014[r26], r7
	shr 0x00000004, r7
	andi 0x00000007, r7, r7
	mov #_Can_GaaPayloadFromPLSTable.1, r10
	add r7, r10
	ld.bu 0x00000000[r10], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1786
	cmp r8, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1788
	cmov 0x0000000B, r8, r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1823
	add 0x00000003, r7
	shr 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1777
	ld.w 0x0000000C[r6], r6
	ld.bu 0x00000010[r26], r10
	mov 0x00000000, r11
	br9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; bb213
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1828
	mov r11, r12
	shl 0x00000002, r12
	movea 0x00000004, r3, r13
	add r12, r13
	mov r10, r14
	shl 0x00000007, r14
	add r6, r14
	add r12, r14
	ld.w 0x00002B0C[r14], r12
	st.w r12, 0x00000000[r13]
	add 0x00000001, r11
.BB.LABEL.13_17:	; bb223
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1824
	cmp r7, r11
	bl9 .BB.LABEL.13_16
.BB.LABEL.13_18:	; bb229
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1833
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	ld.bu 0x00000010[r26], r7
	shl 0x00000002, r7
	add r7, r6
	movea 0x000000FF, r0, r7
	st.w r7, 0x000000F8[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1839
	st.w r5, 0x00000000[r3]
	movea 0x00000004, r3, r7
	mov r26, r6
	jarl _Can_RxIndicationCommonPart.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1841
	add 0x00000001, r27
.BB.LABEL.13_19:	; bb249
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1733
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.bu 0x00000010[r26], r6
	shl 0x00000002, r6
	add r6, r5
	ld.w 0x000000D8[r5], r5
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_20:	; bb249
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	andi 0x000000FF, r27, r5
	andi 0x000000FF, r28, r6
	cmp r6, r5
	bl17 .BB.LABEL.13_13
.BB.LABEL.13_21:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 1843
	dispose 0x00000044, 0x00000385, [r31]
_Can_RxIndicationCommonPart.1:
	.stack _Can_RxIndicationCommonPart.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2216
	prepare 0x00000001, 0x00000014
	ld.w 0x00000018[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2234
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movhi 0x00004000, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2236
	st.w r5, 0x0000000C[r3]
	br9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2241
	st.w r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2242
	cmp 0x00000008, r8
	bnh9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000008, r8
.BB.LABEL.14_4:	; if_break_bb19
	mov 0x9FFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2256
	and r5, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2253
	ld.w 0x0000000C[r3], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2256
	or r9, r5
	st.w r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2284
	ld.h 0x00000008[r6], r5
	st.h r5, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2285
	ld.b 0x00000005[r6], r5
	st.b r5, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2287
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2288
	st.h r8, 0x00000008[r3]
	mov r3, r7
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_MainServ.c", 2291
	jarl32 _CanIf_RxIndication, r31
	dispose 0x00000014, 0x00000001, [r31]
	.section .const, const
_Can_GaaDLCFromPayloadTable:
	.ds (1)
	.db 0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x09,0x09,0x09,0x0A,0x0A,0x0A,0x0A
	.db 0x0B,0x0B,0x0B,0x0B,0x0C,0x0C,0x0C,0x0C,0x0D,0x0D,0x0D,0x0D,0x0D,0x0D,0x0D,0x0D
	.db 0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E,0x0E
	.db 0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F
_Can_GaaPayloadFromDLCTable:
	.ds (1)
	.db 0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x0C,0x10,0x14,0x18,0x20,0x30,0x40
_Can_GaaPayloadFromPLSTable.1:
	.db 0x08,0x0C,0x10,0x14,0x18,0x20,0x30,0x40
