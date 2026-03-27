#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\port\src\Port.c -oDefaultBuild\Port.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_9b12a8d2a1e94f3b9e6dc3f7805f9e42wqmajx5e.siu
#@	compiled at Fri Mar 27 09:49:59 2026

	.file "..\..\Bsw\Mcal\port\src\Port.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Port_GaaPortReg_BaseAddress
	.extern _Port_GpJPortReg_BaseAddress
	.extern _Port_GpIPortReg_BaseAddress
	.extern _Port_GaaAPortReg_BaseAddress
	.extern _Port_GaaDnfaReg_BaseAddress
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
	.public _Port_SetPinDefaultMode
	.public _Port_SetPinDefaultDirection
	.public _Port_GetVersionInfo
	.public _Port_CheckHWConsistency

	.section .text, text
_Port_Init:
	.stack _Port_Init = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 861
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 889
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 920
	ld.w 0x00000000[r6], r2
	mov 0x0EDF0220, r5
	cmp r5, r2
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_2:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 924
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	st.w r6, LOWW(#_Port_GpConfigPtr)[r2]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 930
	jarl _Port_InitConfig.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 937
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 938
	jarl _Port_InitConfig.1, r31
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 950
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 951
	jarl _Port_InitConfig.1, r31
.BB.LABEL.1_6:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 963
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 964
	jarl _Port_InitConfig.1, r31
.BB.LABEL.1_8:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 977
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 983
	st.b r2, 0x00000003[r3]
.BB.LABEL.1_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 986
	ld.b 0x00000000[r2], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 984
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_11:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 994
	jarl _Port_FilterConfig.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1017
	movhi 0x0000FFF8, r0, r2
	ld.w 0x00000B00[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_12:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1025
	st.b r2, 0x00000003[r3]
.BB.LABEL.1_13:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0x000000A5, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1031
	st23.w r2, 0xFFF80000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1033
	movhi 0x0000FFF8, r0, r2
	st.w r0, 0x00000B00[r2]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1034
	st.w r5, 0x00000B00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1035
	st.w r0, 0x00000B00[r2]
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1036
	ld.b 0x00000000[r2], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1027
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld23.w 0xFFF80004[r0], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_15:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1050
	ld23.w 0xFFF80004[r0], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1062
	mov r6, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.1_17:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0xFFFFFF88, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1073
	st.b r2, 0x00000003[r3]
.BB.LABEL.1_18:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1076
	ld.b 0x00000000[r2], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1074
	ld.bu 0x00000003[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1120
	dispose 0x00000004, 0x00000001, [r31]
_Port_SetPinDirection:
	.stack _Port_SetPinDirection = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1182
	prepare 0x00000479, 0x00000004
	mov r7, r20
	movea 0x00000040, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1261
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1265
	addi 0x00000000, r10, r21
	bz17 .BB.LABEL.2_24
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1270
	ld.bu 0x00000006[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1272
	ld.bu 0x00000007[r21], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1279
	andi 0x0000000F, r23, r0
	ld.hu 0x00000002[r21], r24
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1290
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1304
	mov r22, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.w 0x00000800[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1297
	mov r24, r6
	shl 0x00000010, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1309
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	and r24, r5
	cmp r24, r5
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1321
	ld.hu 0x00000004[r21], r5
	or r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1324
	ld.w 0x00000000[r2], r7
	st.w r5, 0x00000100[r7]
	movhi 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1334
	and r5, r6
	or r24, r6
	xori 0x0000FFFF, r6, r6
	br9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1350
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1354
	or r24, r6
.BB.LABEL.2_7:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r2], r2
	st.w r6, 0x00000800[r2]
.BB.LABEL.2_8:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1378
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_9:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1390
	andi 0x0000000F, r23, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_17
.BB.LABEL.2_10:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1405
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1412
	mov r24, r2
	shl 0x00000010, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1421
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1418
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	ld.w 0x00000080[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1421
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	and r24, r5
	cmp r24, r5
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1428
	ld.hu 0x00000004[r21], r5
	or r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1431
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	st.w r5, 0x00000010[r7]
	movhi 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1441
	and r5, r2
	or r24, r2
	xori 0x0000FFFF, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1448
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r5
	br9 .BB.LABEL.2_15
.BB.LABEL.2_13:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1455
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_14:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1459
	or r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1466
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
.BB.LABEL.2_15:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	st.w r2, 0x00000080[r5]
.BB.LABEL.2_16:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1482
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_17:	; if_break_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1493
	andi 0x0000000F, r23, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.2_24
.BB.LABEL.2_18:	; if_then_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1505
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1517
	shl 0x00000002, r22
	mov #_Port_GaaAPortReg_BaseAddress, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	ld.w 0x00000800[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1512
	mov r24, r5
	shl 0x00000010, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1520
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_19:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	and r24, r2
	cmp r24, r2
	bnz9 .BB.LABEL.2_21
.BB.LABEL.2_20:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1528
	ld.hu 0x00000004[r21], r20
	or r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1531
	ld.w 0x00000000[r22], r2
	st.w r20, 0x00000100[r2]
	movhi 0x0000FFFF, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1542
	and r20, r5
	or r5, r24
	xori 0x0000FFFF, r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1549
	ld.w 0x00000000[r22], r20
	st.w r5, 0x00000800[r20]
	br9 .BB.LABEL.2_23
.BB.LABEL.2_21:	; if_else_bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1558
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_22:	; if_then_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1562
	or r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1569
	ld.w 0x00000000[r22], r2
	st.w r5, 0x00000800[r2]
.BB.LABEL.2_23:	; if_break_bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1585
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.2_24:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1613
	dispose 0x00000004, 0x00000479, [r31]
_Port_RefreshPortDirection:
	.stack _Port_RefreshPortDirection = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1661
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1692
	jarl _Port_RefreshPortInternal.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1700
	jarl _Port_RefreshPortInternal.1, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1707
	jarl _Port_RefreshPortInternal.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Port_SetPinMode:
	.stack _Port_SetPinMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1774
	prepare 0x00000479, 0x00000004
	mov r7, r20
	movea 0x00000020, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1885
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1890
	cmp 0x00000000, r10
	bz17 .BB.LABEL.4_39
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1906
	ld.bu 0x00000006[r10], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1916
	ld.hu 0x00000002[r10], r22
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r0
	bnz17 .BB.LABEL.4_28
.BB.LABEL.4_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	addi 0x0000000E, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1928
	cmp 0x00000002, r20
	cmov 0x00000006, r20, r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1942
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x00008000, r2, r0
	bz9 .BB.LABEL.4_7
.BB.LABEL.4_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1958
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1964
	mov r21, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00000500[r5], r5
	andi 0x00000002, r23, r0
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1971
	not r22, r6
	and r6, r5
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 1991
	or r22, r5
.BB.LABEL.4_6:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00000500[r2]
	mov r21, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2007
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_7:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2019
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x00004000, r2, r0
	bz9 .BB.LABEL.4_12
.BB.LABEL.4_8:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2035
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2041
	mov r21, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00000600[r5], r5
	andi 0x00000004, r23, r0
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2048
	not r22, r6
	and r6, r5
	br9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2069
	or r22, r5
.BB.LABEL.4_11:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00000600[r2]
	mov r21, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2085
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_12:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2097
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	movhi 0x00000001, r0, r5
	tst r5, r2
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_13:	; if_then_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2113
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2119
	mov r21, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00000A00[r5], r5
	andi 0x00000008, r23, r0
	bnz9 .BB.LABEL.4_15
.BB.LABEL.4_14:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2126
	not r22, r6
	and r6, r5
	br9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; if_else_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2147
	or r22, r5
.BB.LABEL.4_16:	; if_else_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00000A00[r2]
	mov r21, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2163
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_17:	; if_break_bb252
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2175
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	andi 0x00000020, r2, r0
	bz9 .BB.LABEL.4_22
.BB.LABEL.4_18:	; if_then_bb265
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2191
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2194
	mov r21, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00004200[r5], r5
	addi 0xFFFFFF7E, r20, r0
	blt9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_then_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2200
	or r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2212
	andi 0x0000001F, r20, r20
	br9 .BB.LABEL.4_21
.BB.LABEL.4_20:	; if_else_bb298
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2219
	not r22, r6
	and r6, r5
.BB.LABEL.4_21:	; if_else_bb298
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00004200[r2]
	mov r21, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2237
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_22:	; if_break_bb325
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2267
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2270
	shl 0x00000002, r21
	mov #_Port_GaaPortReg_BaseAddress, r2
	add r2, r21
	ld.w 0x00000000[r21], r2
	ld.w 0x00000800[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2252
	mov r22, r24
	shl 0x00000010, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2275
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.4_25
.BB.LABEL.4_23:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst r22, r2
	bz9 .BB.LABEL.4_25
.BB.LABEL.4_24:	; if_then_bb356
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2282
	ld.bu 0x00000003[r3], r20
	mulhi 0x00000034, r20, r20
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	add r20, r2
	ld.w 0x00000004[r2], r20
	or r20, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2291
	ld.w 0x00000000[r21], r20
	st.w r24, 0x00000100[r20]
.BB.LABEL.4_25:	; if_break_bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2307
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2315
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r20
	ld.w LOWW(#_Port_GpConfigPtr)[r20], r20
	ld.w 0x00000004[r20], r20
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	add r2, r20
	ld.w 0x00000000[r20], r20
	movhi 0x00000002, r0, r2
	tst r2, r20
	bz9 .BB.LABEL.4_27
.BB.LABEL.4_26:	; if_then_bb387
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2354
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2322
	and r20, r24
	ori 0x0000FFFF, r0, r20
	andi 0x00000010, r23, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2330
	cmov 0x0000000A, 0x00000000, r20, r20
	xor r22, r20
	or r20, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2357
	ld.w 0x00000000[r21], r20
	st.w r24, 0x00000900[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2368
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_27:	; if_break_bb416
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2412
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2378
	and r20, r24
	ori 0x0000FFFF, r0, r20
	andi 0x00000001, r23, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2385
	cmov 0x0000000A, 0x00000000, r20, r20
	xor r20, r22
	or r22, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2418
	ld.w 0x00000000[r21], r20
	st.w r24, 0x00000800[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2429
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.4_28:	; if_else_bb444
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2438
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.4_39
.BB.LABEL.4_29:	; if_then_bb453
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2468
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	addi 0x0000000E, r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2451
	cmp 0x00000002, r20
	cmov 0x00000006, r20, r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2475
	andi 0x00000002, r21, r0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.b 0x00000050[r2], r2
	bnz9 .BB.LABEL.4_31
.BB.LABEL.4_30:	; if_then_bb473
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2483
	not r22, r5
	and r5, r2
	br9 .BB.LABEL.4_32
.BB.LABEL.4_31:	; if_else_bb488
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2504
	or r22, r2
.BB.LABEL.4_32:	; if_else_bb488
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.b r2, 0x00000050[r5]
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg), r0, r5
	st.b r2, LOWW(#_Port_GstRamMirrorJPortReg)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2521
	andi 0x00000004, r21, r0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	bnz9 .BB.LABEL.4_34
.BB.LABEL.4_33:	; if_then_bb509
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2528
	not r22, r5
	ld.b 0x00000060[r2], r6
	and r5, r6
	st.b r6, 0x00000060[r2]
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.b 0x00000060[r2], r2
	and r5, r2
	br9 .BB.LABEL.4_35
.BB.LABEL.4_34:	; if_else_bb532
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2545
	ld.b 0x00000060[r2], r5
	or r22, r5
	st.b r5, 0x00000060[r2]
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.b 0x00000060[r2], r2
	or r22, r2
.BB.LABEL.4_35:	; if_break_bb553
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg+0x00000001), r0, r5
	st.b r2, LOWW(#_Port_GstRamMirrorJPortReg+0x00000001)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2560
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2568
	mov r22, r23
	shl 0x00000010, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2577
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2572
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x00000080[r2], r2
	bnz9 .BB.LABEL.4_38
.BB.LABEL.4_36:	; bb570
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst r22, r2
	bz9 .BB.LABEL.4_38
.BB.LABEL.4_37:	; if_then_bb583
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2586
	ld.bu 0x00000003[r3], r2
	mulhi 0x0000002C, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	add r2, r5
	ld.w 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2597
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2586
	or r20, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2604
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	st.w r23, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2617
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_38:	; if_break_bb598
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2655
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	movhi 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2627
	and r2, r23
	ori 0x0000FFFF, r0, r20
	andi 0x00000010, r21, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2635
	cmov 0x0000000A, 0x00000000, r20, r2
	xor r22, r2
	or r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2660
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r24
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r24], r5
	st.w r2, 0x00000090[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2672
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2714
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2680
	andi 0x00000001, r21, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2688
	cmov 0x0000000A, 0x00000000, r20, r2
	xor r2, r22
	or r22, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2720
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r24], r2
	st.w r23, 0x00000080[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2733
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.4_39:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 2750
	dispose 0x00000004, 0x00000479, [r31]
_Port_InitConfig.1:
	.stack _Port_InitConfig.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3330
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3381
	cmp 0x00000000, r6
	bnz17 .BB.LABEL.5_32
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3385
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3386
	ld.bu 0x0000001C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3385
	ld.w 0x00000004[r2], r21
	mov 0x00000000, r22
	mov r22, r23
	jr .BB.LABEL.5_30
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3395
	ld.bu 0x00000030[r21], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3402
	movhi 0x0000FFF8, r0, r2
	ld.w 0x00000B00[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000004, 0x00000031[r21]
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3424
	ld.w 0x00000004[r21], r2
	movhi 0x0000FFFF, r0, r5
	or r5, r2
	mov r24, r5
	shl 0x00000002, r5
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	st.w r2, 0x00000100[r5]
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3439
	movhi 0x0000FFF8, r0, r2
	ld.w 0x00000B00[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000000, 0x00000031[r21]
	bz17 .BB.LABEL.5_29
.BB.LABEL.5_7:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3464
	ld.w 0x00000014[r21], r2
	andi 0x0000FFFF, r2, r5
	movea 0x00000014, r0, r25
.BB.LABEL.5_8:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3471
	mov r24, r26
	shl 0x00000002, r26
	mov #_Port_GaaPortReg_BaseAddress, r6
	add r6, r26
	ld.w 0x00000000[r26], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00004C00[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3477
	ld.w 0x00000000[r26], r6
	st.w r5, 0x00004500[r6]
	movhi 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3483
	or r2, r6
	xori 0x0000FFFF, r6, r6
	ld.w 0x00000000[r26], r7
	st.w r6, 0x00004500[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3489
	ld.w 0x00000000[r26], r6
	st.w r5, 0x00004500[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3465
	ld.w 0x00000000[r26], r6
	ld.w 0x00004B00[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3492
	add 0xFFFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3465
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r6
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_10:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3511
	ld.w 0x00000000[r26], r2
	ld.w 0x00004B00[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3515
	mov r23, r6
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.5_12:	; if_break_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3533
	ld.w 0x00000000[r21], r2
	andi 0x00000800, r2, r0
	bz9 .BB.LABEL.5_18
.BB.LABEL.5_13:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3539
	ld.w 0x00000018[r21], r2
	andi 0x0000FFFF, r2, r5
.BB.LABEL.5_14:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3548
	ld.w 0x00000000[r26], r6
	movea 0x000000A5, r0, r7
	st.w r7, 0x00004C00[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3555
	ld.w 0x00000000[r26], r6
	st.w r5, 0x00004600[r6]
	movhi 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3561
	or r2, r6
	xori 0x0000FFFF, r6, r6
	ld.w 0x00000000[r26], r7
	st.w r6, 0x00004600[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3567
	ld.w 0x00000000[r26], r6
	st.w r5, 0x00004600[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3570
	add 0xFFFFFFFF, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3541
	andi 0x000000FF, r25, r0
	ld.w 0x00000000[r26], r6
	ld.w 0x00004B00[r6], r6
	bz9 .BB.LABEL.5_16
.BB.LABEL.5_15:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r6
	bz9 .BB.LABEL.5_14
.BB.LABEL.5_16:	; bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3590
	ld.w 0x00000000[r26], r2
	ld.w 0x00004B00[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_18
.BB.LABEL.5_17:	; if_then_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3594
	mov r23, r6
	mov r23, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.5_18:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3611
	ld.h 0x00000024[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004300[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3623
	ld.h 0x00000026[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004400[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3633
	ld.h 0x0000001C[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004700[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3663
	ld.w 0x00000000[r21], r2
	andi 0x00008000, r2, r0
	bz9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_then_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3670
	ld.h 0x0000002C[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00000500[r5]
	mov r24, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r5
	add r2, r5
	ld.h 0x0000002C[r21], r2
	st.h r2, 0x00000000[r5]
.BB.LABEL.5_20:	; if_break_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3687
	ld.w 0x00000000[r21], r2
	andi 0x00004000, r2, r0
	bz9 .BB.LABEL.5_22
.BB.LABEL.5_21:	; if_then_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3691
	ld.h 0x0000002A[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00000600[r5]
	mov r24, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r5
	add r2, r5
	ld.h 0x0000002A[r21], r2
	st.h r2, 0x00000002[r5]
.BB.LABEL.5_22:	; if_break_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3708
	ld.w 0x00000000[r21], r2
	movhi 0x00000001, r0, r5
	tst r5, r2
	bz9 .BB.LABEL.5_24
.BB.LABEL.5_23:	; if_then_bb294
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3712
	ld.h 0x0000002E[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00000A00[r5]
	mov r24, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r5
	add r2, r5
	ld.h 0x0000002E[r21], r2
	st.h r2, 0x00000004[r5]
.BB.LABEL.5_24:	; if_break_bb311
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3730
	ld.w 0x00000000[r21], r2
	andi 0x00000020, r2, r0
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; if_then_bb319
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3739
	ld.h 0x00000022[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004200[r5]
	shl 0x00000003, r24
	mov #_Port_GstRamMirrorPortReg, r2
	add r24, r2
	ld.h 0x00000022[r21], r5
	st.h r5, 0x00000006[r2]
.BB.LABEL.5_26:	; if_break_bb336
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3756
	ld.w 0x00000000[r21], r2
	movhi 0x00000002, r0, r5
	tst r5, r2
	bz9 .BB.LABEL.5_28
.BB.LABEL.5_27:	; if_then_bb344
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3763
	ld.w 0x00000010[r21], r2
	movhi 0x0000FFFF, r0, r5
	or r5, r2
	ld.w 0x00000000[r26], r5
	st.w r2, 0x00000900[r5]
.BB.LABEL.5_28:	; if_break_bb355
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3781
	ld.h 0x00000020[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3791
	ld.h 0x00000028[r21], r2
	ld.w 0x00000000[r26], r5
	st.h r2, 0x00004100[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3800
	ld.w 0x00000008[r21], r2
	movhi 0x0000FFFF, r0, r5
	or r5, r2
	ld.w 0x00000000[r26], r5
	st.w r2, 0x00000800[r5]
.BB.LABEL.5_29:	; if_break_bb381
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3809
	movea 0x00000034, r21, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3807
	add 0x00000001, r22
.BB.LABEL.5_30:	; bb386
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3389
	andi 0x000000FF, r22, r2
	cmp r20, r2
	bnc9 .BB.LABEL.5_39
.BB.LABEL.5_31:	; bb386
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	andi 0x000000FF, r23, r0
	bz17 .BB.LABEL.5_2
	br9 .BB.LABEL.5_39
.BB.LABEL.5_32:	; if_else_bb407
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3819
	cmp 0x00000001, r6
	bnz17 .BB.LABEL.5_52
.BB.LABEL.5_33:	; if_then_bb424
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3823
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r23
	ld.w LOWW(#_Port_GpConfigPtr)[r23], r23
	ld.w 0x00000008[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3830
	movhi 0x0000FFF8, r0, r2
	ld.w 0x00000B00[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.5_35
.BB.LABEL.5_34:	; bb432
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000004, 0x0000002B[r23]
	bnz9 .BB.LABEL.5_36
.BB.LABEL.5_35:	; if_else_bb449
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3855
	ld.w 0x00000004[r23], r2
	movhi 0x0000FFFF, r0, r5
	or r5, r2
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r5], r5
	st.w r2, 0x00000010[r5]
.BB.LABEL.5_36:	; if_break_bb456
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3868
	movhi 0x0000FFF8, r0, r2
	ld.w 0x00000B00[r2], r2
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.5_40
.BB.LABEL.5_37:	; bb461
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000000, 0x0000002B[r23]
	bnz9 .BB.LABEL.5_40
.BB.LABEL.5_38:	; bb461.if_break_bb779_crit_edge
	mov 0x00000000, r23
.BB.LABEL.5_39:	; if_break_bb779
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4277
	andi 0x000000FF, r23, r10
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.5_40:	; if_else_bb478
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3893
	ld.w 0x0000000C[r23], r2
	andi 0x0000FFFF, r2, r5
	movea 0x00000014, r0, r20
.BB.LABEL.5_41:	; bb483
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3902
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	movea 0x000000A5, r0, r8
	st.w r8, 0x000004C0[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3908
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	st.w r5, 0x00000450[r7]
	movhi 0x0000FFFF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3914
	or r2, r7
	xori 0x0000FFFF, r7, r7
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r8
	st.w r7, 0x00000450[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3920
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	st.w r5, 0x00000450[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3923
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3895
	andi 0x000000FF, r20, r0
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
	ld.w 0x000004B0[r6], r6
	bz9 .BB.LABEL.5_43
.BB.LABEL.5_42:	; bb483
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r6
	bz9 .BB.LABEL.5_41
.BB.LABEL.5_43:	; bb515
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3945
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x000004B0[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.5_45
.BB.LABEL.5_44:	; bb515.if_break_bb524_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.5_46
.BB.LABEL.5_45:	; if_then_bb522
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3949
	mov r21, r6
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.5_46:	; if_break_bb524
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3963
	ld.w 0x00000018[r23], r2
	andi 0x0000FFFF, r2, r5
.BB.LABEL.5_47:	; bb529
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3972
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r6
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	movea 0x000000A5, r0, r8
	st.w r8, 0x000004C0[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3978
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	st.w r5, 0x00000460[r7]
	movhi 0x0000FFFF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3985
	or r2, r7
	xori 0x0000FFFF, r7, r7
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r8
	st.w r7, 0x00000460[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3991
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r7
	st.w r5, 0x00000460[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3994
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 3965
	andi 0x000000FF, r20, r0
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r6], r6
	ld.w 0x000004B0[r6], r6
	bz9 .BB.LABEL.5_49
.BB.LABEL.5_48:	; bb529
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	cmp 0x00000001, r6
	bz9 .BB.LABEL.5_47
.BB.LABEL.5_49:	; bb561
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4016
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x000004B0[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_51
.BB.LABEL.5_50:	; if_then_bb568
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4020
	mov r21, r6
	mov r21, r7
	jarl _Dem_ReportErrorStatus, r31
.BB.LABEL.5_51:	; if_break_bb570
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4037
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x0000001C[r23], r6
	st.b r6, 0x00000430[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4046
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000024[r23], r6
	st.b r6, 0x00000440[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4055
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000020[r23], r6
	st.b r6, 0x00000470[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4064
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000028[r23], r6
	st.b r6, 0x000004A0[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4073
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000022[r23], r6
	st.b r6, 0x00000050[r5]
	ld.b 0x00000022[r23], r5
	mov #_Port_GstRamMirrorJPortReg, r6
	st.b r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4085
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000026[r23], r7
	st.b r7, 0x00000060[r5]
	ld.b 0x00000026[r23], r5
	st.b r5, 0x00000001[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4096
	ld.w 0x00000010[r23], r5
	movhi 0x0000FFFF, r0, r6
	or r6, r5
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r7
	st.w r5, 0x00000090[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4107
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x00000014[r23], r7
	st.b r7, 0x00000400[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4117
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r5
	ld.b 0x0000001E[r23], r7
	st.b r7, 0x00000410[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4128
	ld.w 0x00000008[r23], r23
	or r6, r23
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	st.w r23, 0x00000080[r2]
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.5_52:	; if_else_bb640
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4141
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.5_62
.BB.LABEL.5_53:	; if_then_bb645
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4143
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r23
	ld.w LOWW(#_Port_GpConfigPtr)[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4145
	ld.bu 0x0000001E[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4143
	ld.w 0x0000000C[r23], r23
	mov 0x00000000, r5
	br9 .BB.LABEL.5_60
.BB.LABEL.5_54:	; bb660
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000004, 0x00000011[r23]
	bnz9 .BB.LABEL.5_56
.BB.LABEL.5_55:	; if_else_bb677
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4178
	ld.w 0x00000008[r23], r7
	movhi 0x0000FFFF, r0, r8
	or r8, r7
	mov r6, r8
	shl 0x00000002, r8
	mov #_Port_GaaAPortReg_BaseAddress, r9
	add r9, r8
	ld.w 0x00000000[r8], r8
	st.w r7, 0x00000100[r8]
.BB.LABEL.5_56:	; if_break_bb687
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4190
	movhi 0x0000FFF8, r0, r7
	ld.w 0x00000B00[r7], r7
	andi 0x00000001, r7, r0
	bz9 .BB.LABEL.5_58
.BB.LABEL.5_57:	; bb692
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	tst1 0x00000000, 0x00000011[r23]
	bz9 .BB.LABEL.5_59
.BB.LABEL.5_58:	; if_else_bb709
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4213
	shl 0x00000002, r6
	mov #_Port_GaaAPortReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r7
	ld.h 0x0000000C[r23], r8
	st.h r8, 0x00004000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4224
	ld.w 0x00000000[r6], r7
	ld.h 0x0000000E[r23], r8
	st.h r8, 0x00004100[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4235
	ld.w 0x00000004[r23], r7
	movhi 0x0000FFFF, r0, r8
	or r8, r7
	ld.w 0x00000000[r6], r6
	st.w r7, 0x00000800[r6]
.BB.LABEL.5_59:	; if_break_bb735
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4245
	movea 0x00000014, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4243
	add 0x00000001, r5
.BB.LABEL.5_60:	; bb740
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4146
	andi 0x000000FF, r5, r6
	cmp r2, r6
	bnc17 .BB.LABEL.5_38
.BB.LABEL.5_61:	; bb747
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4149
	ld.bu 0x00000010[r23], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4155
	movhi 0x0000FFF8, r0, r7
	ld.w 0x00000B00[r7], r7
	andi 0x00000001, r7, r0
	bnz9 .BB.LABEL.5_54
	br9 .BB.LABEL.5_55
.BB.LABEL.5_62:	; if_else_bb761
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4254
	cmp 0x00000003, r6
	bnz17 .BB.LABEL.5_38
.BB.LABEL.5_63:	; if_then_bb766
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4259
	movhi HIGHW1(#_Port_GpIPortReg_BaseAddress), r0, r23
	ld.w LOWW(#_Port_GpIPortReg_BaseAddress)[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4256
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4259
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00003E00[r23]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000779, [r31]
_Port_SearchChangeablePinDetail.1:
	.stack _Port_SearchChangeablePinDetail.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4331
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4355
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000014[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4363
	ld.bu 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4361
	ld.h 0x00000000[r5], r9
	mov 0xFFFFFFFF, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4363
	st.b r9, 0x00000000[r7]
	mov 0x00000000, r9
	movea 0x000000FF, r0, r11
	mov r9, r10
.BB.LABEL.6_1:	; bb55.outer.outer
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov r2, r12
.BB.LABEL.6_2:	; bb55
	mov r12, r2
	mov r9, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4366
	andi 0x000000FF, r12, r9
	andi 0x000000FF, r2, r13
	cmp r13, r9
	bnc9 .BB.LABEL.6_7
.BB.LABEL.6_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4371
	ld.hu 0x00000000[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4375
	cmp r9, r6
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4378
	ld.bu 0x00000007[r5], r2
	and r8, r2
	mov r12, r9
	cmp r8, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_5:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4388
	ld.bu 0x00000006[r5], r11
	mov 0x00000000, r2
	mov r5, r10
	br9 .BB.LABEL.6_1
.BB.LABEL.6_6:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4403
	add 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4401
	addi 0x00000001, r12, r9
	br9 .BB.LABEL.6_1
.BB.LABEL.6_7:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4408
	andi 0x000000FF, r11, r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.6_21
.BB.LABEL.6_8:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4416
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r0
	bnz9 .BB.LABEL.6_14
.BB.LABEL.6_9:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4419
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4420
	ld.bu 0x0000001C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4419
	ld.w 0x00000004[r2], r2
	mov 0x00000000, r6
	br9 .BB.LABEL.6_13
.BB.LABEL.6_10:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4433
	andi 0x000000FF, r11, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4428
	ld.bu 0x00000030[r2], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4433
	cmp r9, r8
	bnz9 .BB.LABEL.6_12
.BB.LABEL.6_11:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4438
	st.b r6, 0x00000000[r7]
	mov 0x00000000, r5
	br9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4453
	movea 0x00000034, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4451
	add 0x00000001, r6
.BB.LABEL.6_13:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4422
	andi 0x000000FF, r6, r8
	andi 0x0000FFFF, r5, r9
	cmp r9, r8
	blt9 .BB.LABEL.6_10
	br9 .BB.LABEL.6_21
.BB.LABEL.6_14:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4468
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.6_20
.BB.LABEL.6_15:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4472
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4474
	ld.bu 0x0000001E[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4472
	ld.w 0x0000000C[r2], r2
	mov 0x00000000, r6
	br9 .BB.LABEL.6_19
.BB.LABEL.6_16:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4486
	andi 0x000000FF, r11, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4481
	ld.bu 0x00000010[r2], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4486
	cmp r9, r8
	bnz9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; if_then_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4492
	st.b r6, 0x00000000[r7]
	mov 0x00000000, r5
	br9 .BB.LABEL.6_19
.BB.LABEL.6_18:	; if_else_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4505
	movea 0x00000014, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4503
	add 0x00000001, r6
.BB.LABEL.6_19:	; bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4475
	andi 0x000000FF, r6, r8
	andi 0x000000FF, r5, r9
	cmp r9, r8
	bl9 .BB.LABEL.6_16
	br9 .BB.LABEL.6_21
.BB.LABEL.6_20:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4518
	st.b r0, 0x00000000[r7]
.BB.LABEL.6_21:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4529
	jmp [r31]
_Port_RefreshPortInternal.1:
	.stack _Port_RefreshPortInternal.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4584
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4620
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4626
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4627
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4626
	ld.bu 0x0000001C[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4635
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4650
	ld.bu 0x00000030[r20], r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x0000000C[r20], r5
	st.w r5, 0x00000800[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4664
	add 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4662
	movea 0x00000034, r20, r20
.BB.LABEL.7_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4639
	andi 0x0000FFFF, r21, r0
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4669
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.7_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4677
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.7_10
.BB.LABEL.7_6:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4680
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4681
	ld.w 0x00000008[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4684
	ld.bu 0x0000001D[r2], r21
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4696
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x00000000[r20], r5
	st.w r5, 0x00000080[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4710
	add 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4708
	movea 0x0000002C, r20, r20
.BB.LABEL.7_8:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4687
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_9:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4716
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.7_10:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4724
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.7_15
.BB.LABEL.7_11:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4727
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4728
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4730
	ld.bu 0x0000001E[r2], r21
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	br9 .BB.LABEL.7_13
.BB.LABEL.7_12:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4745
	ld.bu 0x00000010[r20], r2
	shl 0x00000002, r2
	mov #_Port_GaaAPortReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r20], r5
	st.w r5, 0x00000800[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4760
	add 0xFFFFFFFF, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4758
	movea 0x00000014, r20, r20
.BB.LABEL.7_13:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4733
	andi 0x000000FF, r21, r0
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_14:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4766
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.7_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4772
	dispose 0x00000000, 0x00000061, [r31]
_Port_FilterConfig.1:
	.stack _Port_FilterConfig.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4825
	add 0xFFFFFFFC, r3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4850
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4858
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4863
	ld.bu 0x00000021[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4858
	ld.w 0x00000018[r2], r2
	br9 .BB.LABEL.8_5
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4869
	ld.hu 0x00000000[r2], r6
	shl 0x00000002, r6
	mov #_Port_GaaDnfaReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	ld.b 0x00000006[r2], r8
	st.b r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4881
	ld.hu 0x00000000[r2], r6
	shl 0x00000002, r6
	add r6, r7
	ld.w 0x00000000[r7], r6
	ld.h 0x00000002[r2], r7
	st.h r7, 0x00000004[r6]
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4890
	nop
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4891
	ld.h 0x00000000[r6], r6
	add 0x00000001, r6
	st.h r6, 0x00000002[r3]
.BB.LABEL.8_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4888
	ld.hu 0x00000002[r3], r6
	ld.hu 0x00000004[r2], r7
	cmp r7, r6
	bl9 .BB.LABEL.8_2
.BB.LABEL.8_4:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4893
	st.h r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4904
	add 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4899
	add 0x00000008, r2
.BB.LABEL.8_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4864
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.8_1
.BB.LABEL.8_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4938
	dispose 0x00000004, 0x00000000, [r31]
_Port_SetPinDefaultMode:
	.stack _Port_SetPinDefaultMode = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 4998
	prepare 0x00000479, 0x00000004
	movea 0x00000020, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5102
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5106
	cmp 0x00000000, r10
	bz17 .BB.LABEL.9_19
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5113
	ld.bu 0x00000006[r10], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5121
	ld.hu 0x00000002[r10], r21
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r0
	bnz17 .BB.LABEL.9_15
.BB.LABEL.9_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5127
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	movhi 0x00000002, r0, r7
	tst r7, r5
	bz17 .BB.LABEL.9_19
.BB.LABEL.9_3:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5136
	ld.w 0x00000004[r6], r5
	mulhi 0x00000034, r2, r7
	add r7, r5
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5147
	tst r21, r5
	bz17 .BB.LABEL.9_10
.BB.LABEL.9_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5152
	ld.w 0x00000004[r6], r5
	mulhi 0x00000034, r2, r7
	add r7, r5
	ld.w 0x00000000[r5], r5
	andi 0x00004000, r5, r0
	bz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5165
	mov r20, r22
	shl 0x00000002, r22
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r22
	ld.w 0x00000000[r22], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5157
	ld.w 0x00000004[r6], r6
	mulhi 0x00000034, r2, r2
	add r2, r6
	ld.hu 0x0000002A[r6], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5165
	ld.h 0x00000600[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5178
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5165
	not r21, r2
	and r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5157
	and r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5165
	or r23, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5181
	ld.w 0x00000000[r22], r2
	st.h r24, 0x00000600[r2]
	mov r20, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r5
	add r2, r5
	st.h r24, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5194
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5207
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	andi 0x00008000, r5, r0
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5212
	ld.w 0x00000004[r6], r5
	mulhi 0x00000034, r2, r2
	add r2, r5
	ld.hu 0x0000002C[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5224
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5231
	mov r20, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00000500[r5], r5
	not r21, r6
	and r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5212
	and r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5231
	or r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5236
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00000500[r2]
	mov r20, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5248
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.9_8:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5258
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	movhi 0x00000001, r0, r7
	tst r7, r5
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5263
	ld.w 0x00000004[r6], r5
	mulhi 0x00000034, r2, r2
	add r2, r5
	ld.hu 0x0000002E[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5276
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5283
	mov r20, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00000A00[r5], r5
	not r21, r6
	and r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5263
	and r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5283
	or r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5288
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00000A00[r2]
	mov r20, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5300
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.9_10:	; if_break_bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5318
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000004[r6], r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	andi 0x00000020, r5, r0
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_break_bb224.if_break_bb280_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.9_13
.BB.LABEL.9_12:	; if_then_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5324
	ld.w 0x00000004[r6], r22
	mulhi 0x00000034, r2, r2
	add r2, r22
	ld.hu 0x00000022[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5338
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5324
	and r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5345
	mov r20, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.h 0x00004200[r5], r5
	not r21, r6
	and r6, r5
	or r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5349
	ld.w 0x00000000[r2], r2
	st.h r5, 0x00004200[r2]
	mov r20, r2
	shl 0x00000003, r2
	mov #_Port_GstRamMirrorPortReg, r6
	add r2, r6
	st.h r5, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5361
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	cmp 0x00000000, r22
	setf 0x00000002, r22
.BB.LABEL.9_13:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5382
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000010[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5394
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5382
	and r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5374
	mov r21, r2
	shl 0x00000010, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5382
	or r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5401
	shl 0x00000002, r20
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r20
	ld.w 0x00000000[r20], r5
	st.w r2, 0x00000900[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5413
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5421
	xori 0x00000001, r22, r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.9_19
.BB.LABEL.9_14:	; if_then_bb308
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5438
	ld.bu 0x00000003[r3], r2
	mulhi 0x00000034, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000008[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5451
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5438
	and r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5429
	shl 0x00000010, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5438
	or r22, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5458
	ld.w 0x00000000[r20], r2
	st.w r21, 0x00000800[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5470
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.9_15:	; if_else_bb335
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5489
	ld.bu 0x00000007[r10], r2
	andi 0x0000000F, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_16:	; if_then_bb344
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5496
	ld.bu 0x00000003[r3], r2
	mulhi 0x0000002C, r2, r5
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.w 0x00000008[r6], r7
	add r5, r7
	ld.w 0x00000010[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5507
	tst r21, r5
	bz9 .BB.LABEL.9_18
.BB.LABEL.9_17:	; if_then_bb362
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5511
	ld.w 0x00000008[r6], r5
	mulhi 0x0000002C, r2, r2
	add r2, r5
	ld.hu 0x00000026[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5524
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5511
	and r21, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5534
	not r21, r22
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r23
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r23], r2
	ld.b 0x00000060[r2], r2
	and r22, r2
	zxb r2
	or r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5539
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r23], r5
	st.b r2, 0x00000060[r5]
	mov #_Port_GstRamMirrorJPortReg, r20
	st.b r2, 0x00000001[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5555
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5559
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r5
	add r5, r2
	ld.hu 0x00000022[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5572
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5559
	and r21, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5581
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r23], r2
	ld.b 0x00000050[r2], r2
	and r22, r2
	zxb r2
	or r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5586
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r23], r5
	st.b r2, 0x00000050[r5]
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5601
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.9_18:	; if_break_bb428
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5621
	ld.bu 0x00000003[r3], r2
	mulhi 0x0000002C, r2, r2
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r20
	ld.w LOWW(#_Port_GpConfigPtr)[r20], r5
	ld.w 0x00000008[r5], r5
	add r2, r5
	ld.w 0x00000010[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5635
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5621
	and r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5613
	mov r21, r23
	shl 0x00000010, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5621
	or r23, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5642
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r24
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r24], r2
	st.w r22, 0x00000090[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5653
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5669
	ld.w LOWW(#_Port_GpConfigPtr)[r20], r2
	ld.w 0x00000008[r2], r2
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r5
	add r5, r2
	ld.w 0x00000008[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5682
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5669
	and r21, r20
	or r20, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5689
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r24], r2
	st.w r23, 0x00000080[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5700
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.9_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5730
	dispose 0x00000004, 0x00000479, [r31]
_Port_SetPinDefaultDirection:
	.stack _Port_SetPinDefaultDirection = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5787
	prepare 0x00000079, 0x00000004
	movea 0x00000040, r0, r8
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5858
	jarl _Port_SearchChangeablePinDetail.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5862
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5867
	ld.bu 0x00000006[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5869
	ld.hu 0x00000002[r20], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5885
	ld.b 0x00000006[r20], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5878
	mov r22, r23
	shl 0x00000010, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5889
	ld.bu 0x00000007[r20], r2
	andi 0x0000000F, r2, r0
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5900
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5908
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000034, r5, r5
	add r5, r2
	ld.w 0x00000008[r2], r2
	and r22, r2
	or r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5916
	mov r21, r2
	shl 0x00000002, r2
	mov #_Port_GaaPortReg_BaseAddress, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	st.w r23, 0x00000800[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5927
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5938
	ld.bu 0x00000007[r20], r2
	andi 0x0000000F, r2, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5950
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5958
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.bu 0x00000003[r3], r5
	mulhi 0x0000002C, r5, r5
	add r5, r2
	ld.w 0x00000008[r2], r2
	and r22, r2
	or r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5966
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	st.w r23, 0x00000080[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5977
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.10_5:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5988
	ld.bu 0x00000007[r20], r2
	andi 0x0000000F, r2, r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 5999
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6008
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x0000000C[r2], r2
	ld.bu 0x00000003[r3], r5
	mulhi 0x00000014, r5, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	and r22, r2
	or r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6018
	shl 0x00000002, r21
	mov #_Port_GaaAPortReg_BaseAddress, r2
	add r2, r21
	ld.w 0x00000000[r21], r2
	st.w r23, 0x00000800[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6030
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
.BB.LABEL.10_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6059
	dispose 0x00000004, 0x00000079, [r31]
_Port_GetVersionInfo:
	.stack _Port_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6108
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6112
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6125
	st.h r2, 0x00000000[r6]
	movea 0x0000007C, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6127
	st.h r2, 0x00000002[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6129
	st.b r2, 0x00000005[r6]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6131
	st.b r2, 0x00000006[r6]
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6133
	st.b r2, 0x00000007[r6]
.BB.LABEL.11_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6135
	jmp [r31]
_Port_CheckHWConsistency:
	.stack _Port_CheckHWConsistency = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6190
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6270
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6239
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6245
	ld.w 0x00000008[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6242
	ld.w 0x0000000C[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6239
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6270
	bnz17 .BB.LABEL.12_36
.BB.LABEL.12_1:	; entry.bb167_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r10
	mov r10, r6
	br9 .BB.LABEL.12_13
.BB.LABEL.12_2:	; bb172
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r8
	ld.w LOWW(#_Port_GpConfigPtr)[r8], r8
	ld.bu 0x0000001C[r8], r8
	andi 0x000000FF, r6, r9
	cmp r8, r9
	bnc9 .BB.LABEL.12_14
.BB.LABEL.12_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6279
	ld.bu 0x00000030[r2], r8
	shl 0x00000002, r8
	mov #_Port_GaaPortReg_BaseAddress, r9
	add r8, r9
	ld.w 0x00000000[r9], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6280
	ld.hu 0x00004300[r8], r9
	ld.hu 0x00000024[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_4:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.hu 0x00004400[r8], r9
	ld.hu 0x00000026[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_5:	; bb59
	ld.hu 0x00004700[r8], r9
	ld.hu 0x0000001C[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_6:	; bb77
	ld.hu 0x00004000[r8], r9
	ld.hu 0x00000020[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_7:	; bb95
	ld.w 0x00004500[r8], r9
	ld.hu 0x00000014[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_8:	; bb112
	ld.w 0x00000000[r2], r9
	andi 0x00000800, r9, r0
	bz9 .BB.LABEL.12_10
.BB.LABEL.12_9:	; bb119
	ld.w 0x00004600[r8], r9
	ld.hu 0x00000018[r2], r11
	cmp r11, r9
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_10:	; bb143
	ld.hu 0x00004100[r8], r8
	ld.hu 0x00000028[r2], r9
	cmp r9, r8
	bz9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; if_then_bb162
	mov 0x00000001, r10
.BB.LABEL.12_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6305
	add 0x00000001, r6
	movea 0x00000034, r2, r2
.BB.LABEL.12_13:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6274
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_14:	; bb167.bb234_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.12_19
.BB.LABEL.12_15:	; bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6317
	ld.bu 0x00000010[r7], r6
	shl 0x00000002, r6
	mov #_Port_GaaAPortReg_BaseAddress, r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6318
	ld.hu 0x00004000[r6], r8
	ld.hu 0x0000000C[r7], r9
	cmp r9, r8
	bnz9 .BB.LABEL.12_17
.BB.LABEL.12_16:	; bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	ld.hu 0x00004100[r6], r6
	ld.hu 0x0000000E[r7], r8
	cmp r8, r6
	bz9 .BB.LABEL.12_18
.BB.LABEL.12_17:	; if_then_bb227
	mov 0x00000001, r10
.BB.LABEL.12_18:	; if_break_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6329
	add 0x00000001, r2
	movea 0x00000014, r7, r7
.BB.LABEL.12_19:	; bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6311
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.12_21
.BB.LABEL.12_20:	; bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.bu 0x0000001E[r6], r6
	andi 0x000000FF, r2, r8
	cmp r6, r8
	bl9 .BB.LABEL.12_15
.BB.LABEL.12_21:	; bb256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6336
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000430[r2], r2
	ld.bu 0x0000001C[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_22:	; bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000440[r2], r2
	ld.bu 0x00000024[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_23:	; bb287
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000470[r2], r2
	ld.bu 0x00000020[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_24:	; bb306
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x000004A0[r2], r2
	ld.bu 0x00000028[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_25:	; bb325
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000400[r2], r2
	ld.bu 0x00000014[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_26:	; bb344
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x00000450[r2], r2
	ld.hu 0x0000000C[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_27:	; bb361
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.w 0x00000460[r2], r2
	ld.hu 0x00000018[r5], r6
	cmp r6, r2
	bnz9 .BB.LABEL.12_29
.BB.LABEL.12_28:	; bb378
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000410[r2], r2
	ld.bu 0x0000001E[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.12_30
.BB.LABEL.12_29:	; if_then_bb398
	mov 0x00000001, r10
.BB.LABEL.12_30:	; if_break_bb400
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6365
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000018[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.12_32
.BB.LABEL.12_31:	; bb404
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6370
	ld.hu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6372
	zxb r6
	shl 0x00000002, r6
	mov #_Port_GaaDnfaReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r7
	ld.bu 0x00000000[r7], r7
	ld.bu 0x00000006[r2], r8
	cmp r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6375
	cmov 0x0000000A, 0x00000001, r10, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6383
	ld.w 0x00000000[r6], r6
	ld.hu 0x00000004[r6], r6
	ld.hu 0x00000002[r2], r8
	cmp r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6386
	cmov 0x0000000A, 0x00000001, r7, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6394
	add 0x00000001, r5
	add 0x00000008, r2
.BB.LABEL.12_32:	; bb447
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6366
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.12_34
.BB.LABEL.12_33:	; bb452
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.bu 0x00000021[r6], r6
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.12_31
.BB.LABEL.12_34:	; bb469
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6403
	movhi HIGHW1(#_Port_GpIPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpIPortReg_BaseAddress)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6400
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r5
	ld.w LOWW(#_Port_GpConfigPtr)[r5], r5
	ld.w 0x00000010[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6403
	ld.hu 0x00003E00[r2], r2
	ld.hu 0x00000000[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.12_38
.BB.LABEL.12_35:	; if_then_bb484
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6407
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_36:	; if_else_bb487
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6415
	cmp 0x00000001, r6
	bz9 .BB.LABEL.12_39
.BB.LABEL.12_37:	; if_else_bb487.if_break_bb688_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov 0x00000001, r10
.BB.LABEL.12_38:	; if_break_bb688
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6512
	zxb r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.12_39:	; if_then_bb492
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6422
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6425
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r2
	ld.w LOWW(#_Port_GpConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	mov 0x00000000, r20
	mov r20, r5
	br9 .BB.LABEL.12_50
.BB.LABEL.12_40:	; bb496
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6430
	ld.bu 0x00000030[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6431
	mov r6, r7
	shl 0x00000002, r7
	mov #_Port_GaaPortReg_BaseAddress, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6434
	ld.w 0x00000000[r2], r8
	andi 0x00000020, r8, r0
	bz9 .BB.LABEL.12_42
.BB.LABEL.12_41:	; bb513
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	mov r6, r8
	shl 0x00000003, r8
	mov #_Port_GstRamMirrorPortReg, r9
	add r8, r9
	ld.hu 0x00004200[r7], r8
	ld.hu 0x00000006[r9], r9
	cmp r9, r8
	bnz9 .BB.LABEL.12_48
.BB.LABEL.12_42:	; bb531
	ld.w 0x00000000[r2], r8
	andi 0x00004000, r8, r0
	bz9 .BB.LABEL.12_44
.BB.LABEL.12_43:	; bb538
	mov r6, r8
	shl 0x00000003, r8
	mov #_Port_GstRamMirrorPortReg, r9
	add r8, r9
	ld.hu 0x00000600[r7], r8
	ld.hu 0x00000002[r9], r9
	cmp r9, r8
	bnz9 .BB.LABEL.12_48
.BB.LABEL.12_44:	; bb563
	ld.w 0x00000000[r2], r8
	andi 0x00008000, r8, r0
	bz9 .BB.LABEL.12_46
.BB.LABEL.12_45:	; bb570
	mov r6, r8
	shl 0x00000003, r8
	mov #_Port_GstRamMirrorPortReg, r9
	add r8, r9
	ld.hu 0x00000500[r7], r8
	ld.hu 0x00000000[r9], r9
	cmp r9, r8
	bnz9 .BB.LABEL.12_48
.BB.LABEL.12_46:	; bb595
	ld.w 0x00000000[r2], r8
	movhi 0x00000001, r0, r9
	tst r9, r8
	bz9 .BB.LABEL.12_49
.BB.LABEL.12_47:	; bb602
	shl 0x00000003, r6
	mov #_Port_GstRamMirrorPortReg, r8
	add r6, r8
	ld.hu 0x00000A00[r7], r6
	ld.hu 0x00000004[r8], r7
	cmp r7, r6
	bz9 .BB.LABEL.12_49
.BB.LABEL.12_48:	; if_then_bb628
	mov 0x00000001, r20
.BB.LABEL.12_49:	; if_break_bb630
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6455
	add 0x00000001, r5
	movea 0x00000034, r2, r2
.BB.LABEL.12_50:	; bb635
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6427
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.12_52
.BB.LABEL.12_51:	; bb640
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpConfigPtr), r0, r6
	ld.w LOWW(#_Port_GpConfigPtr)[r6], r6
	ld.bu 0x0000001C[r6], r6
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.12_40
.BB.LABEL.12_52:	; bb657
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6462
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6471
	jarl _SchM_Enter_Port_PORT_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6475
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000060[r2], r2
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg+0x00000001), r0, r5
	ld.bu LOWW(#_Port_GstRamMirrorJPortReg+0x00000001)[r5], r5
	cmp r5, r2
	bnz9 .BB.LABEL.12_54
.BB.LABEL.12_53:	; bb666
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 0
	movhi HIGHW1(#_Port_GpJPortReg_BaseAddress), r0, r2
	ld.w LOWW(#_Port_GpJPortReg_BaseAddress)[r2], r2
	ld.bu 0x00000050[r2], r2
	movhi HIGHW1(#_Port_GstRamMirrorJPortReg), r0, r5
	ld.bu LOWW(#_Port_GstRamMirrorJPortReg)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.12_55
.BB.LABEL.12_54:	; if_then_bb683
	mov 0x00000001, r20
.BB.LABEL.12_55:	; if_break_bb685
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/port/src/Port.c", 6490
	jarl _SchM_Exit_Port_PORT_REGISTER_PROTECTION, r31
	andi 0x000000FF, r20, r10
	dispose 0x00000000, 0x00000041, [r31]
