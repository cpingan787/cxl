#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Srcode\hal\source\batteryHal.c -oDefaultBuild\batteryHal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_602c32b2a9194d358c25a9e7ca188893fqc3no3l.4wz
#@	compiled at Fri Mar 27 09:51:00 2026

	.file "..\..\Srcode\hal\source\batteryHal.c"

	$reg_mode 32
	.dbl_size 8

	.public _BatteryHalInit
	.public _BatteryHalEnableOut
	.extern _R_PORT_SetGpioOutput
	.public _BatteryHalDisableOut
	.public _BatteryHalEnableCharge
	.public _BatteryHalDisableCharge
	.public _BatteryHalGetVoltage
	.extern _PeripheralHalAdGet
	.public _BatteryHalGetNtc
	.public _BatteryHalEnableCheck
	.public _BatteryHalGetState
	.extern _R_PORT_GetLevel
	.extern _Dio_ReadChannel

	.section .text, text
_BatteryHalInit:
	.stack _BatteryHalInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 19
	movhi 0x0000FFC1, r0, r2
	movea 0x000000A5, r0, r5
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 20
	ld.w 0x00004628[r2], r6
	mov 0xFFFF7FFF, r7
	and r7, r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 21
	ld.w 0x00004628[r2], r6
	st.w r6, 0x00004628[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 22
	st.w r5, 0x00004C28[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 23
	ld.w 0x00004528[r2], r6
	and r7, r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 24
	ld.w 0x00004528[r2], r6
	st.w r6, 0x00004528[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 25
	ld.hu 0x00004128[r2], r6
	andi 0x00007FFF, r6, r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 26
	ld.h 0x00004128[r2], r6
	st.h r6, 0x00004128[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 27
	ld.hu 0x00000028[r2], r6
	andi 0x00007FFF, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 28
	ld.h 0x00000028[r2], r6
	ori 0x00008000, r6, r6
	st.h r6, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 29
	ld.hu 0x00000328[r2], r6
	andi 0x00007FFF, r6, r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 30
	ld.h 0x00000328[r2], r6
	st.h r6, 0x00000328[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 33
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 34
	ld.w 0x00004600[r2], r6
	movea 0xFFFFDFFF, r0, r7
	and r7, r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 35
	ld.w 0x00004600[r2], r6
	st.w r6, 0x00004600[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 36
	st.w r5, 0x00004C00[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 37
	ld.w 0x00004500[r2], r6
	and r7, r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 38
	ld.w 0x00004500[r2], r6
	st.w r6, 0x00004500[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 39
	ld.hu 0x00004100[r2], r6
	andi 0x0000DFFF, r6, r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 40
	ld.h 0x00004100[r2], r6
	st.h r6, 0x00004100[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 41
	ld.hu 0x00000000[r2], r6
	andi 0x0000DFFF, r6, r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 42
	ld.h 0x00000000[r2], r6
	st.h r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 43
	ld.hu 0x00000300[r2], r6
	andi 0x0000DFFF, r6, r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 44
	ld.h 0x00000300[r2], r6
	st.h r6, 0x00000300[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 47
	st.w r5, 0x00004C50[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 48
	ld.w 0x00004650[r2], r6
	movea 0xFFFFFFDF, r0, r7
	and r7, r6
	st.w r6, 0x00004650[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 49
	ld.w 0x00004650[r2], r6
	st.w r6, 0x00004650[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 50
	st.w r5, 0x00004C50[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 51
	ld.w 0x00004550[r2], r5
	and r7, r5
	st.w r5, 0x00004550[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 52
	ld.w 0x00004550[r2], r5
	st.w r5, 0x00004550[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 53
	ld.hu 0x00004150[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00004150[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 54
	ld.h 0x00004150[r2], r5
	st.h r5, 0x00004150[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 55
	ld.hu 0x00000050[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00000050[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 56
	ld.h 0x00000050[r2], r5
	st.h r5, 0x00000050[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 57
	ld.hu 0x00000350[r2], r5
	andi 0x0000FFDF, r5, r5
	st.h r5, 0x00000350[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 58
	ld.h 0x00000350[r2], r5
	st.h r5, 0x00000350[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 61
	jmp [r31]
_BatteryHalEnableOut:
	.stack _BatteryHalEnableOut = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 71
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	mov 0x0000000F, r7
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 73
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000001, [r31]
_BatteryHalDisableOut:
	.stack _BatteryHalDisableOut = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 84
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r8
	mov 0x0000000F, r7
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 86
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000001, [r31]
_BatteryHalEnableCharge:
	.stack _BatteryHalEnableCharge = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 97
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r8
	mov 0x0000000D, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 99
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000001, [r31]
_BatteryHalDisableCharge:
	.stack _BatteryHalDisableCharge = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 109
	prepare 0x00000001, 0x00000000
	mov 0x0000000D, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 111
	mov r6, r8
	jarl _R_PORT_SetGpioOutput, r31
	dispose 0x00000000, 0x00000001, [r31]
_BatteryHalGetVoltage:
	.stack _BatteryHalGetVoltage = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 123
	prepare 0x00000041, 0x00000004
	mov r6, r20
	mov r3, r7
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 127
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 128
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 130
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 131
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.6_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 137
	dispose 0x00000004, 0x00000041, [r31]
_BatteryHalGetNtc:
	.stack _BatteryHalGetNtc = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 148
	prepare 0x00000041, 0x00000004
	mov r6, r20
	mov r3, r7
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 152
	jarl _PeripheralHalAdGet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 153
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 155
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 156
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.7_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 0
	mov 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 162
	dispose 0x00000004, 0x00000041, [r31]
_BatteryHalEnableCheck:
	.stack _BatteryHalEnableCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 172
	jmp [r31]
_BatteryHalGetState:
	.stack _BatteryHalGetState = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 187
	prepare 0x00000001, 0x00000000
	mov 0x0000000D, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 189
	jarl _R_PORT_GetLevel, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.9_5
.BB.LABEL.9_2:	; if_else_bb
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 193
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_else_bb.bb14_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_else_bb11
	mov 0x00000000, r10
.BB.LABEL.9_5:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Srcode/hal/source/batteryHal.c", 201
	dispose 0x00000000, 0x00000001, [r31]
