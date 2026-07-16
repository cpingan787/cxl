#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\dio\src\Dio.c -oDefaultBuild\Dio.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_15d7454f3b60466eab168476b74e215avwlzacet.0u5
#@	compiled at Thu Jul 16 13:41:38 2026

	.file "..\..\Bsw\Mcal\dio\src\Dio.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Dio_GaaPortReg_BaseAddress
	.extern _Dio_GstPortGroup
	.extern _Dio_GstPortChannel
	.extern _Dio_GusPortOffset
	.extern _Dio_GusChannelOffset
	.public _Dio_GetVersionInfo
	.public _Dio_ReadPort
	.public _Dio_WritePort
	.extern _SchM_Enter_Dio_DIO_REGISTER_PROTECTION
	.extern _SchM_Exit_Dio_DIO_REGISTER_PROTECTION
	.public _Dio_ReadChannel
	.public _Dio_WriteChannel
	.public _Dio_FlipChannel
	.public _Dio_ReadChannelGroup
	.public _Dio_WriteChannelGroup
	.public _Dio_CheckHWConsistency
	.public _Dio_MaskedWritePort
	.public _Dio_ReadChannelOutputValue
	.public _Dio_ReadChannelGroupOutputValue

	.section .text, text
_Dio_GetVersionInfo:
	.stack _Dio_GetVersionInfo = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 528
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 533
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	movea 0x0000003B, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 536
	st.h r5, 0x00000000[r6]
	movea 0x00000078, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 538
	st.h r5, 0x00000002[r6]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 540
	st.b r5, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 542
	st.b r0, 0x00000006[r6]
	mov 0x00000007, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 544
	st.b r5, 0x00000007[r6]
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 557
	jmp [r31]
_Dio_ReadPort:
	.stack _Dio_ReadPort = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 707
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 774
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 776
	zxh r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 785
	mov r5, r6
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r7
	add r6, r7
	ld.bu 0x00000008[r7], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 781
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 793
	ld.bu 0x00000000[r6], r5
	shl 0x00000002, r5
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x00000200[r5], r10
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 852
	jmp [r31]
_Dio_WritePort:
	.stack _Dio_WritePort = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 906
	prepare 0x00000385, 0x00000000
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 994
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r26
	add r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 996
	zxh r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 999
	mov r26, r5
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r27
	add r5, r27
	ld.bu 0x00000000[r27], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1003
	jarl32 _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1006
	ld.bu 0x00000008[r27], r5
	add 0x00000008, r27
	cmp 0x00000002, r5
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1009
	mul 0x0000000C, r26, r0
	mov #_Dio_GstPortGroup, r5
	add r26, r5
	mov r28, r26
	shl 0x00000002, r26
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r26
	ld.w 0x00000000[r26], r26
	ld.w 0x00000800[r26], r26
	ld.w 0x00000004[r5], r5
	or r5, r26
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	movhi 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1039
	or r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1044
	cmp 0xFFFFFFFF, r5
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1055
	ld.bu 0x00000000[r27], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1046
	zxh r26
	xori 0x0000FFFF, r26, r6
	and r6, r25
	shl 0x00000010, r5
	or r25, r5
	movhi 0x0000FFFF, r0, r6
	xor r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1058
	shl 0x00000002, r28
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r28
	ld.w 0x00000000[r28], r6
	st.w r5, 0x00000100[r6]
.BB.LABEL.3_6:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1107
	jarl32 _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000385, [r31]
