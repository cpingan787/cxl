#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_Irq.c -oDefaultBuild\Can_Irq.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_85ca9bfc71064cafbeb6c09eca6b9bbbx0ctuzxu.z4h
#@	compiled at Fri Mar 27 09:50:38 2026

	.file "..\..\Bsw\Mcal\can\src\Can_Irq.c"

	$reg_mode 32
	.dbl_size 8

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
	.public _CAN_CONTROLLER1_TX_CAT2_ISR
	.extern _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION
	.extern _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION
	.extern _CanIf_ControllerBusOff
	.public _CAN_CONTROLLER1_BUSOFF_CAT2_ISR
	.extern _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.extern _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION
	.extern _Can_WakeupMode
	.extern _EcuM_CheckWakeup
	.public _CAN_CONTROLLER1_WAKEUP_CAT2_ISR

	.section .text, text
_Can_RxGlobalIsr.1:
	.stack _Can_RxGlobalIsr.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 408
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 423
	mov #_Can_GaaPhysicalUnitToIndex, r2
	add r6, r2
	ld.bu 0x00000000[r2], r20
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 432
	mulhi 0x0000001C, r20, r7
	mov #_Can_GaaRegs, r8
	add r7, r8
	ld.w 0x00000004[r8], r7
	mov r2, r9
	shl 0x00000002, r9
	add r9, r7
	ld.w 0x000000B8[r7], r7
	shr 0x00000001, r7
	ld.w 0x00000004[r8], r8
	add r8, r9
	ld.w 0x000000D8[r9], r8
	shr 0x00000003, r8
	and r7, r8
	andi 0x00000001, r8, r7
	or r7, r5
	add 0x00000001, r2
