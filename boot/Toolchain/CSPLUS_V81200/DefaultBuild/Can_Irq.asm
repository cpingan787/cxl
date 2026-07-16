#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_Irq.c -oDefaultBuild\Can_Irq.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8664f2a890dd4089b2d83927c8412ae4z24wuj34.235
#@	compiled at Thu Jul 16 13:41:27 2026

	.file "..\..\Bsw\Mcal\can\src\Can_Irq.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaConfig
	.extern _Can_GaaRegs
	.extern _Can_GaaPhysicalUnitToIndex
	.extern _Can_GpConfig
	.extern _Can_GpPCController
	.extern _Can_GaaCtrlState
	.extern _Dem_ReportErrorStatus
	.extern _Can_RxProcessing
	.public _CAN_RSCAN0_RXFIFO_CAT2_ISR
	.extern _Can_TxConfirmationProcessing
	.public _CAN_CONTROLLER0_TX_CAT2_ISR
	.extern _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION
	.extern _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION
	.extern _CanIf_ControllerBusOff
	.public _CAN_CONTROLLER0_BUSOFF_CAT2_ISR

	.section .text, text
_Can_RxGlobalIsr.1:
	.stack _Can_RxGlobalIsr.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 408
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 423
	mov #_Can_GaaPhysicalUnitToIndex, r5
	add r6, r5
	ld.bu 0x00000000[r5], r25
	mov 0x00000000, r5
	mov r5, r7
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 432
	mulhi 0x0000001C, r25, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	mov r5, r10
	shl 0x00000002, r10
	add r10, r8
	ld.w 0x000000B8[r8], r8
	shr 0x00000001, r8
	ld.w 0x00000004[r9], r9
	add r9, r10
	ld.w 0x000000D8[r10], r9
	shr 0x00000003, r9
	and r8, r9
	andi 0x00000001, r9, r8
	or r8, r7
	add 0x00000001, r5
.BB.LABEL.1_2:	; bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 428
	cmp 0x00000008, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 441
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000010[r7], r5
	ld.hu 0x00000000[r5], r5
	andi 0x00001080, r5, r5
	addi 0xFFFFF000, r5, r0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 445
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.1_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 454
	movhi HIGHW1(#_Can_GpConfig), r0, r5
	ld.w LOWW(#_Can_GpConfig)[r5], r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 461
	shl 0x00000005, r6
	add r6, r5
	ld.w 0x0000001C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 462
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000014[r7], r6
	ld.w 0x00000000[r6], r6
	and r5, r6
	cmp r6, r5
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 466
	mulhi 0x0000001C, r25, r6
	mov #_Can_GaaRegs, r7
	add r6, r7
	ld.w 0x00000018[r7], r6
	st.w r5, 0x00000000[r6]
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 0
	movea 0x00000100, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 474
	shl r25, r6
	mov 0x00000000, r8
	mov 0x00000002, r7
	jarl32 _Can_RxProcessing, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 478
	mulhi 0x0000001C, r25, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x0000008C[r5], r7
	st.w r7, 0x0000008C[r5]
	ld.w 0x00000004[r6], r5
	ld.w 0x0000008C[r5], r5
	syncp
	dispose 0x00000000, 0x00000201, [r31]
_CAN_RSCAN0_RXFIFO_CAT2_ISR:
	.stack _CAN_RSCAN0_RXFIFO_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 525
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 536
	jarl _Can_RxGlobalIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_TxIsr.1:
	.stack _Can_TxIsr.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 988
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 999
	movhi HIGHW1(#_Can_GaaConfig+0x00000014), r0, r5
	ld.w LOWW(#_Can_GaaConfig+0x00000014)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1002
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1005
	ld.bu 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1010
	mulhi 0x0000001C, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1005
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1010
	add r5, r25
	ld.bu 0x00000002[r25], r7
	ld.bu 0x00000001[r25], r8
	mulhi 0x0000001C, r8, r8
	mov #_Can_GaaRegs, r9
	add r8, r9
	ld.w 0x00000004[r9], r8
	add r7, r8
	ld.bu 0x00000460[r8], r7
	add 0x00000001, r25
	cmp 0x00000000, r7
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000001C, r6, r7
	add r7, r5
	ld.w 0x00000010[r5], r5
	ld.hu 0x00000000[r5], r5
	andi 0x00001080, r5, r5
	addi 0xFFFFF000, r5, r0
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1017
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1027
	jarl32 _Can_TxConfirmationProcessing, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1030
	ld.bu 0x00000000[r25], r5
	mulhi 0x0000001C, r5, r5
	mov #_Can_GaaRegs, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x0000008C[r5], r7
	st.w r7, 0x0000008C[r5]
	ld.bu 0x00000000[r25], r5
	mulhi 0x0000001C, r5, r5
	add r5, r6
	ld.w 0x00000004[r6], r5
	ld.w 0x0000008C[r5], r5
	syncp
	dispose 0x00000000, 0x00000201, [r31]
_CAN_CONTROLLER0_TX_CAT2_ISR:
	.stack _CAN_CONTROLLER0_TX_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1075
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1086
	jarl _Can_TxIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_BusOffIsr.1:
	.stack _Can_BusOffIsr.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1311
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1325
	movhi HIGHW1(#_Can_GaaConfig+0x00000014), r0, r5
	ld.w LOWW(#_Can_GaaConfig+0x00000014)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1328
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1331
	ld.bu 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1333
	mulhi 0x0000001C, r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1331
	movhi HIGHW1(#_Can_GpPCController), r0, r6
	ld.w LOWW(#_Can_GpPCController)[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1333
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1334
	ld.bu 0x00000002[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1338
	mov r26, r7
	shl 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1333
	ld.bu 0x00000001[r5], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1338
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r8
	add r5, r8
	ld.w 0x00000004[r8], r5
	add r7, r5
	ld.w 0x00000004[r5], r5
	shr 0x00000008, r5
	ld.w 0x00000004[r8], r8
	add r7, r8
	ld.w 0x0000000C[r8], r7
	and r5, r7
	andi 0x000000FF, r7, r0
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000001C, r25, r5
	add r5, r6
	ld.w 0x00000014[r6], r5
	ld.hu 0x00000000[r5], r5
	andi 0x00001080, r5, r5
	addi 0xFFFFF000, r5, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1345
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1353
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r26, r6
	shl 0x00000004, r6
	add r6, r5
	ld.w 0x0000000C[r5], r5
	andi 0x00000008, r5, r0
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_4:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1363
	jarl32 _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1365
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1370
	mulhi 0x00000014, r25, r5
	mov #_Can_GaaCtrlState, r6
	add r5, r6
	mov 0x00000001, r5
	st.b r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1374
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1376
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1387
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1392
	mov r25, r6
	jarl32 _CanIf_ControllerBusOff, r31
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1387
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
.BB.LABEL.5_8:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1404
	mulhi 0x0000001C, r27, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	shl 0x00000004, r26
	add r26, r5
	st.w r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1409
	ld.w 0x00000004[r6], r5
	ld.w 0x0000008C[r5], r7
	st.w r7, 0x0000008C[r5]
	ld.w 0x00000004[r6], r5
	ld.w 0x0000008C[r5], r5
	syncp
	dispose 0x00000000, 0x00000381, [r31]
_CAN_CONTROLLER0_BUSOFF_CAT2_ISR:
	.stack _CAN_CONTROLLER0_BUSOFF_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1450
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Irq.c", 1461
	jarl _Can_BusOffIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
