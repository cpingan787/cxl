#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\port\src\Port.c -oDefaultBuild\Port.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_26b13fbd656542e59e1406e169e4eba4a5j0lyfy.uvs
#@	compiled at Thu Jul 16 13:41:28 2026

	.file "..\..\Bsw\Mcal\port\src\Port.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Port_GaaPortReg_BaseAddress
	.extern _Port_GpJPortReg_BaseAddress
	.extern _Port_GaaAPortReg_BaseAddress
	.extern _Port_GpFclaReg_BaseAddress
	.extern _Port_GpConfigPtr
	.extern _Port_GstRamMirrorPortReg
	.extern _Port_GstRamMirrorJPortReg
	.public _Port_Init
	.extern _Dem_ReportErrorStatus
	.public _Port_SetPinDirection
	.extern _SchM_Enter_Port_PORT_REGISTER_PROTECTION
	.extern _SchM_Exit_Port_PORT_REGISTER_PROTECTION
	.public _Port_RefreshPortDirection
	.public _Port_SetPinMode
	.public _Port_SetToDioMode
	.public _Port_SetToAlternateMode
	.public _Port_SetPinDefaultMode
	.public _Port_SetPinDefaultDirection
	.public _Port_GetVersionInfo
	.public _Port_CheckHWConsistency

	.section .text, text
