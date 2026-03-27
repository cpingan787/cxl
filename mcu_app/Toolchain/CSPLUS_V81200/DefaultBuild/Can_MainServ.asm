#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_MainServ.c -oDefaultBuild\Can_MainServ.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_3b49423088024f56bd5533db1a527ac13pwcimyh.afc
#@	compiled at Fri Mar 27 09:50:40 2026

	.file "..\..\Bsw\Mcal\can\src\Can_MainServ.c"

	$reg_mode 32
	.dbl_size 8

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
	.extern _Can_SleepMode
	.extern _Can_WakeupMode
	.public _Can_CommonDetCheck
	.public _Can_TxConfirmationProcessing
	.public _Can_RxProcessing
	.extern _Dem_ReportErrorStatus
	.extern _CanIf_TxConfirmation
	.extern _CanIf_RxIndication

	.section .text, text
_Can_MainFunction_Write:
	.stack _Can_MainFunction_Write = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 565
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 569
	jarl _Can_MainFunction_Write_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Write_0:
	.stack _Can_MainFunction_Write_0 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 573
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 576
	jarl _Can_MainFunction_Write_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read:
	.stack _Can_MainFunction_Read = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 671
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 675
	jarl _Can_MainFunction_Read_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read_0:
	.stack _Can_MainFunction_Read_0 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 679
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 682
	jarl _Can_MainFunction_Read_Common.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_BusOff:
	.stack _Can_MainFunction_BusOff = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 777
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 789
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 793
	jarl _Det_ReportError, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 875
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Wakeup:
	.stack _Can_MainFunction_Wakeup = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 910
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 922
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x0000000A, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 927
	jarl _Det_ReportError, r31
.BB.LABEL.6_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1020
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Mode:
	.stack _Can_MainFunction_Mode = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1055
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1062
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb37_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.7_10
.BB.LABEL.7_2:	; if_then_bb
	mov 0x00000005, r9
	mov 0x0000000C, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1067
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1080
	andi 0x000000FF, r20, r2
	mul 0x00000014, r2, r0
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	add 0xFFFFFFFE, r2
	cmp 0x0000000B, r2
	bh9 .BB.LABEL.7_9
.BB.LABEL.7_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	andi 0x000000FF, r20, r6
	mov 0x0000000C, r7
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.7_12[r2]
.SWITCH.LABEL.7_12:
	br9 .BB.LABEL.7_5
	br9 .BB.LABEL.7_5
	br9 .BB.LABEL.7_6
	br9 .BB.LABEL.7_6
	br9 .BB.LABEL.7_7
	br9 .BB.LABEL.7_7
	br9 .BB.LABEL.7_7
	br9 .BB.LABEL.7_8
	br9 .BB.LABEL.7_8
	br9 .BB.LABEL.7_8
	br9 .BB.LABEL.7_8
	br9 .BB.LABEL.7_8
.SWITCH.LABEL.7_12.END:
.BB.LABEL.7_5:	; switch_clause_bb12
	jarl _Can_StartMode, r31
	br9 .BB.LABEL.7_9
.BB.LABEL.7_6:	; switch_clause_bb16
	jarl _Can_StopMode, r31
	br9 .BB.LABEL.7_9
.BB.LABEL.7_7:	; switch_clause_bb22
	jarl _Can_SleepMode, r31
	br9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; switch_clause_bb32
	jarl _Can_WakeupMode, r31
.BB.LABEL.7_9:	; switch_break_bb
	add 0x00000001, r20
.BB.LABEL.7_10:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1076
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1126
	dispose 0x00000000, 0x00000041, [r31]
_Can_CommonDetCheck:
	.stack _Can_CommonDetCheck = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1171
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1178
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	cmp 0x00000000, r2
	mov r6, r8
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
.BB.LABEL.8_2:	; if_then_bb
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1206
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1190
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r2
	mulhi 0x0000002C, r7, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb29
	mov 0x00000004, r9
	br9 .BB.LABEL.8_2
.BB.LABEL.8_6:	; if_break_bb33
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1206
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Write_Common.1:
	.stack _Can_MainFunction_Write_Common.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1238
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1251
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000001, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1256
	jarl _Det_ReportError, r31
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1296
	dispose 0x00000000, 0x00000001, [r31]
