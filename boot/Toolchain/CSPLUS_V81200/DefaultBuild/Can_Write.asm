#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_Write.c -oDefaultBuild\Can_Write.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_57efbac194a548ad851b6e81f7cd6e8ffevoxrr3.zap
#@	compiled at Thu Jul 16 13:41:37 2026

	.file "..\..\Bsw\Mcal\can\src\Can_Write.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaRegs
	.extern _Can_GblInitialized
	.extern _Can_GaaHwAccessFlag
	.extern _Can_GpPCController
	.extern _Can_GpPBController
	.extern _Can_GpHohConfig
	.extern _Can_GaaCtrlState
	.extern _Can_GaaDLCFromPayloadTable
	.extern _Can_GaaPayloadFromDLCTable
	.public _Can_Write
	.extern _Det_ReportError
	.extern _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION
	.extern _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION

	.section .text, text
_Can_Write:
	.stack _Can_Write = 56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 476
	prepare 0x00000B87, 0x0000001C
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 515
	movhi HIGHW1(#_Can_GblInitialized), r0, r5
	ld.bu LOWW(#_Can_GblInitialized)[r5], r5
	cmp 0x00000000, r5
	mov r7, r25
	mov r6, r26
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	mov 0x00000005, r9
	br9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 525
	cmp 0x00000003, r26
	bh9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r5
	mov r26, r6
	mul 0x00000018, r6, r0
	add r6, r5
	ld.w 0x00000000[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb35
	mov 0x00000002, r9
.BB.LABEL.1_5:	; if_then_bb35
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	jarl32 _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 797
	dispose 0x0000001C, 0x00000B87, [r31]
.BB.LABEL.1_6:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 535
	cmp 0x00000000, r25
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	ld.w 0x00000000[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb55
	mov 0x00000001, r25
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x00000050, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 543
	mov r25, r9
	jarl32 _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 546
	mov r25, r10
	dispose 0x0000001C, 0x00000B87, [r31]
.BB.LABEL.1_9:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 550
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r5
	mov r26, r6
	mul 0x00000018, r6, r0
	add r6, r5
	ld.bu 0x00000006[r5], r5
	ld.bu 0x0000000A[r25], r6
	cmp r5, r6
	bh9 .BB.LABEL.1_13
.BB.LABEL.1_10:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	cmp 0x00000009, r6
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_11:	; bb78
	ld.w 0x00000004[r25], r5
	movhi 0x00004000, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb85
	mov r26, r5
	mul 0x00000018, r5, r0
	movhi HIGHW1(#_Can_GpPBController), r0, r6
	ld.w LOWW(#_Can_GpPBController)[r6], r6
	movhi HIGHW1(#_Can_GpHohConfig), r0, r7
	ld.w LOWW(#_Can_GpHohConfig)[r7], r8
	add r5, r8
	ld.bu 0x00000005[r8], r8
	shl 0x00000003, r8
	add r8, r6
	ld.w 0x00000004[r6], r6
	ld.w LOWW(#_Can_GpHohConfig)[r7], r7
	add r5, r7
	ld.bu 0x00000005[r7], r5
	mulhi 0x00000014, r5, r5
	mov #_Can_GaaCtrlState, r7
	add r5, r7
	ld.w 0x0000000C[r7], r5
	mul 0x00000014, r5, r0
	add r5, r6
	ld.bu 0x00000011[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb135
	mov 0x00000003, r9
	br9 .BB.LABEL.1_5
.BB.LABEL.1_14:	; if_else_bb137
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 584
	movhi HIGHW1(#_Can_GpHohConfig), r0, r5
	ld.w LOWW(#_Can_GpHohConfig)[r5], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 588
	mov r26, r28
	mul 0x00000018, r28, r0
	add r27, r28
	ld.bu 0x00000005[r28], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 593
	jarl32 _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 596
	ld.hu 0x00000008[r28], r5
	add 0x00000008, r28
	mov #_Can_GaaHwAccessFlag, r6
	add r6, r5
	ld.bu 0x00000000[r5], r6
	cmp 0x00000001, r6
	bz17 .BB.LABEL.1_27
.BB.LABEL.1_15:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 599
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 608
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	mov r26, r7
	mul 0x00000018, r7, r0
	add r27, r7
	movea 0x00000004, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 616
	jarl _Can_GetTxRegPointers.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 622
	ld.w 0x00000000[r25], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 621
	ld.bu 0x0000000A[r25], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 656
	addi 0x00000000, r10, r30
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_16:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 659
	ld.w 0x00000004[r25], r5
	mov 0x1FFFFFFF, r7
	and r5, r7
	movhi 0x00008000, r0, r9
	tst r9, r5
	ld.w 0x00000008[r3], r5
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	movhi 0x0000A000, r0, r9
	br9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_else_bb197
	movhi 0x00002000, r0, r9
.BB.LABEL.1_19:	; if_else_bb197
	or r9, r7
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 680
	ld.w 0x00000004[r25], r5
	movhi 0x00004000, r0, r7
	tst r7, r5
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_20:	; if_then_bb213
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 683
	mulhi 0x00000014, r29, r5
	mov #_Can_GaaCtrlState, r7
	add r5, r7
	movhi HIGHW1(#_Can_GpPBController), r0, r5
	ld.w LOWW(#_Can_GpPBController)[r5], r5
	shl 0x00000003, r29
	add r29, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x0000000C[r7], r7
	mul 0x00000014, r7, r0
	add r7, r5
	ld.bu 0x00000010[r5], r5
	cmp 0x00000001, r5
	ld.w 0x00000004[r3], r5
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; if_then_bb232
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	mov 0x00000006, r7
	br9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_else_bb235
	mov 0x00000004, r7
.BB.LABEL.1_23:	; if_else_bb235
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 704
	mov #_Can_GaaDLCFromPayloadTable, r5
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 705
	mov #_Can_GaaPayloadFromDLCTable, r7
	add r5, r7
	ld.bu 0x00000000[r7], r9
	br9 .BB.LABEL.1_25
.BB.LABEL.1_24:	; if_else_bb248
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 723
	ld.w 0x00000004[r3], r5
	st.w r0, 0x00000000[r5]
	mov r8, r9
	mov r8, r5
.BB.LABEL.1_25:	; if_break_bb254
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 753
	ld.h 0x00000008[r25], r7
	shl 0x00000010, r7
	shl 0x0000001C, r5
	or r7, r5
	ld.w 0x0000000C[r3], r7
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 761
	mul 0x00000018, r26, r0
	add r26, r27
	ld.bu 0x00000011[r27], r5
	ld.w 0x00000010[r3], r7
	st.w r5, 0x00000000[r3]
	jarl _Can_WriteDataReg.1, r31
	movea 0x00000004, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 771
	ld.b 0x00000014[r5], r5
	ld.w 0x00000014[r3], r6
	st.b r5, 0x00000000[r6]
.BB.LABEL.1_26:	; if_break_bb279
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 779
	jarl32 _SchM_Enter_Can_CAN_RAM_DATA_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 783
	ld.hu 0x00000000[r28], r5
	mov #_Can_GaaHwAccessFlag, r6
	add r5, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 785
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	mov r30, r10
	dispose 0x0000001C, 0x00000B87, [r31]
.BB.LABEL.1_27:	; if_else_bb285.critedge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 608
	jarl32 _SchM_Exit_Can_CAN_RAM_DATA_PROTECTION, r31
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 611
	dispose 0x0000001C, 0x00000B87, [r31]
_Can_GetTxRegPointers.1:
	.stack _Can_GetTxRegPointers.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 845
	ld.bu 0x00000010[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 860
	movhi HIGHW1(#_Can_GpPCController), r0, r8
	ld.w LOWW(#_Can_GpPCController)[r8], r8
	ld.bu 0x00000005[r7], r9
	mulhi 0x0000001C, r9, r9
	add r9, r8
	ld.bu 0x00000001[r8], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 863
	ld.w 0x0000000C[r7], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	mov 0x00000000, r10
.BB.LABEL.2_2:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1035
	jmp [r31]
.BB.LABEL.2_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 866
	mulhi 0x0000001C, r8, r7
	mov #_Can_GaaRegs, r9
	add r7, r9
	ld.w 0x00000004[r9], r7
	mov r5, r9
	shl 0x00000002, r9
	add r7, r9
	ld.w 0x00000178[r9], r7
	andi 0x00000002, r7, r0
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.2_2
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 876
	mulhi 0x0000001C, r8, r7
	mov #_Can_GaaRegs, r8
	add r7, r8
	ld.w 0x00000004[r8], r7
	mov r5, r9
	shl 0x00000002, r9
	add r7, r9
	movea 0x000001D8, r9, r7
	st.w r7, 0x00000010[r6]
	mov 0xFFFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 879
	st.b r7, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 887
	ld.w 0x0000000C[r8], r7
	shl 0x00000007, r5
	add r5, r7
	movea 0x00002F08, r7, r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 889
	ld.w 0x0000000C[r8], r7
	add r5, r7
	movea 0x00002F00, r7, r7
	st.w r7, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 891
	ld.w 0x0000000C[r8], r7
	add r5, r7
	movea 0x00002F04, r7, r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 894
	ld.w 0x0000000C[r8], r7
	add r5, r7
	movea 0x00002F0C, r7, r5
	st.w r5, 0x0000000C[r6]
	br9 .BB.LABEL.2_1
_Can_WriteDataReg.1:
	.stack _Can_WriteDataReg.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1069
	prepare 0x00000200, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1077
	shr 0x00000002, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1076
	andi 0x00000003, r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1075
	shr 0x00000002, r8
	mov 0x00000000, r10
	ld.w 0x00000004[r3], r11
	mov r10, r12
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1088
	mov r6, r13
	add r12, r13
	ld.bu 0x00000000[r13], r14
	ld.bu 0x00000001[r13], r25
	shl 0x00000008, r25
	or r25, r14
	ld.bu 0x00000002[r13], r25
	shl 0x00000010, r25
	or r25, r14
	ld.b 0x00000003[r13], r13
	shl 0x00000018, r13
	or r13, r14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1096
	mov r10, r13
	shl 0x00000002, r13
	add r7, r13
	st.w r14, 0x00000000[r13]
	add 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1094
	add 0x00000004, r12
.BB.LABEL.3_2:	; bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1084
	cmp r8, r10
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1106
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_4:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	add 0xFFFFFFFF, r5
	add r12, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb59
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_6:	; switch_clause_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1127
	ld.bu 0x00000001[r6], r5
	br9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; switch_clause_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1113
	mov r11, r5
.BB.LABEL.3_8:	; switch_clause_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	ld.bu 0x00000000[r6], r12
	shl 0x00000008, r5
	or r5, r12
	mov r11, r5
	shl 0x00000010, r5
	or r5, r12
	mov r11, r5
	shl 0x00000018, r5
	or r5, r12
	mov r10, r5
	shl 0x00000002, r5
	add r7, r5
	st.w r12, 0x00000000[r5]
	br9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; switch_clause_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1142
	ld.bu 0x00000000[r6], r5
	ld.bu 0x00000001[r6], r8
	shl 0x00000008, r8
	or r8, r5
	ld.bu 0x00000002[r6], r6
	shl 0x00000010, r6
	or r6, r5
	mov r11, r6
	shl 0x00000018, r6
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1147
	mov r10, r6
	shl 0x00000002, r6
	add r7, r6
	st.w r5, 0x00000000[r6]
.BB.LABEL.3_10:	; switch_clause_bb113
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 0
	add 0x00000001, r10
.BB.LABEL.3_11:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1159
	mov r11, r5
	shl 0x00000008, r5
	or r11, r5
	mov r11, r6
	shl 0x00000010, r6
	or r6, r5
	shl 0x00000018, r11
	or r11, r5
	br9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; bb159
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1164
	mov r10, r6
	shl 0x00000002, r6
	add r7, r6
	st.w r5, 0x00000000[r6]
	add 0x00000001, r10
.BB.LABEL.3_13:	; bb166
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1161
	cmp r9, r10
	bl9 .BB.LABEL.3_12
.BB.LABEL.3_14:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_Write.c", 1172
	dispose 0x00000000, 0x00000200, [r31]
