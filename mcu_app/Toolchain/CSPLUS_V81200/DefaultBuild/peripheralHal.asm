#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\peripheralHal.c -oDefaultBuild\peripheralHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_12a4f8ef561a4db1b310ee9ee3bd141djlkrh4rl.tkl
#@	compiled at Fri Mar 27 09:51:06 2026

	.file "..\..\Srcode\hal\source\peripheralHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _g_adBuffer, 52
	.public _PeripheralHalGetKl15Status
	.extern _Dio_ReadChannel
	.public _PeripheralHalGetKl30Status
	.public _PeripheralHalAdGet
	.extern _R_PORT_SetGpioOutput
	.public _PeripheralHalSetMode
	.public _PeripheralHalMcuHardReset
	.public _PeripheralHalInit

	.section .text, text
_PeripheralHalGetKl15Status:
	.stack _PeripheralHalGetKl15Status = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 615
	prepare 0x00000001, 0x00000000
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 617
	jarl _Dio_ReadChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 623
	cmp 0x00000001, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 625
	dispose 0x00000000, 0x00000001, [r31]
_PeripheralHalGetKl30Status:
	.stack _PeripheralHalGetKl30Status = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 627
	prepare 0x00000001, 0x00000000
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 629
	jarl _Dio_ReadChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 635
	cmp 0x00000001, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 637
	dispose 0x00000000, 0x00000001, [r31]
_PeripheralHalAdGet:
	.stack _PeripheralHalAdGet = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1078
	addi 0xFFFFFFE8, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1083
	blt9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.bb545_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	ori 0x0000FFFF, r0, r10
	br9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; if_break_bb
	movea 0x00000017, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1092
	cmp r2, r6
	bh9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	mov r6, r1
	shl 0x00000001, r1
	jmp #.SWITCH.LABEL.3_14[r1]