_Can_MainFunction_Read_Common.1:
	.stack _Can_MainFunction_Read_Common.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1328
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1335
	movhi HIGHW1(#_Can_GblInitialized), r0, r2
	ld.bu LOWW(#_Can_GblInitialized)[r2], r2
	mov 0x00000000, r7
	cmp 0x00000000, r2
	mov r6, r8
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000005, r9
	mov 0x00000008, r8
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1340
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movea 0x00000FFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1348
	jarl _Can_RxProcessing, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_TxConfirmationProcessing:
	.stack _Can_TxConfirmationProcessing = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1386
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1415
	mulhi 0x0000002C, r6, r2
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r7
	add r2, r7
	ld.bu 0x00000001[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1418
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	add r2, r5
	ld.bu 0x00000002[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1432
	mov r21, r2
	shl 0x00000002, r2
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x0000000C[r7], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1447
	ld.w 0x00000004[r7], r7
	add r7, r2
	ld.w 0x00000420[r2], r2
	andi 0x00000004, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1432
	movea 0x00005B00, r5, r22
	mov r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1447
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1450
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1458
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	mov r21, r5
	shl 0x00000002, r5
	add r2, r5
	mov 0xFFFFFFFB, r2
	st.w r2, 0x00000420[r5]
	mov 0x00000000, r24
	br9 .BB.LABEL.11_14
.BB.LABEL.11_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1467
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r25
	add r2, r25
	ld.w 0x00000004[r25], r2
	mov r21, r26
	shl 0x00000002, r26
	add r26, r2
	movea 0x00001F07, r0, r5
	st.w r5, 0x00000420[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1468
	ld.w 0x00000000[r22], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1474
	andi 0x0000FFFF, r27, r6
	shr 0x00000008, r6
	jarl _CanIf_TxConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1477
	ld.w 0x00000004[r25], r2
	add r2, r26
	movea 0x000000FF, r0, r2
	st.w r2, 0x00000440[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1485
	andi 0x00000007, r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1482
	shr 0x00000003, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1488
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.11_13
.BB.LABEL.11_4:	; bb.bb156_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.11_11
.BB.LABEL.11_5:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1496
	movhi HIGHW1(#_Can_GpHohConfig), r0, r6
	ld.w LOWW(#_Can_GpHohConfig)[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1498
	mov r2, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.w 0x00000000[r7], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_6:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov r2, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.bu 0x00000005[r7], r7
	cmp r7, r23
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_7:	; bb117
	mov r2, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.w 0x0000000C[r7], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_8:	; bb130
	mov r2, r7
	mul 0x00000018, r7, r0
	add r6, r7
	ld.w 0x00000014[r7], r7
	shr 0x00000014, r7
	xor r27, r7
	andi 0x0000000F, r7, r0
	bnz9 .BB.LABEL.11_10
.BB.LABEL.11_9:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1503
	mov r2, r5
	mul 0x00000018, r5, r0
	add r5, r6
	ld.bu 0x00000010[r6], r5
.BB.LABEL.11_10:	; if_break_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	add 0x00000001, r2
.BB.LABEL.11_11:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1492
	cmp 0x00000004, r2
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_12:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1511
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r6
	add r2, r6
	ld.w 0x00000004[r6], r2
	shl 0x00000002, r5
	add r5, r2
	ori 0x0000FF0F, r0, r5
	st.w r5, 0x00000178[r2]
.BB.LABEL.11_13:	; if_break_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1533
	add 0x00000001, r24
.BB.LABEL.11_14:	; bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1463
	andi 0x000000FF, r24, r2
	cmp 0x0000000F, r2
	bgt9 .BB.LABEL.11_16
.BB.LABEL.11_15:	; bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	mov r21, r5
	shl 0x00000002, r5
	add r2, r5
	ld.w 0x00000420[r5], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1535
	dispose 0x00000000, 0x000007F9, [r31]
_Can_RxProcessing:
	.stack _Can_RxProcessing = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1576
	prepare 0x00000071, 0x00000000
	mov 0x00000000, r20
	mov r7, r21
	mov r6, r22
	br9 .BB.LABEL.12_7
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1593
	movhi HIGHW1(#_Can_GpHohConfig), r0, r2
	ld.w LOWW(#_Can_GpHohConfig)[r2], r2
	mov r20, r6
	mul 0x00000018, r6, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1596
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1599
	ld.w 0x00000000[r6], r7
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1596
	ld.bu 0x00000005[r6], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1599
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_2:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mulhi 0x0000002C, r7, r8
	add r5, r8
	ld.b 0x00000003[r8], r8
	xor r21, r8
	andi 0x00000002, r8, r0
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1612
	mulhi 0x0000002C, r7, r7
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1613
	mov r20, r7
	mul 0x00000018, r7, r0
	add r7, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000003, r2
	ld.bu 0x00000001[r5], r7
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movea 0x00000100, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1617
	shl r7, r2
	tst r22, r2
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1620
	jarl _Can_RxIndicationRxFIFO.1, r31
.BB.LABEL.12_6:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	add 0x00000001, r20
.BB.LABEL.12_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1589
	cmp 0x00000004, r20
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1668
	dispose 0x00000000, 0x00000071, [r31]
_Can_RxIndicationRxFIFO.1:
	.stack _Can_RxIndicationRxFIFO.1 = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1702
	prepare 0x00000079, 0x00000044
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1723
	mulhi 0x0000001C, r7, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.bu 0x00000010[r6], r5
	shl 0x00000002, r5
	add r5, r2
	ori 0x0000FF07, r0, r5
	st.w r5, 0x000000D8[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1728
	ld.w 0x00000014[r6], r2
	shr 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1730
	andi 0x00000007, r2, r2
	mov 0x00000000, r22
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.bb249_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000004, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_2:	; bb35
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; bb35.bb249_crit_edge
	mov 0x00000008, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_4:	; bb41
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; bb41.bb249_crit_edge
	movea 0x00000010, r0, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_6:	; bb47
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; bb47.bb249_crit_edge
	movea 0x00000020, r0, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_8:	; bb53
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.13_10
.BB.LABEL.13_9:	; bb53.bb249_crit_edge
	movea 0x00000030, r0, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_10:	; bb59
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; bb59.bb249_crit_edge
	movea 0x00000040, r0, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_12:	; bb65
	cmp 0x00000007, r2
	setf 0x00000002, r23
	shl 0x00000007, r23
	jr .BB.LABEL.13_19
.BB.LABEL.13_13:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1739
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.bu 0x00000010[r21], r5
	mov r5, r6
	shl 0x00000002, r6
	add r2, r6
	ld.w 0x000000D8[r6], r2
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.13_15
.BB.LABEL.13_14:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1744
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r6
	add r2, r6
	ld.w 0x00000004[r6], r2
	shl 0x00000002, r5
	add r2, r5
	ori 0x0000FF0B, r0, r2
	st.w r2, 0x000000D8[r5]
	mov 0x00000007, r9
	movea 0x00000010, r0, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1749
	jarl _Det_ReportError, r31
.BB.LABEL.13_15:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1771
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000010[r21], r6
	shl 0x00000007, r6
	add r6, r2
	ld.w 0x00002B08[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1773
	ld.w 0x0000000C[r5], r6
	ld.bu 0x00000010[r21], r7
	shl 0x00000007, r7
	add r7, r6
	ld.w 0x00002B00[r6], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1775
	ld.w 0x0000000C[r5], r6
	ld.bu 0x00000010[r21], r7
	shl 0x00000007, r7
	add r7, r6
	ld.w 0x00002B04[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1781
	shr 0x0000001C, r6
	mov #_Can_GaaPayloadFromDLCTable, r7
	add r6, r7
	ld.bu 0x00000000[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1784
	ld.w 0x00000014[r21], r6
	shr 0x00000004, r6
	andi 0x00000007, r6, r6
	mov #_Can_GaaPayloadFromPLSTable.1, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1786
	cmp r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1788
	cmov 0x0000000B, r8, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1823
	add 0x00000003, r6
	shr 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1777
	ld.w 0x0000000C[r5], r5
	ld.bu 0x00000010[r21], r7
	mov 0x00000000, r10
	br9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1828
	mov r10, r11
	shl 0x00000002, r11
	movea 0x00000004, r3, r12
	add r11, r12
	mov r7, r13
	shl 0x00000007, r13
	add r5, r13
	add r11, r13
	ld.w 0x00002B0C[r13], r11
	st.w r11, 0x00000000[r12]
	add 0x00000001, r10
.BB.LABEL.13_17:	; bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1824
	cmp r6, r10
	bl9 .BB.LABEL.13_16
.BB.LABEL.13_18:	; bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1833
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.bu 0x00000010[r21], r6
	shl 0x00000002, r6
	add r6, r5
	movea 0x000000FF, r0, r6
	st.w r6, 0x000000F8[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1839
	st.w r2, 0x00000000[r3]
	movea 0x00000004, r3, r7
	mov r21, r6
	jarl _Can_RxIndicationCommonPart.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1841
	add 0x00000001, r22
.BB.LABEL.13_19:	; bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1733
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.bu 0x00000010[r21], r5
	shl 0x00000002, r5
	add r5, r2
	ld.w 0x000000D8[r2], r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.13_21
.BB.LABEL.13_20:	; bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	andi 0x000000FF, r22, r2
	andi 0x000000FF, r23, r5
	cmp r5, r2
	bl17 .BB.LABEL.13_13
.BB.LABEL.13_21:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 1843
	dispose 0x00000044, 0x00000079, [r31]
_Can_RxIndicationCommonPart.1:
	.stack _Can_RxIndicationCommonPart.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2216
	prepare 0x00000001, 0x00000014
	ld.w 0x00000018[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2234
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	movhi 0x00004000, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2236
	st.w r2, 0x0000000C[r3]
	br9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2241
	st.w r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2242
	cmp 0x00000008, r8
	bnh9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 0
	mov 0x00000008, r8
.BB.LABEL.14_4:	; if_break_bb19
	mov 0x9FFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2256
	and r2, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2253
	ld.w 0x0000000C[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2256
	or r9, r2
	st.w r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2284
	ld.h 0x00000008[r6], r2
	st.h r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2285
	ld.b 0x00000005[r6], r2
	st.b r2, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2287
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2288
	st.h r8, 0x00000008[r3]
	mov r3, r7
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_MainServ.c", 2291
	jarl _CanIf_RxIndication, r31
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