_Port_Init:
	.stack _Port_Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 861
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 889
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 920
	ld.w 0x00000000[r6], r5
	mov 0x0EDF0220, r7
	cmp r7, r5
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 924
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	st.w r6, LOWW(#_Port_GpConfigPtr)[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 930
	jarl _Port_InitConfig.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 937
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 938
	jarl _Port_InitConfig.1, r31
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 950
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 951
	jarl _Port_InitConfig.1, r31
.BB.LABEL.1_6:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 977
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 983
	st.b r5, 0x00000003[r3]
.BB.LABEL.1_8:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000003, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 986
	ld.b 0x00000000[r5], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 984
	ld.bu 0x00000003[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_9:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 994
	jarl _Port_FilterConfig.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1017
	movhi 0x0000FFF8, r0, r5
	ld.w 0x00000B00[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_10:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1025
	st.b r5, 0x00000003[r3]
.BB.LABEL.1_11:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0x000000A5, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1031
	st23.w r5, 0xFFF80000[r0]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1033
	movhi 0x0000FFF8, r0, r5
	st.w r0, 0x00000B00[r5]
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1034
	st.w r6, 0x00000B00[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1035
	st.w r0, 0x00000B00[r5]
	movea 0x00000003, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1036
	ld.b 0x00000000[r5], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1027
	ld.bu 0x00000003[r3], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld23.w 0xFFF80004[r0], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_13:	; bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1050
	ld23.w 0xFFF80004[r0], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1062
	mov r6, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.1_15:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0xFFFFFF88, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1073
	st.b r5, 0x00000003[r3]
.BB.LABEL.1_16:	; bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000003, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1076
	ld.b 0x00000000[r5], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1074
	ld.bu 0x00000003[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_17:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1120
	dispose 0x00000004, 0x00000001, [r31]
_Port_SetPinDirection:
	.stack _Port_SetPinDirection = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1182
	prepare 0x00000387, 0x00000004
	mov r7, r25
	movea 0x00000040, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1261
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1265
	addi 0x00000000, r10, r26
	bz17 .BB.LABEL.2_24
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1270
	ld.bu 0x00000006[r26], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1272
	ld.bu 0x00000007[r26], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1279
	andi 0x0000000F, r28, r0
	ld.hu 0x00000002[r26], r29
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1290
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1304
	mov r27, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.w 0x00000800[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1297
	mov r29, r7
	shl 0x00000010, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1309
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	and r29, r6
	cmp r29, r6
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1321
	ld.hu 0x00000004[r26], r6
	or r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1324
	ld.w 0x00000000[r5], r8
	st.w r6, 0x00000100[r8]
	movhi 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1334
	and r6, r7
	or r29, r7
	xori 0x0000FFFF, r7, r7
	br9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1350
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1354
	or r29, r7
.BB.LABEL.2_7:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r5], r5
	st.w r7, 0x00000800[r5]
.BB.LABEL.2_8:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1378
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_9:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1390
	andi 0x0000000F, r28, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_10:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1405
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1412
	mov r29, r5
	shl 0x00000010, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1421
	cmp 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1418
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
	ld.w 0x00000080[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1421
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	and r29, r6
	cmp r29, r6
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1428
	ld.hu 0x00000004[r26], r6
	or r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1431
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r7
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	st.w r6, 0x00000010[r8]
	movhi 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1441
	and r6, r5
	or r29, r5
	xori 0x0000FFFF, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1448
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r6
	br9 .BB.LABEL.2_15
.BB.LABEL.2_13:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1455
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_14:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1459
	or r29, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1466
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
.BB.LABEL.2_15:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	st.w r5, 0x00000080[r6]
.BB.LABEL.2_16:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1482
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_17:	; if_break_bb178
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1493
	andi 0x0000000F, r28, r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.2_24
.BB.LABEL.2_18:	; if_then_bb185
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1505
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1517
	shl 0x00000002, r27
	mov #_Port_GaaAPortReg_BaseAddress, r5
	add r5, r27
	ld.w 0x00000000[r27], r5
	ld.w 0x00000800[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1512
	mov r29, r6
	shl 0x00000010, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1520
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_19:	; bb199
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	and r29, r5
	cmp r29, r5
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1528
	ld.hu 0x00000004[r26], r25
	or r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1531
	ld.w 0x00000000[r27], r5
	st.w r25, 0x00000100[r5]
	movhi 0x0000FFFF, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1542
	and r25, r6
	or r6, r29
	xori 0x0000FFFF, r29, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1549
	ld.w 0x00000000[r27], r25
	st.w r6, 0x00000800[r25]
	br9 .BB.LABEL.2_23
.BB.LABEL.2_21:	; if_else_bb243
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1558
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_22:	; if_then_bb248
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1562
	or r29, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1569
	ld.w 0x00000000[r27], r5
	st.w r6, 0x00000800[r5]
.BB.LABEL.2_23:	; if_break_bb262
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1585
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_24:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1613
	dispose 0x00000004, 0x00000387, [r31]
_Port_RefreshPortDirection:
	.stack _Port_RefreshPortDirection = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1661
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1692
	jarl _Port_RefreshPortInternal.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1700
	jarl _Port_RefreshPortInternal.1, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1707
	jarl _Port_RefreshPortInternal.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Port_SetPinMode:
	.stack _Port_SetPinMode = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1774
	prepare 0x00000387, 0x00000004
	mov r7, r25
	movea 0x00000020, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1885
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1890
	cmp 0x00000000, r10
	bz17 .BB.LABEL.4_39
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1906
	ld.bu 0x00000006[r10], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1916
	ld.hu 0x00000002[r10], r27
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r0
	bnz17 .BB.LABEL.4_28
.BB.LABEL.4_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	addi 0x0000000E, r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1928
	cmp 0x00000002, r25
	cmov 0x00000006, r25, r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1942
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	andi 0x00008000, r5, r0
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1958
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1964
	mov r26, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00000500[r6], r6
	andi 0x00000002, r28, r0
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1971
	not r27, r7
	and r7, r6
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 1991
	or r27, r6
.BB.LABEL.4_6:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00000500[r5]
	mov r26, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2007
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_7:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2019
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	andi 0x00004000, r5, r0
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_8:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2035
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2041
	mov r26, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00000600[r6], r6
	andi 0x00000004, r28, r0
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2048
	not r27, r7
	and r7, r6
	br9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2069
	or r27, r6
.BB.LABEL.4_11:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00000600[r5]
	mov r26, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2085
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_12:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2097
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	movhi 0x00000001, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_13:	; if_then_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2113
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2119
	mov r26, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00000A00[r6], r6
	andi 0x00000008, r28, r0
	bnz9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2126
	not r27, r7
	and r7, r6
	br9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; if_else_bb227
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2147
	or r27, r6
.BB.LABEL.4_16:	; if_else_bb227
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00000A00[r5]
	mov r26, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2163
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_17:	; if_break_bb252
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2175
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	andi 0x00000020, r5, r0
	bz9 .BB.LABEL.4_22
.BB.LABEL.4_18:	; if_then_bb265
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2191
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2194
	mov r26, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00004200[r6], r6
	addi 0xFFFFFF7E, r25, r0
	blt9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_then_bb271
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2200
	or r27, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2212
	andi 0x0000001F, r25, r25
	br9 .BB.LABEL.4_21
.BB.LABEL.4_20:	; if_else_bb298
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2219
	not r27, r7
	and r7, r6
.BB.LABEL.4_21:	; if_else_bb298
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00004200[r5]
	mov r26, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2237
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_22:	; if_break_bb325
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2267
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2270
	shl 0x00000002, r26
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r26
	ld.w 0x00000000[r26], r5
	ld.w 0x00000800[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2252
	mov r27, r29
	shl 0x00000010, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2275
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_23:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	tst r27, r5
	bz9 .BB.LABEL.4_25
.BB.LABEL.4_24:	; if_then_bb356
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2282
	ld.bu 0x00000003[r3], r25
	mulhi 0x00000034, r25, r25
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r25, r5
	ld.w 0x00000004[r5], r25
	or r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2291
	ld.w 0x00000000[r26], r25
	st.w r29, 0x00000100[r25]
.BB.LABEL.4_25:	; if_break_bb374
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2307
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2315
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r25
	ld.w LOWW(#_Port_GpConfigPtr)[r25], r25
	ld.w 0x00000004[r25], r25
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	add r5, r25
	ld.w 0x00000000[r25], r25
	movhi 0x00000002, r0, r5
	tst r5, r25
	bz9 .BB.LABEL.4_27
.BB.LABEL.4_26:	; if_then_bb387
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2354
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2322
	and r25, r29
	ori 0x0000FFFF, r0, r25
	andi 0x00000010, r28, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2330
	cmov 0x0000000A, 0x00000000, r25, r25
	xor r27, r25
	or r25, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2357
	ld.w 0x00000000[r26], r25
	st.w r29, 0x00000900[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2368
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_27:	; if_break_bb416
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2412
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2378
	and r25, r29
	ori 0x0000FFFF, r0, r25
	andi 0x00000001, r28, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2385
	cmov 0x0000000A, 0x00000000, r25, r25
	xor r25, r27
	or r27, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2418
	ld.w 0x00000000[r26], r25
	st.w r29, 0x00000800[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2429
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000387, [r31]
.BB.LABEL.4_28:	; if_else_bb444
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2438
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.4_39
.BB.LABEL.4_29:	; if_then_bb453
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2468
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	addi 0x0000000E, r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2451
	cmp 0x00000002, r25
	cmov 0x00000006, r25, r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2475
	andi 0x00000002, r26, r0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.b 0x00000050[r5], r5
	bnz9 .BB.LABEL.4_31
.BB.LABEL.4_30:	; if_then_bb473
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2483
	not r27, r6
	and r6, r5
	br9 .BB.LABEL.4_32
.BB.LABEL.4_31:	; if_else_bb488
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2504
	or r27, r5
.BB.LABEL.4_32:	; if_else_bb488
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
	st.b r5, 0x00000050[r6]
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg), r0, r6
	st.b r5, LOWW(#_Port_GstRamMirrorJPortReg)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2521
	andi 0x00000004, r26, r0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	bnz9 .BB.LABEL.4_34
.BB.LABEL.4_33:	; if_then_bb509
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2528
	not r27, r6
	ld.b 0x00000060[r5], r7
	and r6, r7
	st.b r7, 0x00000060[r5]
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.b 0x00000060[r5], r5
	and r6, r5
	br9 .BB.LABEL.4_35
.BB.LABEL.4_34:	; if_else_bb532
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2545
	ld.b 0x00000060[r5], r6
	or r27, r6
	st.b r6, 0x00000060[r5]
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.b 0x00000060[r5], r5
	or r27, r5
.BB.LABEL.4_35:	; if_break_bb553
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg+0x00000001), r0, r6
	st.b r5, LOWW(#_Port_GstRamMirrorJPortReg+0x00000001)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2560
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2568
	mov r27, r28
	shl 0x00000010, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2577
	cmp 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2572
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	bnz9 .BB.LABEL.4_38
.BB.LABEL.4_36:	; bb570
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	tst r27, r5
	bz9 .BB.LABEL.4_38
.BB.LABEL.4_37:	; if_then_bb583
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2586
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000008[r6], r6
	add r5, r6
	ld.w 0x00000004[r6], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2597
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2586
	or r25, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2604
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.w r28, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2617
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_38:	; if_break_bb598
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2655
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2627
	and r5, r28
	ori 0x0000FFFF, r0, r25
	andi 0x00000010, r26, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2635
	cmov 0x0000000A, 0x00000000, r25, r5
	xor r27, r5
	or r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2660
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r29
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r29], r6
	st.w r5, 0x00000090[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2672
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2714
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2680
	andi 0x00000001, r26, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2688
	cmov 0x0000000A, 0x00000000, r25, r5
	xor r5, r27
	or r27, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2720
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r29], r5
	st.w r28, 0x00000080[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2733
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_39:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2750
	dispose 0x00000004, 0x00000387, [r31]
_Port_SetToDioMode:
	.stack _Port_SetToDioMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2800
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2845
	jarl _Port_SetToDioOrAltMode.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Port_SetToAlternateMode:
	.stack _Port_SetToAlternateMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2902
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 2957
	jarl _Port_SetToDioOrAltMode.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Port_SetToDioOrAltMode.1:
	.stack _Port_SetToDioOrAltMode.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3020
	prepare 0x00000B87, 0x00000004
	mov r7, r25
	movea 0x00000010, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3045
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3047
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_13
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3063
	cmp 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3068
	cmov 0x0000000A, 0x00000000, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3060
	ld.hu 0x00000002[r10], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3068
	xor r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3060
	mov r26, r27
	shl 0x00000010, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3068
	or r5, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3055
	ld.bu 0x00000006[r10], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3085
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r0
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_2:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3092
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r29
	ld.bu 0x00000003[r3], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3099
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3105
	mulhi 0x00000034, r30, r5
	add r29, r5
	ld.w 0x00000000[r5], r6
	movhi 0x00000002, r0, r7
	tst r7, r6
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3109
	mov r28, r6
	shl 0x00000002, r6
	mov #_Port_GaaPortReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	st.w r27, 0x00000900[r6]
.BB.LABEL.7_4:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3126
	ld.w 0x00000000[r5], r27
	andi 0x00000020, r27, r0
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_5:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3129
	mov r28, r27
	shl 0x00000002, r27
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r27
	ld.w 0x00000000[r27], r5
	ld.h 0x00004200[r5], r5
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3131
	not r26, r26
	and r26, r5
	br9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3146
	not r26, r6
	and r6, r5
	mulhi 0x00000034, r30, r6
	add r6, r29
	ld.hu 0x00000022[r29], r6
	and r26, r6
	or r6, r5
.BB.LABEL.7_8:	; if_else_bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r27], r27
	st.h r5, 0x00004200[r27]
	shl 0x00000003, r28
	mov #_Port_GstRamMirrorPortReg, r27
	add r28, r27
	st.h r5, 0x00000006[r27]
.BB.LABEL.7_9:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3171
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000B87, [r31]
.BB.LABEL.7_10:	; if_else_bb144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3181
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3189
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3194
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.w r27, 0x00000090[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3204
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000B87, [r31]
.BB.LABEL.7_12:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3212
	ld.b 0x00000007[r10], r5
.BB.LABEL.7_13:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3279
	dispose 0x00000004, 0x00000B87, [r31]
_Port_InitConfig.1:
	.stack _Port_InitConfig.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3330
	prepare 0x00000B87, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3381
	cmp 0x00000000, r6
	bnz17 .BB.LABEL.8_32
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3385
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3386
	ld.bu 0x00000018[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3385
	st.w r6, 0x00000000[r3]
	ld.w 0x00000004[r5], r25
	mov 0x00000000, r26
	mov r26, r27
	jr .BB.LABEL.8_30
.BB.LABEL.8_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3395
	ld.bu 0x00000030[r25], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3412
	movhi 0x0000FFF8, r0, r5
	ld.w 0x00000B00[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x00000031[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3424
	ld.w 0x00000004[r25], r5
	movhi 0x0000FFFF, r0, r6
	or r6, r5
	mov r28, r6
	shl 0x00000002, r6
	mov #_Port_GaaPortReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	st.w r5, 0x00000100[r6]
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3449
	movhi 0x0000FFF8, r0, r5
	ld.w 0x00000B00[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x00000031[r25], r5
	cmp 0x00000000, r5
	bz17 .BB.LABEL.8_29
.BB.LABEL.8_7:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3464
	ld.w 0x00000014[r25], r5
	andi 0x0000FFFF, r5, r6
	movea 0x00000014, r0, r29
.BB.LABEL.8_8:	; bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3471
	mov r28, r30
	shl 0x00000002, r30
	mov #_Port_GaaPortReg_BaseAddress, r7
	add r7, r30
	ld.w 0x00000000[r30], r7
	movea 0x000000A5, r0, r8
	st.w r8, 0x00004C00[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3477
	ld.w 0x00000000[r30], r7
	st.w r6, 0x00004500[r7]
	movhi 0x0000FFFF, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3483
	or r5, r7
	xori 0x0000FFFF, r7, r7
	ld.w 0x00000000[r30], r8
	st.w r7, 0x00004500[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3489
	ld.w 0x00000000[r30], r7
	st.w r6, 0x00004500[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3465
	ld.w 0x00000000[r30], r7
	ld.w 0x00004B00[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3492
	add 0xFFFFFFFF, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3465
	andi 0x000000FF, r29, r0
	bz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_10:	; bb124
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3511
	ld.w 0x00000000[r30], r5
	ld.w 0x00004B00[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3515
	mov r27, r6
	mov r27, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.8_12:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3533
	ld.w 0x00000000[r25], r5
	andi 0x00000800, r5, r0
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_13:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3539
	ld.w 0x00000018[r25], r5
	andi 0x0000FFFF, r5, r6
.BB.LABEL.8_14:	; bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3548
	ld.w 0x00000000[r30], r7
	movea 0x000000A5, r0, r8
	st.w r8, 0x00004C00[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3555
	ld.w 0x00000000[r30], r7
	st.w r6, 0x00004600[r7]
	movhi 0x0000FFFF, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3561
	or r5, r7
	xori 0x0000FFFF, r7, r7
	ld.w 0x00000000[r30], r8
	st.w r7, 0x00004600[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3567
	ld.w 0x00000000[r30], r7
	st.w r6, 0x00004600[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3570
	add 0xFFFFFFFF, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3541
	andi 0x000000FF, r29, r0
	ld.w 0x00000000[r30], r7
	ld.w 0x00004B00[r7], r7
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_15:	; bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.8_14
.BB.LABEL.8_16:	; bb196
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3590
	ld.w 0x00000000[r30], r5
	ld.w 0x00004B00[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_18
.BB.LABEL.8_17:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3594
	mov r27, r6
	mov r27, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.8_18:	; if_break_bb209
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3611
	ld.h 0x00000024[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004300[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3623
	ld.h 0x00000026[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004400[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3633
	ld.h 0x0000001C[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004700[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3663
	ld.w 0x00000000[r25], r5
	andi 0x00008000, r5, r0
	bz9 .BB.LABEL.8_20
.BB.LABEL.8_19:	; if_then_bb241
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3670
	ld.h 0x0000002C[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00000500[r6]
	mov r28, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r6
	add r5, r6
	ld.h 0x0000002C[r25], r5
	st.h r5, 0x00000000[r6]
.BB.LABEL.8_20:	; if_break_bb258
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3687
	ld.w 0x00000000[r25], r5
	andi 0x00004000, r5, r0
	bz9 .BB.LABEL.8_22
.BB.LABEL.8_21:	; if_then_bb266
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3691
	ld.h 0x0000002A[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00000600[r6]
	mov r28, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r6
	add r5, r6
	ld.h 0x0000002A[r25], r5
	st.h r5, 0x00000002[r6]
.BB.LABEL.8_22:	; if_break_bb283
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3708
	ld.w 0x00000000[r25], r5
	movhi 0x00000001, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.8_24
.BB.LABEL.8_23:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3712
	ld.h 0x0000002E[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00000A00[r6]
	mov r28, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r6
	add r5, r6
	ld.h 0x0000002E[r25], r5
	st.h r5, 0x00000004[r6]
.BB.LABEL.8_24:	; if_break_bb308
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3730
	ld.w 0x00000000[r25], r5
	andi 0x00000020, r5, r0
	bz9 .BB.LABEL.8_26
.BB.LABEL.8_25:	; if_then_bb316
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3739
	ld.h 0x00000022[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004200[r6]
	shl 0x00000003, r28
	mov #_Port_GstRamMirrorPortReg, r5
	add r28, r5
	ld.h 0x00000022[r25], r6
	st.h r6, 0x00000006[r5]
.BB.LABEL.8_26:	; if_break_bb333
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3756
	ld.w 0x00000000[r25], r5
	movhi 0x00000002, r0, r6
	tst r6, r5
	bz9 .BB.LABEL.8_28
.BB.LABEL.8_27:	; if_then_bb341
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3763
	ld.w 0x00000010[r25], r5
	movhi 0x0000FFFF, r0, r6
	or r6, r5
	ld.w 0x00000000[r30], r6
	st.w r5, 0x00000900[r6]
.BB.LABEL.8_28:	; if_break_bb352
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3781
	ld.h 0x00000020[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3791
	ld.h 0x00000028[r25], r5
	ld.w 0x00000000[r30], r6
	st.h r5, 0x00004100[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3800
	ld.w 0x00000008[r25], r5
	movhi 0x0000FFFF, r0, r6
	or r6, r5
	ld.w 0x00000000[r30], r6
	st.w r5, 0x00000800[r6]
.BB.LABEL.8_29:	; if_break_bb378
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3809
	movea 0x00000034, r25, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3807
	add 0x00000001, r26
.BB.LABEL.8_30:	; bb383
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3389
	andi 0x000000FF, r26, r5
	ld.w 0x00000000[r3], r6
	cmp r6, r5
	bnc9 .BB.LABEL.8_39
.BB.LABEL.8_31:	; bb383
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	andi 0x000000FF, r27, r0
	bz17 .BB.LABEL.8_2
	br9 .BB.LABEL.8_39
.BB.LABEL.8_32:	; if_else_bb404
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3819
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.8_52
.BB.LABEL.8_33:	; if_then_bb421
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3823
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r27
	ld.w LOWW(#_Port_GpConfigPtr)[r27], r27
	ld.w 0x00000008[r27], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3841
	movhi 0x0000FFF8, r0, r5
	ld.w 0x00000B00[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.8_35
.BB.LABEL.8_34:	; bb429
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x0000002B[r27], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_36
.BB.LABEL.8_35:	; if_else_bb445
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3855
	ld.w 0x00000004[r27], r5
	movhi 0x0000FFFF, r0, r6
	or r6, r5
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
	st.w r5, 0x00000010[r6]
.BB.LABEL.8_36:	; if_break_bb452
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3878
	movhi 0x0000FFF8, r0, r5
	ld.w 0x00000B00[r5], r5
	andi 0x00000001, r5, r0
	bz9 .BB.LABEL.8_40
.BB.LABEL.8_37:	; bb457
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x0000002B[r27], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.8_40
.BB.LABEL.8_38:	; bb457.if_break_bb757_crit_edge
	mov 0x00000000, r27
.BB.LABEL.8_39:	; if_break_bb757
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4277
	andi 0x000000FF, r27, r10
	dispose 0x00000004, 0x00000B87, [r31]
.BB.LABEL.8_40:	; if_else_bb473
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3893
	ld.w 0x0000000C[r27], r5
	andi 0x0000FFFF, r5, r6
	movea 0x00000014, r0, r25
.BB.LABEL.8_41:	; bb478
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3902
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r7
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	movea 0x000000A5, r0, r9
	st.w r9, 0x000004C0[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3908
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	st.w r6, 0x00000450[r8]
	movhi 0x0000FFFF, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3914
	or r5, r8
	xori 0x0000FFFF, r8, r8
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r9
	st.w r8, 0x00000450[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3920
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	st.w r6, 0x00000450[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3923
	add 0xFFFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3895
	andi 0x000000FF, r25, r0
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r7
	ld.w 0x000004B0[r7], r7
	bz9 .BB.LABEL.8_43
.BB.LABEL.8_42:	; bb478
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.8_41
.BB.LABEL.8_43:	; bb510
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3945
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x000004B0[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.8_45
.BB.LABEL.8_44:	; bb510.if_break_bb519_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.8_46
.BB.LABEL.8_45:	; if_then_bb517
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3949
	mov r26, r6
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.8_46:	; if_break_bb519
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3963
	ld.w 0x00000018[r27], r5
	andi 0x0000FFFF, r5, r6
.BB.LABEL.8_47:	; bb524
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3972
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r7
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	movea 0x000000A5, r0, r9
	st.w r9, 0x000004C0[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3978
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	st.w r6, 0x00000460[r8]
	movhi 0x0000FFFF, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3985
	or r5, r8
	xori 0x0000FFFF, r8, r8
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r9
	st.w r8, 0x00000460[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3991
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r8
	st.w r6, 0x00000460[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3994
	add 0xFFFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 3965
	andi 0x000000FF, r25, r0
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r7], r7
	ld.w 0x000004B0[r7], r7
	bz9 .BB.LABEL.8_49
.BB.LABEL.8_48:	; bb524
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.8_47
.BB.LABEL.8_49:	; bb556
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4016
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x000004B0[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.8_51
.BB.LABEL.8_50:	; if_then_bb563
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4020
	mov r26, r6
	mov r26, r7
	jarl32 _Dem_ReportErrorStatus, r31
.BB.LABEL.8_51:	; if_break_bb565
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4037
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x0000001C[r27], r7
	st.b r7, 0x00000430[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4046
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000024[r27], r7
	st.b r7, 0x00000440[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4055
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000020[r27], r7
	st.b r7, 0x00000470[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4064
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000028[r27], r7
	st.b r7, 0x000004A0[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4073
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000022[r27], r7
	st.b r7, 0x00000050[r6]
	ld.b 0x00000022[r27], r6
	mov #_Port_GstRamMirrorJPortReg, r7
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4085
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000026[r27], r8
	st.b r8, 0x00000060[r6]
	ld.b 0x00000026[r27], r6
	st.b r6, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4096
	ld.w 0x00000010[r27], r6
	movhi 0x0000FFFF, r0, r7
	or r7, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r8
	st.w r6, 0x00000090[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4107
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x00000014[r27], r8
	st.b r8, 0x00000400[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4117
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r6
	ld.b 0x0000001E[r27], r8
	st.b r8, 0x00000410[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4128
	ld.w 0x00000008[r27], r27
	or r7, r27
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.w r27, 0x00000080[r5]
	mov r26, r10
	dispose 0x00000004, 0x00000B87, [r31]
.BB.LABEL.8_52:	; if_else_bb635
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4141
	cmp 0x00000002, r6
	bnz17 .BB.LABEL.8_38
.BB.LABEL.8_53:	; if_then_bb640
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4143
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r27
	ld.w LOWW(#_Port_GpConfigPtr)[r27], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4145
	ld.bu 0x0000001A[r27], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4143
	ld.w 0x0000000C[r27], r27
	mov 0x00000000, r6
	br9 .BB.LABEL.8_60
.BB.LABEL.8_54:	; bb655
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x00000011[r27], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.8_56
.BB.LABEL.8_55:	; if_else_bb671
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4178
	ld.w 0x00000008[r27], r8
	movhi 0x0000FFFF, r0, r9
	or r9, r8
	mov r7, r9
	shl 0x00000002, r9
	mov #_Port_GaaAPortReg_BaseAddress, r10
	add r10, r9
	ld.w 0x00000000[r9], r9
	st.w r8, 0x00000100[r9]
.BB.LABEL.8_56:	; if_break_bb681
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4201
	movhi 0x0000FFF8, r0, r8
	ld.w 0x00000B00[r8], r8
	andi 0x00000001, r8, r0
	bz9 .BB.LABEL.8_58
.BB.LABEL.8_57:	; bb686
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.bu 0x00000011[r27], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.8_59
.BB.LABEL.8_58:	; if_else_bb702
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4213
	shl 0x00000002, r7
	mov #_Port_GaaAPortReg_BaseAddress, r8
	add r8, r7
	ld.w 0x00000000[r7], r8
	ld.h 0x0000000C[r27], r9
	st.h r9, 0x00004000[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4224
	ld.w 0x00000000[r7], r8
	ld.h 0x0000000E[r27], r9
	st.h r9, 0x00004100[r8]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4235
	ld.w 0x00000004[r27], r8
	movhi 0x0000FFFF, r0, r9
	or r9, r8
	ld.w 0x00000000[r7], r7
	st.w r8, 0x00000800[r7]
.BB.LABEL.8_59:	; if_break_bb728
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4245
	movea 0x00000014, r27, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4243
	add 0x00000001, r6
.BB.LABEL.8_60:	; bb733
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4146
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bnc17 .BB.LABEL.8_38
.BB.LABEL.8_61:	; bb740
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4149
	ld.bu 0x00000010[r27], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4166
	movhi 0x0000FFF8, r0, r8
	ld.w 0x00000B00[r8], r8
	andi 0x00000001, r8, r0
	bnz9 .BB.LABEL.8_54
	br9 .BB.LABEL.8_55
_Port_SearchChangeablePinDetail.1:
	.stack _Port_SearchChangeablePinDetail.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4331
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4355
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000010[r5], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4363
	ld.bu 0x0000001B[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4361
	ld.h 0x00000000[r9], r10
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4363
	st.b r10, 0x00000000[r7]
	mov 0x00000000, r11
	movea 0x000000FF, r0, r12
	mov r11, r10
.BB.LABEL.9_1:	; bb55.outer.outer
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov r5, r13
.BB.LABEL.9_2:	; bb55
	mov r13, r5
	mov r11, r13
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4366
	andi 0x000000FF, r13, r11
	andi 0x000000FF, r5, r14
	cmp r14, r11
	bnc9 .BB.LABEL.9_7
.BB.LABEL.9_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4371
	ld.hu 0x00000000[r9], r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4375
	cmp r11, r6
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4378
	ld.bu 0x00000007[r9], r5
	and r8, r5
	mov r13, r11
	cmp r8, r5
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4388
	ld.bu 0x00000006[r9], r12
	mov 0x00000000, r5
	mov r9, r10
	br9 .BB.LABEL.9_1
.BB.LABEL.9_6:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4403
	add 0x00000008, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4401
	addi 0x00000001, r13, r11
	br9 .BB.LABEL.9_1
.BB.LABEL.9_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4408
	andi 0x000000FF, r12, r5
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.9_21
.BB.LABEL.9_8:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4416
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r0
	bnz9 .BB.LABEL.9_14
.BB.LABEL.9_9:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4419
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4420
	ld.bu 0x00000018[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4419
	ld.w 0x00000004[r5], r5
	mov 0x00000000, r8
	br9 .BB.LABEL.9_13
.BB.LABEL.9_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4433
	andi 0x000000FF, r12, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4428
	ld.bu 0x00000030[r5], r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4433
	cmp r11, r9
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4438
	st.b r8, 0x00000000[r7]
	mov 0x00000000, r6
	br9 .BB.LABEL.9_13
.BB.LABEL.9_12:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4453
	movea 0x00000034, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4451
	add 0x00000001, r8
.BB.LABEL.9_13:	; bb107
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4422
	andi 0x000000FF, r8, r9
	andi 0x0000FFFF, r6, r11
	cmp r11, r9
	blt9 .BB.LABEL.9_10
	br9 .BB.LABEL.9_21
.BB.LABEL.9_14:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4468
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.9_20
.BB.LABEL.9_15:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4472
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4474
	ld.bu 0x0000001A[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4472
	ld.w 0x0000000C[r5], r5
	mov 0x00000000, r8
	br9 .BB.LABEL.9_19
.BB.LABEL.9_16:	; bb132
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4486
	andi 0x000000FF, r12, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4481
	ld.bu 0x00000010[r5], r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4486
	cmp r11, r9
	bnz9 .BB.LABEL.9_18
.BB.LABEL.9_17:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4492
	st.b r8, 0x00000000[r7]
	mov 0x00000000, r6
	br9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_else_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4505
	movea 0x00000014, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4503
	add 0x00000001, r8
.BB.LABEL.9_19:	; bb153
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4475
	andi 0x000000FF, r8, r9
	andi 0x000000FF, r6, r11
	cmp r11, r9
	bl9 .BB.LABEL.9_16
	br9 .BB.LABEL.9_21
.BB.LABEL.9_20:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4518
	st.b r0, 0x00000000[r7]
.BB.LABEL.9_21:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4529
	jmp [r31]
_Port_RefreshPortInternal.1:
	.stack _Port_RefreshPortInternal.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4584
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4620
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4626
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4627
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4626
	ld.bu 0x00000018[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4635
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4650
	ld.bu 0x00000030[r25], r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x0000000C[r25], r6
	st.w r6, 0x00000800[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4664
	add 0xFFFFFFFF, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4662
	movea 0x00000034, r25, r25
.BB.LABEL.10_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4639
	andi 0x0000FFFF, r26, r0
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4669
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.10_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4677
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.10_10
.BB.LABEL.10_6:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4680
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4681
	ld.w 0x00000008[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4684
	ld.bu 0x00000019[r5], r26
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4696
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x00000000[r25], r6
	st.w r6, 0x00000080[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4710
	add 0xFFFFFFFF, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4708
	movea 0x0000002C, r25, r25
.BB.LABEL.10_8:	; bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4687
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_9:	; bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4716
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.10_10:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4724
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.10_15
.BB.LABEL.10_11:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4727
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4728
	ld.w 0x0000000C[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4730
	ld.bu 0x0000001A[r5], r26
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.10_13
.BB.LABEL.10_12:	; bb79
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4745
	ld.bu 0x00000010[r25], r5
	shl 0x00000002, r5
	mov #_Port_GaaAPortReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r25], r6
	st.w r6, 0x00000800[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4760
	add 0xFFFFFFFF, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4758
	movea 0x00000014, r25, r25
.BB.LABEL.10_13:	; bb95
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4733
	andi 0x000000FF, r26, r0
	bnz9 .BB.LABEL.10_12
.BB.LABEL.10_14:	; bb101
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4766
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.10_15:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4772
	dispose 0x00000000, 0x00000301, [r31]
_Port_FilterConfig.1:
	.stack _Port_FilterConfig.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4913
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4917
	ld.bu 0x0000001C[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4913
	ld.w 0x00000014[r5], r5
	br9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4923
	movhi HIGHW1(#_Port_GpFclaReg_BaseAddress), r0, r7
	ld.w LOWW(#_Port_GpFclaReg_BaseAddress)[r7], r7
	ld.hu 0x00000000[r5], r8
	add r8, r7
	ld.b 0x00000002[r5], r8
	st.b r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4934
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4930
	add 0x00000004, r5
.BB.LABEL.11_2:	; bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4918
	andi 0x000000FF, r6, r0
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4938
	jmp [r31]
_Port_SetPinDefaultMode:
	.stack _Port_SetPinDefaultMode = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 4998
	prepare 0x00000387, 0x00000004
	movea 0x00000020, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5102
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5106
	cmp 0x00000000, r10
	bz17 .BB.LABEL.12_19
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5113
	ld.bu 0x00000006[r10], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5121
	ld.hu 0x00000002[r10], r26
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r0
	bnz17 .BB.LABEL.12_15
.BB.LABEL.12_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5127
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r6
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.w 0x00000004[r7], r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	movhi 0x00000002, r0, r8
	tst r8, r6
	bz17 .BB.LABEL.12_19
.BB.LABEL.12_3:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5136
	ld.w 0x00000004[r7], r6
	mulhi 0x00000034, r5, r8
	add r8, r6
	ld.w 0x00000010[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5147
	tst r26, r6
	bz17 .BB.LABEL.12_10
.BB.LABEL.12_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5152
	ld.w 0x00000004[r7], r6
	mulhi 0x00000034, r5, r8
	add r8, r6
	ld.w 0x00000000[r6], r6
	andi 0x00004000, r6, r0
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5165
	mov r25, r27
	shl 0x00000002, r27
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r27
	ld.w 0x00000000[r27], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5157
	ld.w 0x00000004[r7], r7
	mulhi 0x00000034, r5, r5
	add r5, r7
	ld.hu 0x0000002A[r7], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5165
	ld.h 0x00000600[r6], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5178
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5165
	not r26, r5
	and r5, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5157
	and r26, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5165
	or r28, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5181
	ld.w 0x00000000[r27], r5
	st.h r29, 0x00000600[r5]
	mov r25, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r6
	add r5, r6
	st.h r29, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5194
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.12_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5207
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r6
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.w 0x00000004[r7], r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	andi 0x00008000, r6, r0
	bz9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5212
	ld.w 0x00000004[r7], r6
	mulhi 0x00000034, r5, r5
	add r5, r6
	ld.hu 0x0000002C[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5224
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5231
	mov r25, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00000500[r6], r6
	not r26, r7
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5212
	and r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5231
	or r27, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5236
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00000500[r5]
	mov r25, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5248
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.12_8:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5258
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r6
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.w 0x00000004[r7], r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	movhi 0x00000001, r0, r8
	tst r8, r6
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_9:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5263
	ld.w 0x00000004[r7], r6
	mulhi 0x00000034, r5, r5
	add r5, r6
	ld.hu 0x0000002E[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5276
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5283
	mov r25, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00000A00[r6], r6
	not r26, r7
	and r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5263
	and r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5283
	or r27, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5288
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00000A00[r5]
	mov r25, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5300
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.12_10:	; if_break_bb224
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5318
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r6
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.w 0x00000004[r7], r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	andi 0x00000020, r6, r0
	bnz9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; if_break_bb224.if_break_bb280_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r27
	br9 .BB.LABEL.12_13
.BB.LABEL.12_12:	; if_then_bb237
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5324
	ld.w 0x00000004[r7], r27
	mulhi 0x00000034, r5, r5
	add r5, r27
	ld.hu 0x00000022[r27], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5338
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5324
	and r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5345
	mov r25, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.h 0x00004200[r6], r6
	not r26, r7
	and r7, r6
	or r27, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5349
	ld.w 0x00000000[r5], r5
	st.h r6, 0x00004200[r5]
	mov r25, r5
	shl 0x00000003, r5
	mov #_Port_GstRamMirrorPortReg, r7
	add r5, r7
	st.h r6, 0x00000006[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5361
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	cmp 0x00000000, r27
	setf 0x00000002, r27
.BB.LABEL.12_13:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5382
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000010[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5394
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5382
	and r26, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5374
	mov r26, r5
	shl 0x00000010, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5382
	or r28, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5401
	shl 0x00000002, r25
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r25
	ld.w 0x00000000[r25], r6
	st.w r5, 0x00000900[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5413
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5421
	xori 0x00000001, r27, r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.12_19
.BB.LABEL.12_14:	; if_then_bb308
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5438
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	ld.w 0x00000008[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5451
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5438
	and r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5429
	shl 0x00000010, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5438
	or r27, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5458
	ld.w 0x00000000[r25], r5
	st.w r26, 0x00000800[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5470
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000387, [r31]
.BB.LABEL.12_15:	; if_else_bb335
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5489
	ld.bu 0x00000007[r10], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.12_19
.BB.LABEL.12_16:	; if_then_bb344
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5496
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r6
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.w 0x00000008[r7], r8
	add r6, r8
	ld.w 0x00000010[r8], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5507
	tst r26, r6
	bz9 .BB.LABEL.12_18
.BB.LABEL.12_17:	; if_then_bb362
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5511
	ld.w 0x00000008[r7], r6
	mulhi 0x0000002C, r5, r5
	add r5, r6
	ld.hu 0x00000026[r6], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5524
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5511
	and r26, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5534
	not r26, r27
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r28
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r28], r5
	ld.b 0x00000060[r5], r5
	and r27, r5
	zxb r5
	or r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5539
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r28], r6
	st.b r5, 0x00000060[r6]
	mov #_Port_GstRamMirrorJPortReg, r25
	st.b r5, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5555
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5559
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	ld.bu 0x00000003[r3], r6
	mulhi 0x0000002C, r6, r6
	add r6, r5
	ld.hu 0x00000022[r5], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5572
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5559
	and r26, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5581
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r28], r5
	ld.b 0x00000050[r5], r5
	and r27, r5
	zxb r5
	or r29, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5586
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r28], r6
	st.b r5, 0x00000050[r6]
	st.b r5, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5601
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.12_18:	; if_break_bb428
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5621
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r25
	ld.w LOWW(#_Port_GpConfigPtr)[r25], r6
	ld.w 0x00000008[r6], r6
	add r5, r6
	ld.w 0x00000010[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5635
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5621
	and r26, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5613
	mov r26, r28
	shl 0x00000010, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5621
	or r28, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5642
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r29
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r29], r5
	st.w r27, 0x00000090[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5653
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5669
	ld.w LOWW(#_Port_GpConfigPtr)[r25], r5
	ld.w 0x00000008[r5], r5
	ld.bu 0x00000003[r3], r6
	mulhi 0x0000002C, r6, r6
	add r6, r5
	ld.w 0x00000008[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5682
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5669
	and r26, r25
	or r25, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5689
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r29], r5
	st.w r28, 0x00000080[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5700
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.12_19:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5730
	dispose 0x00000004, 0x00000387, [r31]
_Port_SetPinDefaultDirection:
	.stack _Port_SetPinDefaultDirection = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5787
	prepare 0x00000385, 0x00000004
	movea 0x00000040, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5858
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5862
	addi 0x00000000, r10, r25
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5867
	ld.bu 0x00000006[r25], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5869
	ld.hu 0x00000002[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5885
	ld.b 0x00000006[r25], r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5878
	mov r27, r28
	shl 0x00000010, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5889
	ld.bu 0x00000007[r25], r5
	andi 0x0000000F, r5, r0
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5900
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5908
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	ld.bu 0x00000003[r3], r6
	mulhi 0x00000034, r6, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	and r27, r5
	or r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5916
	mov r26, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	st.w r28, 0x00000800[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5927
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5938
	ld.bu 0x00000007[r25], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5950
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5958
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	ld.bu 0x00000003[r3], r6
	mulhi 0x0000002C, r6, r6
	add r6, r5
	ld.w 0x00000008[r5], r5
	and r27, r5
	or r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5966
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.w r28, 0x00000080[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5977
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.13_5:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5988
	ld.bu 0x00000007[r25], r5
	andi 0x0000000F, r5, r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 5999
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6008
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x0000000C[r5], r5
	ld.bu 0x00000003[r3], r6
	mulhi 0x00000014, r6, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	and r27, r5
	or r5, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6018
	shl 0x00000002, r26
	mov #_Port_GaaAPortReg_BaseAddress, r5
	add r5, r26
	ld.w 0x00000000[r26], r5
	st.w r28, 0x00000800[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6030
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.13_7:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6059
	dispose 0x00000004, 0x00000385, [r31]
_Port_GetVersionInfo:
	.stack _Port_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6108
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6112
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movea 0x0000003B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6125
	st.h r5, 0x00000000[r6]
	movea 0x0000007C, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6127
	st.h r5, 0x00000002[r6]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6129
	st.b r5, 0x00000005[r6]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6131
	st.b r5, 0x00000006[r6]
	movea 0x00000013, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6133
	st.b r5, 0x00000007[r6]
.BB.LABEL.14_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6135
	jmp [r31]
_Port_CheckHWConsistency:
	.stack _Port_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6190
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6270
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6239
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6245
	ld.w 0x00000008[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6242
	ld.w 0x0000000C[r5], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6239
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6270
	bnz17 .BB.LABEL.15_30
.BB.LABEL.15_1:	; entry.bb164_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r10
	mov r10, r6
	br9 .BB.LABEL.15_13
.BB.LABEL.15_2:	; bb169
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r9
	ld.w LOWW(#_Port_GpConfigPtr)[r9], r9
	ld.bu 0x00000018[r9], r9
	andi 0x000000FF, r6, r11
	cmp r9, r11
	bnc9 .BB.LABEL.15_14
.BB.LABEL.15_3:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6279
	ld.bu 0x00000030[r5], r9
	shl 0x00000002, r9
	mov #_Port_GaaPortReg_BaseAddress, r11
	add r9, r11
	ld.w 0x00000000[r11], r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6280
	ld.hu 0x00004300[r9], r11
	ld.hu 0x00000024[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_4:	; bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.hu 0x00004400[r9], r11
	ld.hu 0x00000026[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_5:	; bb56
	ld.hu 0x00004700[r9], r11
	ld.hu 0x0000001C[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_6:	; bb74
	ld.hu 0x00004000[r9], r11
	ld.hu 0x00000020[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_7:	; bb92
	ld.w 0x00004500[r9], r11
	ld.hu 0x00000014[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_8:	; bb109
	ld.w 0x00000000[r5], r11
	andi 0x00000800, r11, r0
	bz9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; bb116
	ld.w 0x00004600[r9], r11
	ld.hu 0x00000018[r5], r12
	cmp r12, r11
	bnz9 .BB.LABEL.15_11
.BB.LABEL.15_10:	; bb140
	ld.hu 0x00004100[r9], r9
	ld.hu 0x00000028[r5], r11
	cmp r11, r9
	bz9 .BB.LABEL.15_12
.BB.LABEL.15_11:	; if_then_bb159
	mov 0x00000001, r10
.BB.LABEL.15_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6305
	add 0x00000001, r6
	movea 0x00000034, r5, r5
.BB.LABEL.15_13:	; bb164
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6274
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_14:	; bb164.bb231_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.15_19
.BB.LABEL.15_15:	; bb187
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6317
	ld.bu 0x00000010[r8], r6
	shl 0x00000002, r6
	mov #_Port_GaaAPortReg_BaseAddress, r9
	add r6, r9
	ld.w 0x00000000[r9], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6318
	ld.hu 0x00004000[r6], r9
	ld.hu 0x0000000C[r8], r11
	cmp r11, r9
	bnz9 .BB.LABEL.15_17
.BB.LABEL.15_16:	; bb205
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	ld.hu 0x00004100[r6], r6
	ld.hu 0x0000000E[r8], r9
	cmp r9, r6
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_17:	; if_then_bb224
	mov 0x00000001, r10
.BB.LABEL.15_18:	; if_break_bb226
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6329
	add 0x00000001, r5
	movea 0x00000014, r8, r8
.BB.LABEL.15_19:	; bb231
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6311
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.15_21
.BB.LABEL.15_20:	; bb236
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.bu 0x0000001A[r6], r6
	andi 0x000000FF, r5, r9
	cmp r6, r9
	bl9 .BB.LABEL.15_15
.BB.LABEL.15_21:	; bb253
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6336
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000430[r5], r5
	ld.bu 0x0000001C[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_22:	; bb265
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000440[r5], r5
	ld.bu 0x00000024[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_23:	; bb284
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000470[r5], r5
	ld.bu 0x00000020[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_24:	; bb303
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x000004A0[r5], r5
	ld.bu 0x00000028[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_25:	; bb322
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000400[r5], r5
	ld.bu 0x00000014[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_26:	; bb341
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x00000450[r5], r5
	ld.hu 0x0000000C[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_27:	; bb358
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x00000460[r5], r5
	ld.hu 0x00000018[r7], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_29
.BB.LABEL.15_28:	; bb375
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000410[r5], r5
	ld.bu 0x0000001E[r7], r6
	cmp r6, r5
	bz9 .BB.LABEL.15_32
.BB.LABEL.15_29:	; if_then_bb395
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6354
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_30:	; if_else_bb398
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6415
	cmp 0x00000001, r6
	bz9 .BB.LABEL.15_33
.BB.LABEL.15_31:	; if_else_bb398.if_break_bb599_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r10
.BB.LABEL.15_32:	; if_break_bb599
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6512
	zxb r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_33:	; if_then_bb403
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6422
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6425
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	mov 0x00000000, r25
	mov r25, r6
	br9 .BB.LABEL.15_44
.BB.LABEL.15_34:	; bb407
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6430
	ld.bu 0x00000030[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6431
	mov r7, r8
	shl 0x00000002, r8
	mov #_Port_GaaPortReg_BaseAddress, r9
	add r8, r9
	ld.w 0x00000000[r9], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6434
	ld.w 0x00000000[r5], r9
	andi 0x00000020, r9, r0
	bz9 .BB.LABEL.15_36
.BB.LABEL.15_35:	; bb424
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	mov r7, r9
	shl 0x00000003, r9
	mov #_Port_GstRamMirrorPortReg, r10
	add r9, r10
	ld.hu 0x00004200[r8], r9
	ld.hu 0x00000006[r10], r10
	cmp r10, r9
	bnz9 .BB.LABEL.15_42
.BB.LABEL.15_36:	; bb442
	ld.w 0x00000000[r5], r9
	andi 0x00004000, r9, r0
	bz9 .BB.LABEL.15_38
.BB.LABEL.15_37:	; bb449
	mov r7, r9
	shl 0x00000003, r9
	mov #_Port_GstRamMirrorPortReg, r10
	add r9, r10
	ld.hu 0x00000600[r8], r9
	ld.hu 0x00000002[r10], r10
	cmp r10, r9
	bnz9 .BB.LABEL.15_42
.BB.LABEL.15_38:	; bb474
	ld.w 0x00000000[r5], r9
	andi 0x00008000, r9, r0
	bz9 .BB.LABEL.15_40
.BB.LABEL.15_39:	; bb481
	mov r7, r9
	shl 0x00000003, r9
	mov #_Port_GstRamMirrorPortReg, r10
	add r9, r10
	ld.hu 0x00000500[r8], r9
	ld.hu 0x00000000[r10], r10
	cmp r10, r9
	bnz9 .BB.LABEL.15_42
.BB.LABEL.15_40:	; bb506
	ld.w 0x00000000[r5], r9
	movhi 0x00000001, r0, r10
	tst r10, r9
	bz9 .BB.LABEL.15_43
.BB.LABEL.15_41:	; bb513
	shl 0x00000003, r7
	mov #_Port_GstRamMirrorPortReg, r9
	add r7, r9
	ld.hu 0x00000A00[r8], r7
	ld.hu 0x00000004[r9], r8
	cmp r8, r7
	bz9 .BB.LABEL.15_43
.BB.LABEL.15_42:	; if_then_bb539
	mov 0x00000001, r25
.BB.LABEL.15_43:	; if_break_bb541
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6455
	add 0x00000001, r6
	movea 0x00000034, r5, r5
.BB.LABEL.15_44:	; bb546
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6427
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.15_46
.BB.LABEL.15_45:	; bb551
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r7
	ld.w LOWW(#_Port_GpConfigPtr)[r7], r7
	ld.bu 0x00000018[r7], r7
	andi 0x000000FF, r6, r8
	cmp r7, r8
	bl9 .BB.LABEL.15_34
.BB.LABEL.15_46:	; bb568
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6462
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6471
	jarl32 _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6475
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000060[r5], r5
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg+0x00000001), r0, r6
	ld.bu LOWW(#_Port_GstRamMirrorJPortReg+0x00000001)[r6], r6
	cmp r6, r5
	bnz9 .BB.LABEL.15_48
.BB.LABEL.15_47:	; bb577
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.bu 0x00000050[r5], r5
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg), r0, r6
	ld.bu LOWW(#_Port_GstRamMirrorJPortReg)[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.15_49
.BB.LABEL.15_48:	; if_then_bb594
	mov 0x00000001, r25
.BB.LABEL.15_49:	; if_break_bb596
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/port/src/Port.c", 6490
	jarl32 _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000201, [r31]