.BB.LABEL.1_2:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 428
	cmp 0x00000008, r2
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 441
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	ld.hu 0x00000000[r2], r2
	andi 0x00001080, r2, r2
	addi 0xFFFFF000, r2, r0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 445
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 454
	movhi HIGHW1(#_Can_GpConfig), r0, r2
	ld.w LOWW(#_Can_GpConfig)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 461
	shl 0x00000005, r6
	add r6, r2
	ld.w 0x0000001C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 462
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000014[r6], r5
	ld.w 0x00000000[r5], r5
	and r2, r5
	cmp r5, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 466
	mulhi 0x0000001C, r20, r5
	mov #_Can_GaaRegs, r6
	add r5, r6
	ld.w 0x00000018[r6], r5
	st.w r2, 0x00000000[r5]
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	movea 0x00000100, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 474
	shl r20, r6
	mov 0x00000000, r8
	mov 0x00000002, r7
	jarl _Can_RxProcessing, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 478
	mulhi 0x0000001C, r20, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r6
	st.w r6, 0x0000008C[r2]
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	syncp
	dispose 0x00000000, 0x00000041, [r31]
_CAN_RSCAN0_RXFIFO_CAT2_ISR:
	.stack _CAN_RSCAN0_RXFIFO_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 525
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 536
	jarl _Can_RxGlobalIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_TxIsr.1:
	.stack _Can_TxIsr.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 988
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 999
	movhi HIGHW1(#_Can_GaaConfig+0x00000014), r0, r2
	ld.w LOWW(#_Can_GaaConfig+0x00000014)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1002
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1005
	ld.bu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1010
	mulhi 0x0000002C, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1005
	movhi HIGHW1(#_Can_GpPCController), r0, r2
	ld.w LOWW(#_Can_GpPCController)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1010
	add r2, r20
	ld.bu 0x00000002[r20], r5
	ld.bu 0x00000001[r20], r7
	mulhi 0x0000001C, r7, r7
	mov #_Can_GaaRegs, r8
	add r7, r8
	ld.w 0x00000004[r8], r7
	add r5, r7
	ld.bu 0x00000460[r7], r5
	add 0x00000001, r20
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000002C, r6, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	ld.hu 0x00000000[r2], r2
	andi 0x00001080, r2, r2
	addi 0xFFFFF000, r2, r0
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1017
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.3_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1027
	jarl _Can_TxConfirmationProcessing, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1030
	ld.bu 0x00000000[r20], r2
	mulhi 0x0000001C, r2, r2
	mov #_Can_GaaRegs, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	ld.w 0x0000008C[r2], r6
	st.w r6, 0x0000008C[r2]
	ld.bu 0x00000000[r20], r2
	mulhi 0x0000001C, r2, r2
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	syncp
	dispose 0x00000000, 0x00000041, [r31]
_CAN_CONTROLLER1_TX_CAT2_ISR:
	.stack _CAN_CONTROLLER1_TX_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1095
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1105
	jarl _Can_TxIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_BusOffIsr.1:
	.stack _Can_BusOffIsr.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1311
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1325
	movhi HIGHW1(#_Can_GaaConfig+0x00000014), r0, r2
	ld.w LOWW(#_Can_GaaConfig+0x00000014)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1328
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1331
	ld.bu 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1333
	mulhi 0x0000002C, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1331
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1333
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1334
	ld.bu 0x00000002[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1338
	mov r21, r6
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1333
	ld.bu 0x00000001[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1338
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r7
	add r2, r7
	ld.w 0x00000004[r7], r2
	add r6, r2
	ld.w 0x00000004[r2], r2
	shr 0x00000008, r2
	ld.w 0x00000004[r7], r7
	add r6, r7
	ld.w 0x0000000C[r7], r6
	and r2, r6
	andi 0x000000FF, r6, r0
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x0000002C, r20, r2
	add r2, r5
	ld.w 0x00000018[r5], r2
	ld.hu 0x00000000[r2], r2
	andi 0x00001080, r2, r2
	addi 0xFFFFF000, r2, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1345
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1353
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	mov r21, r5
	shl 0x00000004, r5
	add r5, r2
	ld.w 0x0000000C[r2], r2
	andi 0x00000008, r2, r0
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_4:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1363
	jarl _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1365
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1370
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1374
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1376
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1387
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1392
	mov r20, r6
	jarl _CanIf_ControllerBusOff, r31
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1387
	jarl _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
.BB.LABEL.5_8:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1404
	mulhi 0x0000001C, r22, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	shl 0x00000004, r21
	add r21, r2
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1409
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r6
	st.w r6, 0x0000008C[r2]
	ld.w 0x00000004[r5], r2
	ld.w 0x0000008C[r2], r2
	syncp
	dispose 0x00000000, 0x00000071, [r31]
_CAN_CONTROLLER1_BUSOFF_CAT2_ISR:
	.stack _CAN_CONTROLLER1_BUSOFF_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1471
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1481
	jarl _Can_BusOffIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Can_WakeupIsr.1:
	.stack _Can_WakeupIsr.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1699
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1710
	movhi HIGHW1(#_Can_GaaConfig+0x00000014), r0, r2
	ld.w LOWW(#_Can_GaaConfig+0x00000014)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1713
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1717
	ld.bu 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1719
	mulhi 0x0000002C, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1717
	movhi HIGHW1(#_Can_GpPCController), r0, r5
	ld.w LOWW(#_Can_GpPCController)[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1719
	add r21, r2
	ld.w 0x0000001C[r2], r5
	cmp 0x00000000, r5
	movea 0x0000001C, r2, r22
	bz9 .BB.LABEL.7_11
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1723
	ld.hu 0x00000000[r5], r2
	andi 0x00000080, r2, r0
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1725
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1734
	jarl _SchM_Enter_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1740
	ld.w 0x00000000[r22], r2
	ld.b 0x00000000[r2], r5
	ori 0x00000080, r5, r5
	st.b r5, 0x00000000[r2]
	ld.w 0x00000000[r22], r2
	ld.b 0x00000000[r2], r2
	syncp
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1747
	mulhi 0x0000002C, r20, r2
	add r21, r2
	ld.w 0x00000024[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1749
	st.b r0, 0x00000000[r2]
.BB.LABEL.7_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1757
	mulhi 0x0000002C, r20, r2
	add r21, r2
	ld.w 0x00000020[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1759
	mulhi 0x0000002C, r20, r5
	add r21, r5
	ld.bu 0x00000002[r5], r5
	mov 0x00000001, r6
	shl r5, r6
	not r6, r5
	ld.h 0x00000000[r2], r6
	and r5, r6
	st.h r6, 0x00000000[r2]
.BB.LABEL.7_7:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1768
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 0
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1774
	mulhi 0x00000014, r20, r2
	mov #_Can_GaaCtrlState, r5
	add r2, r5
	mov 0x00000009, r2
	st.w r2, 0x00000004[r5]
	mov 0x00000001, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1778
	st.b r22, 0x00000009[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1780
	st.b r22, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1789
	jarl _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1796
	mov r20, r6
	jarl _Can_WakeupMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1797
	mulhi 0x0000002C, r20, r2
	add r2, r21
	ld.bu 0x0000000C[r21], r2
	shl r2, r22, r6
	jarl _EcuM_CheckWakeup, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.7_10:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1789
	jarl _SchM_Exit_Can_CAN_INTERRUPT_CONTROL_PROTECTION, r31
.BB.LABEL.7_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1810
	dispose 0x00000000, 0x00000071, [r31]
_CAN_CONTROLLER1_WAKEUP_CAT2_ISR:
	.stack _CAN_CONTROLLER1_WAKEUP_CAT2_ISR = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1867
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_Irq.c", 1877
	jarl _Can_WakeupIsr.1, r31
	dispose 0x00000000, 0x00000001, [r31]