.SWITCH.LABEL.3_14:
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_4
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_1
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_12
.SWITCH.LABEL.3_14.END:
.BB.LABEL.3_4:	; switch_clause_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1214
	movhi HIGHW1(#_g_adBuffer+0x00000032), r0, r2
	ld.bu LOWW(#_g_adBuffer+0x00000032)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1215
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; switch_clause_bb.bb545_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	ori 0x0000FFFE, r0, r10
.BB.LABEL.3_6:	; bb545
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1401
	sxh r10
	jmp [r31]
.BB.LABEL.3_7:	; if_then_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1213
	add r6, r6
	mov #_g_adBuffer, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1217
	ld.hu 0x00000000[r6], r2
	movea 0x00000CE4, r0, r5
	mul r5, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1218
	shr 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1219
	mulu 0x0000012C, r2, r0
	movea 0x00000064, r0, r5
.BB.LABEL.3_8:	; if_then_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	divhu r5, r2, r0
.BB.LABEL.3_9:	; if_then_bb229
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1401
	jmp [r31]
.BB.LABEL.3_10:	; switch_clause_bb311
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1267
	movhi HIGHW1(#_g_adBuffer+0x00000032), r0, r2
	ld.bu LOWW(#_g_adBuffer+0x00000032)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1268
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_11:	; if_then_bb322
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1266
	add r6, r6
	mov #_g_adBuffer, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1270
	ld.hu 0x00000000[r6], r2
	movea 0x00000CE4, r0, r5
	mul r5, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1271
	shr 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1272
	mul 0x000000DC, r2, r0
	movea 0x00000014, r0, r5
	br9 .BB.LABEL.3_8
.BB.LABEL.3_12:	; switch_clause_bb519
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	movhi HIGHW1(#_g_adBuffer+0x00000032), r0, r2
	ld.bu LOWW(#_g_adBuffer+0x00000032)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_13:	; if_then_bb530
	add r6, r6
	mov #_g_adBuffer, r2
	add r2, r6
	ld.hu 0x00000000[r6], r2
	movea 0x00000CE4, r0, r5
	mul r5, r2, r0
	shr 0x0000000C, r2
	br9 .BB.LABEL.3_9
_PeripheralStartSysLed.1:
	.stack _PeripheralStartSysLed.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1551
	movhi 0x0000FFC1, r0, r2
	ld.hu 0x000041CC[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x000041CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1552
	ld.h 0x000041CC[r2], r5
	st.h r5, 0x000041CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1553
	ld.hu 0x000000CC[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x000000CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1554
	ld.h 0x000000CC[r2], r5
	st.h r5, 0x000000CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1555
	ld.hu 0x000003CC[r2], r5
	andi 0x0000FFFD, r5, r5
	st.h r5, 0x000003CC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1556
	ld.h 0x000003CC[r2], r5
	st.h r5, 0x000003CC[r2]
	jmp [r31]
_PeripheralHalStopSysLed.1:
	.stack _PeripheralHalStopSysLed.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1559
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1562
	mov r7, r8
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000001, [r31]
_PeripheralHalSetMode:
	.stack _PeripheralHalSetMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1576
	prepare 0x00000061, 0x00000000
	mov 0x0000000C, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1578
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	mov 0x00000001, r20
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1586
	mov r21, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1588
	mov r20, r6
	mov r21, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x00000004, r21
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1590
	mov r21, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1592
	mov r21, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1599
	mov r20, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x00000006, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1601
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x00000004, r21
	mov 0x00000005, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1603
	mov r21, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	mov 0x0000000A, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1605
	mov r21, r6
	mov r20, r8
	jarl _R_PORT_SetGpioOutput, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1607
	jarl _PeripheralHalStopSysLed.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_PeripheralHalMcuHardReset:
	.stack _PeripheralHalMcuHardReset = 0
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 0
	movea 0x000000A5, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1627
	st23.w r2, 0xFFF80000[r0]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1628
	movhi 0x0000FFF8, r0, r2
	mov 0x00000001, r5
	st.w r5, 0x00000A04[r2]
	mov 0xFFFFFFFE, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1629
	st.w r6, 0x00000A04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1630
	st.w r5, 0x00000A04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1624
	ld23.w 0xFFC14B00[r0], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_1
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1632
	jmp [r31]
_PeripheralHalInit:
	.stack _PeripheralHalInit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1779
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1799
	movhi 0x0000FFC1, r0, r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00004C2C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1800
	ld.w 0x0000462C[r2], r6
	movea 0xFFFFEFFF, r0, r7
	and r7, r6
	st.w r6, 0x0000462C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1801
	ld.w 0x0000462C[r2], r6
	st.w r6, 0x0000462C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1802
	st.w r5, 0x00004C2C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1803
	ld.w 0x0000452C[r2], r6
	and r7, r6
	st.w r6, 0x0000452C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1804
	ld.w 0x0000452C[r2], r6
	st.w r6, 0x0000452C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1805
	ld.hu 0x0000412C[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x0000412C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1806
	ld.h 0x0000412C[r2], r6
	st.h r6, 0x0000412C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1807
	ld.hu 0x0000002C[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x0000002C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1808
	ld.h 0x0000002C[r2], r6
	ori 0x00001000, r6, r6
	st.h r6, 0x0000002C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1809
	ld.hu 0x0000032C[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x0000032C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1810
	ld.h 0x0000032C[r2], r6
	st.h r6, 0x0000032C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1813
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1814
	ld.w 0x00004604[r2], r6
	mov 0xFFFFFFFD, r8
	and r8, r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1815
	ld.w 0x00004604[r2], r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1816
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1817
	ld.w 0x00004504[r2], r6
	and r8, r6
	st.w r6, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1818
	ld.w 0x00004504[r2], r6
	st.w r6, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1819
	ld.hu 0x00004104[r2], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1820
	ld.h 0x00004104[r2], r6
	st.h r6, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1821
	ld.hu 0x00000004[r2], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1822
	ld.h 0x00000004[r2], r6
	ori 0x00000002, r6, r6
	st.h r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1823
	ld.hu 0x00000304[r2], r6
	andi 0x0000FFFD, r6, r6
	st.h r6, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1824
	ld.h 0x00000304[r2], r6
	st.h r6, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1827
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1828
	ld.w 0x00004600[r2], r6
	movea 0xFFFFFFDF, r0, r8
	and r8, r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1829
	ld.w 0x00004600[r2], r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1830
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1831
	ld.w 0x00004500[r2], r6
	and r8, r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1832
	ld.w 0x00004500[r2], r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1833
	ld.hu 0x00004100[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1834
	ld.h 0x00004100[r2], r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1835
	ld.hu 0x00000000[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1836
	ld.h 0x00000000[r2], r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1837
	ld.hu 0x00000300[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1838
	ld.h 0x00000300[r2], r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1841
	ld.w 0x00004520[r2], r6
	movea 0xFFFFFF7F, r0, r9
	and r9, r6
	st.w r6, 0x00004520[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1842
	ld.w 0x00004520[r2], r6
	st.w r6, 0x00004520[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1843
	ld.hu 0x00004120[r2], r6
	andi 0x0000FF7F, r6, r6
	st.h r6, 0x00004120[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1844
	ld.h 0x00004120[r2], r6
	st.h r6, 0x00004120[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1845
	ld.hu 0x00000020[r2], r6
	andi 0x0000FF7F, r6, r6
	st.h r6, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1846
	ld.h 0x00000020[r2], r6
	st.h r6, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1847
	ld.hu 0x00000320[r2], r6
	andi 0x0000FF7F, r6, r6
	st.h r6, 0x00000320[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1848
	ld.h 0x00000320[r2], r6
	st.h r6, 0x00000320[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1851
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1852
	ld.w 0x00004600[r2], r6
	and r7, r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1853
	ld.w 0x00004600[r2], r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1854
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1855
	ld.w 0x00004500[r2], r6
	and r7, r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1856
	ld.w 0x00004500[r2], r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1857
	ld.hu 0x00004100[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1858
	ld.h 0x00004100[r2], r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1859
	ld.hu 0x00000000[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1860
	ld.h 0x00000000[r2], r6
	ori 0x00001000, r6, r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1861
	ld.hu 0x00000300[r2], r6
	andi 0x0000EFFF, r6, r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1862
	ld.h 0x00000300[r2], r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1865
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1866
	ld.w 0x00004604[r2], r6
	movea 0xFFFFFFBF, r0, r7
	and r7, r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1867
	ld.w 0x00004604[r2], r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1868
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1869
	ld.w 0x00004504[r2], r6
	and r7, r6
	st.w r6, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1870
	ld.w 0x00004504[r2], r6
	st.w r6, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1871
	ld.hu 0x00004104[r2], r6
	andi 0x0000FFBF, r6, r6
	st.h r6, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1872
	ld.h 0x00004104[r2], r6
	st.h r6, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1873
	ld.hu 0x00000004[r2], r6
	andi 0x0000FFBF, r6, r6
	st.h r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1874
	ld.h 0x00000004[r2], r6
	st.h r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1875
	ld.hu 0x00000304[r2], r6
	andi 0x0000FFBF, r6, r6
	st.h r6, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1876
	ld.h 0x00000304[r2], r6
	st.h r6, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1879
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1880
	ld.w 0x00004628[r2], r6
	and r8, r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1881
	ld.w 0x00004628[r2], r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1882
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1883
	ld.w 0x00004528[r2], r6
	and r8, r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1884
	ld.w 0x00004528[r2], r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1885
	ld.hu 0x00004128[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1886
	ld.h 0x00004128[r2], r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1887
	ld.hu 0x00000028[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1888
	ld.h 0x00000028[r2], r6
	ori 0x00000020, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1889
	ld.hu 0x00000328[r2], r6
	andi 0x0000FFDF, r6, r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1890
	ld.h 0x00000328[r2], r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1893
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1894
	ld.w 0x00004628[r2], r6
	movea 0xFFFFFBFF, r0, r7
	and r7, r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1895
	ld.w 0x00004628[r2], r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1896
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1897
	ld.w 0x00004528[r2], r6
	and r7, r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1898
	ld.w 0x00004528[r2], r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1899
	ld.hu 0x00004128[r2], r6
	andi 0x0000FBFF, r6, r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1900
	ld.h 0x00004128[r2], r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1901
	ld.hu 0x00000028[r2], r6
	andi 0x0000FBFF, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1902
	ld.h 0x00000028[r2], r6
	ori 0x00000400, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1903
	ld.hu 0x00000328[r2], r6
	andi 0x0000FBFF, r6, r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1904
	ld.h 0x00000328[r2], r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1907
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1908
	ld.w 0x00004604[r2], r6
	movea 0xFFFFF7FF, r0, r7
	and r7, r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1909
	ld.w 0x00004604[r2], r6
	st.w r6, 0x00004604[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1910
	st.w r5, 0x00004C04[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1911
	ld.w 0x00004504[r2], r5
	and r7, r5
	st.w r5, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1912
	ld.w 0x00004504[r2], r5
	st.w r5, 0x00004504[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1913
	ld.hu 0x00004104[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1914
	ld.h 0x00004104[r2], r5
	st.h r5, 0x00004104[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1915
	ld.hu 0x00000004[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1916
	ld.h 0x00000004[r2], r5
	ori 0x00000800, r5, r5
	st.h r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1917
	ld.hu 0x00000304[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1918
	ld.h 0x00000304[r2], r5
	st.h r5, 0x00000304[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/peripheralHal.c", 1921
	jarl _PeripheralStartSysLed.1, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
	.align 2
_g_adBuffer:
	.ds (52)
