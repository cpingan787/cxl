#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\dio\src\Dio.c -oDefaultBuild\Dio.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e025e6dd483a4f22aa56c49146f7c3c3nrqehwqv.g43
#@	compiled at Fri Mar 27 09:50:50 2026

	.file "..\..\Bsw\Mcal\dio\src\Dio.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dio_GaaPortReg_BaseAddress
	.extern _Dio_GstPortGroup
	.extern _Dio_GstPortChannel
	.extern _Dio_GusPortOffset
	.extern _Dio_GusChannelOffset
	.extern _Dio_GusChannelGroupsOffset
	.extern _Dio_GstChannelGroupData
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 528
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 533
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	movea 0x0000003B, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 536
	st.h r2, 0x00000000[r6]
	movea 0x00000078, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 538
	st.h r2, 0x00000002[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 540
	st.b r2, 0x00000005[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 542
	st.b r0, 0x00000006[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 544
	st.b r2, 0x00000007[r6]
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 557
	jmp [r31]
_Dio_ReadPort:
	.stack _Dio_ReadPort = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 707
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 774
	ld.hu LOWW(#_Dio_GusPortOffset)[r2], r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 776
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 785
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 781
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 793
	ld.bu 0x00000000[r5], r2
	shl 0x00000002, r2
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.hu 0x00000200[r2], r10
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 852
	jmp [r31]
_Dio_WritePort:
	.stack _Dio_WritePort = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 906
	prepare 0x00000079, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 994
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r2
	ld.hu LOWW(#_Dio_GusPortOffset)[r2], r21
	add r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 996
	zxh r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 999
	mov r21, r2
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r22
	add r2, r22
	ld.bu 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1003
	jarl _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1006
	ld.bu 0x00000008[r22], r2
	add 0x00000008, r22
	cmp 0x00000002, r2
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1009
	mul 0x0000000C, r21, r0
	mov #_Dio_GstPortGroup, r2
	add r21, r2
	mov r23, r21
	shl 0x00000002, r21
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r21
	ld.w 0x00000000[r21], r21
	ld.w 0x00000800[r21], r21
	ld.w 0x00000004[r2], r2
	or r2, r21
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	movhi 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1039
	or r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1044
	cmp 0xFFFFFFFF, r2
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1055
	ld.bu 0x00000000[r22], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1046
	zxh r21
	xori 0x0000FFFF, r21, r5
	and r5, r20
	shl 0x00000010, r2
	or r20, r2
	movhi 0x0000FFFF, r0, r5
	xor r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1058
	shl 0x00000002, r23
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r23
	ld.w 0x00000000[r23], r5
	st.w r2, 0x00000100[r5]
.BB.LABEL.3_6:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1107
	jarl _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000079, [r31]
_Dio_ReadChannel:
	.stack _Dio_ReadChannel = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1164
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1249
	ld.hu LOWW(#_Dio_GusChannelOffset)[r2], r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1250
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1251
	mov r2, r5
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1253
	zxh r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1260
	mov r6, r5
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r7
	add r5, r7
	ld.bu 0x00000008[r7], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1257
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1269
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.hu 0x00000200[r6], r6
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1324
	shl 0x00000002, r2
	mov #_Dio_GstPortChannel, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1331
	tst r2, r6
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1363
	jmp [r31]
_Dio_WriteChannel:
	.stack _Dio_WriteChannel = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1415
	prepare 0x00000479, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1530
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r2
	ld.hu LOWW(#_Dio_GusChannelOffset)[r2], r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1531
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1532
	shl 0x00000002, r2
	mov #_Dio_GstPortChannel, r21
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1541
	ld.hu 0x00000000[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1532
	ld.bu 0x00000002[r21], r2
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1533
	zxh r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1558
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r23
	add r5, r23
	ld.bu 0x00000000[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1563
	jarl _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1541
	mov r22, r2
	shl 0x00000010, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1549
	or r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1543
	cmp 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1549
	cmov 0x00000002, r22, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1566
	ld.bu 0x00000008[r23], r5
	add 0x00000008, r23
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1569
	mov r24, r5
	shl 0x00000002, r5
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000800[r5], r5
	ld.hu 0x00000000[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1603
	tst r6, r5
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1606
	ld.bu 0x00000000[r23], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1609
	shl 0x00000002, r24
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r24
	ld.w 0x00000000[r24], r5
	st.w r2, 0x00000100[r5]
.BB.LABEL.5_4:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1656
	jarl _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dio_FlipChannel:
	.stack _Dio_FlipChannel = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1730
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1849
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r2
	ld.hu LOWW(#_Dio_GusChannelOffset)[r2], r20
	add r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1850
	zxh r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1851
	mov r20, r2
	shl 0x00000002, r2
	mov #_Dio_GstPortChannel, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1852
	zxh r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1858
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r21
	add r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1866
	ld.bu 0x00000000[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1863
	jarl _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1866
	ld.bu 0x00000008[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1869
	mov r20, r2
	shl 0x00000002, r2
	mov #_Dio_GstPortChannel, r5
	add r2, r5
	shl 0x00000002, r22
	mov #_Dio_GaaPortReg_BaseAddress, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	ld.w 0x00000800[r2], r2
	ld.hu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1876
	tst r5, r2
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1879
	ld.w 0x00000000[r22], r2
	ld.h 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1884
	ld.w 0x00000000[r22], r2
	st.h r5, 0x00000700[r2]
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1900
	ld.w 0x00000000[r22], r22
	ld.hu 0x00000200[r22], r22
.BB.LABEL.6_5:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1988
	jarl _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 1995
	shl 0x00000002, r20
	mov #_Dio_GstPortChannel, r2
	add r20, r2
	ld.h 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2004
	tst r2, r22
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2035
	dispose 0x00000000, 0x00000071, [r31]
_Dio_ReadChannelGroup:
	.stack _Dio_ReadChannelGroup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2084
	mov #_Dio_GstChannelGroupData, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2227
	sub r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2231
	zxh r6
	shr 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2232
	movhi HIGHW1(#_Dio_GusChannelGroupsOffset), r0, r5
	ld.hu LOWW(#_Dio_GusChannelGroupsOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2234
	zxh r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2243
	mov r5, r6
	shl 0x00000002, r6
	add r6, r2
	ld.bu 0x00000003[r2], r2
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2245
	zxh r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2256
	mov r6, r2
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r7
	add r2, r7
	ld.bu 0x00000008[r7], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2248
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2263
	ld.bu 0x00000000[r2], r2
	shl 0x00000002, r2
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	ld.hu 0x00000200[r2], r10
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2309
	shl 0x00000002, r5
	mov #_Dio_GstChannelGroupData, r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2312
	ld.bu 0x00000002[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2309
	ld.h 0x00000000[r2], r2
	and r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2312
	shr r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2336
	zxh r10
	jmp [r31]
_Dio_WriteChannelGroup:
	.stack _Dio_WriteChannelGroup = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2387
	prepare 0x00000479, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2508
	mov #_Dio_GstChannelGroupData, r2
	sub r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2512
	zxh r6
	shr 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2513
	movhi HIGHW1(#_Dio_GusChannelGroupsOffset), r0, r5
	ld.hu LOWW(#_Dio_GusChannelGroupsOffset)[r5], r21
	add r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2514
	zxh r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2556
	mov r21, r5
	shl 0x00000002, r5
	add r5, r2
	ld.bu 0x00000003[r2], r2
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r5
	ld.hu LOWW(#_Dio_GusPortOffset)[r5], r22
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2557
	zxh r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2563
	mov r22, r2
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r23
	add r2, r23
	ld.bu 0x00000000[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2570
	jarl _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2574
	ld.bu 0x00000008[r23], r2
	add 0x00000008, r23
	cmp 0x00000002, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2577
	mov r21, r2
	shl 0x00000002, r2
	mov #_Dio_GstChannelGroupData, r5
	add r2, r5
	mov r24, r2
	shl 0x00000002, r2
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r6, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000800[r2], r2
	ld.hu 0x00000000[r5], r5
	mul 0x0000000C, r22, r0
	mov #_Dio_GstPortGroup, r6
	add r22, r6
	ld.w 0x00000004[r6], r22
	not r22, r22
	and r5, r22
	not r2, r2
	and r2, r22
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2608
	mov r21, r2
	shl 0x00000002, r2
	mov #_Dio_GstChannelGroupData, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	shl r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2611
	cmp 0x00000000, r22
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2617
	ld.bu 0x00000000[r23], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2614
	shl 0x00000002, r21
	mov #_Dio_GstChannelGroupData, r2
	add r21, r2
	ld.h 0x00000000[r2], r2
	and r2, r22
	shl 0x00000010, r22
	zxh r20
	or r22, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2620
	shl 0x00000002, r24
	mov #_Dio_GaaPortReg_BaseAddress, r2
	add r2, r24
	ld.w 0x00000000[r24], r2
	st.w r20, 0x00000100[r2]
.BB.LABEL.8_6:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2676
	jarl _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dio_CheckHWConsistency:
	.stack _Dio_CheckHWConsistency = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2738
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2744
	jmp [r31]
_Dio_MaskedWritePort:
	.stack _Dio_MaskedWritePort = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2792
	prepare 0x00000479, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2864
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r2
	ld.hu LOWW(#_Dio_GusPortOffset)[r2], r22
	add r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2866
	zxh r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2869
	mov r22, r2
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r23
	add r2, r23
	ld.bu 0x00000000[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2873
	jarl _SchM_Enter_Dio_DIO_REGISTER_PROTECTION, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2875
	ld.bu 0x00000008[r23], r2
	add 0x00000008, r23
	cmp 0x00000002, r2
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2878
	mul 0x0000000C, r22, r0
	mov #_Dio_GstPortGroup, r2
	add r22, r2
	mov r24, r22
	shl 0x00000002, r22
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r5, r22
	ld.w 0x00000000[r22], r22
	ld.w 0x00000800[r22], r22
	ld.w 0x00000004[r2], r2
	or r2, r22
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2905
	cmp 0xFFFFFFFF, r22
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2911
	ld.bu 0x00000000[r23], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2915
	shl 0x00000002, r24
	mov #_Dio_GaaPortReg_BaseAddress, r2
	add r2, r24
	ld.w 0x00000000[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2907
	not r22, r5
	and r21, r5
	shl 0x00000010, r5
	or r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2915
	st.w r20, 0x00000100[r2]
.BB.LABEL.10_6:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 2962
	jarl _SchM_Exit_Dio_DIO_REGISTER_PROTECTION, r31
	dispose 0x00000000, 0x00000479, [r31]
_Dio_ReadChannelOutputValue:
	.stack _Dio_ReadChannelOutputValue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3026
	movhi HIGHW1(#_Dio_GusChannelOffset), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3100
	ld.hu LOWW(#_Dio_GusChannelOffset)[r2], r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3101
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3102
	mov r2, r5
	shl 0x00000002, r5
	mov #_Dio_GstPortChannel, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3104
	zxh r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3109
	mov r6, r5
	mul 0x0000000C, r5, r0
	mov #_Dio_GstPortGroup, r7
	add r5, r7
	ld.bu 0x00000008[r7], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3107
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3118
	ld.bu 0x00000000[r5], r6
	shl 0x00000002, r6
	mov #_Dio_GaaPortReg_BaseAddress, r5
	add r6, r5
	ld.w 0x00000000[r5], r6
	ld.hu 0x00000000[r6], r6
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3158
	shl 0x00000002, r2
	mov #_Dio_GstPortChannel, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3165
	tst r2, r6
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3195
	jmp [r31]
_Dio_ReadChannelGroupOutputValue:
	.stack _Dio_ReadChannelGroupOutputValue = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3248
	mov #_Dio_GstChannelGroupData, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3358
	sub r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3361
	zxh r6
	shr 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3362
	movhi HIGHW1(#_Dio_GusChannelGroupsOffset), r0, r5
	ld.hu LOWW(#_Dio_GusChannelGroupsOffset)[r5], r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3363
	zxh r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3372
	mov r5, r6
	shl 0x00000002, r6
	add r6, r2
	ld.bu 0x00000003[r2], r2
	movhi HIGHW1(#_Dio_GusPortOffset), r0, r6
	ld.hu LOWW(#_Dio_GusPortOffset)[r6], r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3374
	zxh r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3384
	mov r6, r2
	mul 0x0000000C, r2, r0
	mov #_Dio_GstPortGroup, r7
	add r2, r7
	ld.bu 0x00000008[r7], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3377
	mul 0x0000000C, r6, r0
	mov #_Dio_GstPortGroup, r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3390
	ld.bu 0x00000000[r2], r2
	shl 0x00000002, r2
	mov #_Dio_GaaPortReg_BaseAddress, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	ld.hu 0x00000000[r2], r10
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3425
	shl 0x00000002, r5
	mov #_Dio_GstChannelGroupData, r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3428
	ld.bu 0x00000002[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3425
	ld.h 0x00000000[r2], r2
	and r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3428
	shr r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/dio/src/Dio.c", 3450
	zxh r10
	jmp [r31]