_Dio_ReadChannel:
	.stack _Dio_ReadChannel = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1164
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1249
	ld.hu LOWW(#_Dio_GusChannelOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1250
	zxh r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1251
	mov r5, r6
	shl 0x00000002, r6
	mov #_Dio_GstPortChannel, r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r7
	ld.hu LOWW(#_Dio_GusPortOffset)[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1253
	zxh r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1260
	mov r7, r6
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r8
	add r6, r8
	ld.bu 0x00000008[r8], r6
	cmp 0x00000002, r6
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1257
	mul 0x0000000C, r7, r0
	mov #_Dio_GstPortGroup, r6
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1269
	ld.bu 0x00000000[r6], r7
	shl 0x00000002, r7
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r7, r6
	ld.w 0x00000000[r6], r7
	ld.hu 0x00000200[r7], r7
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1324
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1331
	tst r5, r7
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1363
	jmp [r31]
_Dio_WriteChannel:
	.stack _Dio_WriteChannel = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1415
	prepare 0x00000387, 0x00000000
	mov r7, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1530
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r5
	ld.hu LOWW(#_Dio_GusChannelOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1531
	zxh r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1532
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r26
	add r5, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1541
	ld.hu 0x00000000[r26], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1532
	ld.bu 0x00000002[r26], r5
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1533
	zxh r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1558
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r28
	add r6, r28
	ld.bu 0x00000000[r28], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1563
	jarl32 _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1541
	mov r27, r5
	shl 0x00000010, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1549
	or r5, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1543
	cmp 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1549
	cmov 0x00000002, r27, r5, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1566
	ld.bu 0x00000008[r28], r6
	add 0x00000008, r28
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1569
	mov r29, r6
	shl 0x00000002, r6
	mov #_Dio_GaaPortReg_BaseAddress, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000800[r6], r6
	ld.hu 0x00000000[r26], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1603
	tst r7, r6
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1606
	ld.bu 0x00000000[r28], r6
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1609
	shl 0x00000002, r29
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r29
	ld.w 0x00000000[r29], r6
	st.w r5, 0x00000100[r6]
.BB.LABEL.5_4:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1656
	jarl32 _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000387, [r31]
_Dio_FlipChannel:
	.stack _Dio_FlipChannel = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1730
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1849
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r5
	ld.hu LOWW(#_Dio_GusChannelOffset)[r5], r25
	add r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1850
	zxh r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1851
	mov r25, r5
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1852
	zxh r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1858
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r26
	add r6, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1866
	ld.bu 0x00000000[r26], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1863
	jarl32 _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1866
	ld.bu 0x00000008[r26], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1869
	mov r25, r5
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	shl 0x00000002, r27
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r27
	ld.w 0x00000000[r27], r5
	ld.w 0x00000800[r5], r5
	ld.hu 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1876
	tst r6, r5
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1879
	ld.w 0x00000000[r27], r5
	ld.h 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1884
	ld.w 0x00000000[r27], r5
	st.h r6, 0x00000700[r5]
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1900
	ld.w 0x00000000[r27], r27
	ld.hu 0x00000200[r27], r27
.BB.LABEL.6_5:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1988
	jarl32 _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 1995
	shl 0x00000002, r25
	mov #_Dio_GstPortChannel, r5
	add r25, r5
	ld.h 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2004
	tst r5, r27
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2035
	dispose 0x00000000, 0x00000381, [r31]
_Dio_ReadChannelGroup:
	.stack _Dio_ReadChannelGroup = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2084
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2336
	jmp [r31]
_Dio_WriteChannelGroup:
	.stack _Dio_WriteChannelGroup = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2387
	jmp [r31]
_Dio_CheckHWConsistency:
	.stack _Dio_CheckHWConsistency = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2738
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2744
	jmp [r31]
_Dio_MaskedWritePort:
	.stack _Dio_MaskedWritePort = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2792
	prepare 0x00000387, 0x00000000
	mov r7, r25
	mov r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2864
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r27
	add r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2866
	zxh r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2869
	mov r27, r5
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r28
	add r5, r28
	ld.bu 0x00000000[r28], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2873
	jarl32 _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2875
	ld.bu 0x00000008[r28], r5
	add 0x00000008, r28
	cmp 0x00000002, r5
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2878
	mul 0x0000000C, r27, r0
	mov #_Dio_GstPortGroup, r5
	add r27, r5
	mov r29, r27
	shl 0x00000002, r27
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r27
	ld.w 0x00000000[r27], r27
	ld.w 0x00000800[r27], r27
	ld.w 0x00000004[r5], r5
	or r5, r27
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2905
	cmp 0xFFFFFFFF, r27
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2911
	ld.bu 0x00000000[r28], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2915
	shl 0x00000002, r29
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r29
	ld.w 0x00000000[r29], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2907
	not r27, r6
	and r26, r6
	shl 0x00000010, r6
	or r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2915
	st.w r25, 0x00000100[r5]
.BB.LABEL.10_6:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 2962
	jarl32 _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000387, [r31]
_Dio_ReadChannelOutputValue:
	.stack _Dio_ReadChannelOutputValue = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3026
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3100
	ld.hu LOWW(#_Dio_GusChannelOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3101
	zxh r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3102
	mov r5, r6
	shl 0x00000002, r6
	mov #_Dio_GstPortChannel, r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r7
	ld.hu LOWW(#_Dio_GusPortOffset)[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3104
	zxh r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3109
	mov r7, r6
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r8
	add r6, r8
	ld.bu 0x00000008[r8], r6
	cmp 0x00000002, r6
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3107
	mul 0x0000000C, r7, r0
	mov #_Dio_GstPortGroup, r6
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3118
	ld.bu 0x00000000[r6], r7
	shl 0x00000002, r7
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r7, r6
	ld.w 0x00000000[r6], r7
	ld.hu 0x00000000[r7], r7
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3158
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3165
	tst r5, r7
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3195
	jmp [r31]
_Dio_ReadChannelGroupOutputValue:
	.stack _Dio_ReadChannelGroupOutputValue = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3248
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/dio/src/Dio.c", 3450
	jmp [r31]
