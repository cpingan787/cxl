#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\BswM_LCfg.c -oDefaultBuild\BswM_LCfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2aee60b369ce4c47bf42812415b808474rqahtc1.y4y
#@	compiled at Fri Mar 27 09:50:28 2026

	.file "..\..\Bsw\Config\BSW_Config\BswM_LCfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _BswM_CoreLinkCfg, 4
	.extern _User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN
	.extern _Act_Bsw_Allow_GoDown_Function
	.extern _WakeupSource_Validated
	.extern _BswM_GetEcuMState
	.extern _BswM_GetDcmCurModeStatus
	.extern _BswM_GetEcuMWakeSrcStatus
	.extern _BswM_GetGeneRqstStatus
	.extern _BswM_GetCanSmIndStatus

	.section .text, text
_BswM_Rule0Expression_Core0_Par0.1:
	.stack _BswM_Rule0Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 322
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 325
	jarl _BswM_GetEcuMState, r31
	add 0xFFFFFFF0, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 330
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule1Expression_Core0_Par0.1:
	.stack _BswM_Rule1Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 345
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 349
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000008, r10
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000009, r10
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 355
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 358
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule2Expression_Core0_Par0.1:
	.stack _BswM_Rule2Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 373
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 377
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000002, r10
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000003, r10
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000A, r10
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000B, r10
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 383
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 386
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule3Expression_Core0_Par0.1:
	.stack _BswM_Rule3Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 401
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 405
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000002, r10
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000008, r10
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 411
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 414
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule4Expression_Core0_Par0.1:
	.stack _BswM_Rule4Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 429
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 433
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000003, r10
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000009, r10
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000B, r10
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 439
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 442
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule5Expression_Core0_Par0.1:
	.stack _BswM_Rule5Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 457
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 461
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000004, r10
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000006, r10
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000008, r10
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 467
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 470
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule6Expression_Core0_Par0.1:
	.stack _BswM_Rule6Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 485
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 489
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000005, r10
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000007, r10
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000009, r10
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb26
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x0000000B, r10
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 495
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.7_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 498
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule7Expression_Core0_Par0.1:
	.stack _BswM_Rule7Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 513
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 517
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000001, r6
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; bb14
	mov 0x00000000, r6
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_3:	; bb25
	mov 0x00000000, r6
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 523
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 526
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule8Expression_Core0_Par0.1:
	.stack _BswM_Rule8Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 541
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 545
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_2:	; bb13
	mov 0x00000001, r6
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_3:	; bb25
	mov 0x00000000, r6
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_4:	; bb37
	mov 0x00000002, r6
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 552
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 555
	dispose 0x00000000, 0x00000001, [r31]
_BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0.1:
	.stack _BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 570
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 574
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000003, r10
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 578
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 581
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule9Expression_Core0_Par0.1:
	.stack _BswM_Rule9Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 587
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 591
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000003, r10
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	jarl _BswM_RefLE_EcuM_WakeupSourceClear_EcuMWakeupSource_CAN2_Core0_Par0.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; bb13
	mov 0x00000001, r6
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000003, r10
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 596
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 599
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule10Expression_Core0_Par0.1:
	.stack _BswM_Rule10Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 614
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 617
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000002, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 622
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule11Expression_Core0_Par0.1:
	.stack _BswM_Rule11Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 637
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 640
	jarl _BswM_GetGeneRqstStatus, r31
	cmp 0x00000001, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 645
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule12Expression_Core0_Par0.1:
	.stack _BswM_Rule12Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 660
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 663
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000000, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 668
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule13Expression_Core0_Par0.1:
	.stack _BswM_Rule13Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 683
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 686
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000001, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 691
	dispose 0x00000000, 0x00000001, [r31]
_BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0.1:
	.stack _BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 706
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 710
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r6
	jarl _BswM_GetDcmCurModeStatus, r31
	cmp 0x00000008, r10
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 714
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 717
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule14Expression_Core0_Par0.1:
	.stack _BswM_Rule14Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 723
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 727
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	jarl _BswM_RefLE_CanSMIndi_FullCom_BCan2_Core0_Par0.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 731
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 734
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule15Expression_Core0_Par0.1:
	.stack _BswM_Rule15Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 749
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 752
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000003, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 757
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule16Expression_Core0_Par0.1:
	.stack _BswM_Rule16Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 772
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 775
	jarl _BswM_GetCanSmIndStatus, r31
	cmp 0x00000002, r10
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 780
	dispose 0x00000000, 0x00000001, [r31]
_BswM_Rule17Expression_Core0_Par0.1:
	.stack _BswM_Rule17Expression_Core0_Par0.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 804
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 808
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000002, r10
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000001, r6
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 812
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/BswM_LCfg.c", 815
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
_BswM_EvRqst_ComMInitReset_LCfg_Core0_Par0.1:
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.align 4
_BswM_EvRqstLCfg_Core0_Par0.2:
	.dw #_BswM_EvRqst_ComMInitReset_LCfg_Core0_Par0.1
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
_BswM_CanSMInd0Rule_Core0_Par0.3:
	.db 0x07,0x08,0x09,0x0C,0x0D,0x0E,0x0F,0x10
	.align 4
_BswM_CansmInd_LCfg_Core0_Par0.4:
	.dw #_BswM_CanSMInd0Rule_Core0_Par0.3
	.db 0x08
	.ds (3)
	.dw 0x00000001
_BswM_CansmIndChRef_Core0_Par0.5:
	.ds (1)
_BswM_DcmComModeRqstInd0Rule_Core0_Par0.6:
	.db 0x01,0x02,0x03,0x04,0x05,0x06,0x0E
	.align 4
_BswM_DcmComModeRqst_LCfg_Core0_Par0.7:
	.dw #_BswM_DcmComModeRqstInd0Rule_Core0_Par0.6
	.db 0x07
	.ds (3)
	.dw 0x00000001
_BswM_DcmChRef_Core0_Par0.8:
	.ds (1)
_BswM_EcuMState0Rule_Core0_Par0.9:
	.ds (1)
	.align 4
_BswM_EcuMState_LCfg_Core0_Par0.10:
	.dw #_BswM_EcuMState0Rule_Core0_Par0.9
	.db 0x01
	.ds (3)
	.dw 0x00000001
_BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0.11:
	.db 0x07,0x08,0x09,0x11
_BswM_EcuMWkSrcRqstInd1Rule_Core0_Par0.12:
	.db 0x09,0x11
	.align 4
_BswM_EcuMWkSrcRqst_LCfg_Core0_Par0.13:
	.dw #_BswM_EcuMWkSrcRqstInd0Rule_Core0_Par0.11
	.db 0x04
	.ds (3)
	.dw 0x00000001
	.dw #_BswM_EcuMWkSrcRqstInd1Rule_Core0_Par0.12
	.db 0x02
	.ds (3)
	.dw 0x00000001
	.align 4
_BswM_EcuMWkSrcRef_Core0_Par0.14:
	.dw 0x00000020,0x00000040
_BswM_GeneRqstInd0Rule_Core0_Par0.15:
	.db 0x07,0x08
_BswM_GeneRqstInd1Rule_Core0_Par0.16:
	.db 0x07,0x08,0x0A,0x0B
_BswM_GeneRqstInd2Rule_Core0_Par0.17:
	.db 0x08
	.align 4
_BswM_GeneRqst_LCfg_Core0_Par0.18:
	.dw #_BswM_GeneRqstInd0Rule_Core0_Par0.15
	.db 0x02
	.ds (3)
	.dw 0x00000001
	.dw #_BswM_GeneRqstInd1Rule_Core0_Par0.16
	.db 0x04
	.ds (3)
	.dw 0x00000001
	.dw #_BswM_GeneRqstInd2Rule_Core0_Par0.17
	.db 0x01
	.ds (3)
	.dw 0x00000001
	.align 2
_BswM_GenRqstUserRef_Core0_Par0.19:
	.dhw 0x0001,0x0002,0x0003
	.align 4
_BswM_ModeRqstLCfg_Core0_Par0.20:
	.dw #_BswM_CansmInd_LCfg_Core0_Par0.4
	.dw #_BswM_CansmIndChRef_Core0_Par0.5
	.ds (4)
	.ds (4)
	.dw #_BswM_DcmComModeRqst_LCfg_Core0_Par0.7
	.dw #_BswM_DcmChRef_Core0_Par0.8
	.dw #_BswM_EcuMState_LCfg_Core0_Par0.10
	.dw #_BswM_EcuMWkSrcRqst_LCfg_Core0_Par0.13
	.dw #_BswM_EcuMWkSrcRef_Core0_Par0.14
	.ds (4)
	.ds (4)
	.dw #_BswM_GeneRqst_LCfg_Core0_Par0.18
	.dw #_BswM_GenRqstUserRef_Core0_Par0.19
_BswM_Rule0TrueActList_Core0_Par0.21:
	.db 0x06
_BswM_Rule1TrueActList_Core0_Par0.22:
	.ds (1)
_BswM_Rule2TrueActList_Core0_Par0.23:
	.db 0x01
_BswM_Rule3TrueActList_Core0_Par0.24:
	.db 0x02
_BswM_Rule4TrueActList_Core0_Par0.25:
	.db 0x03
_BswM_Rule5TrueActList_Core0_Par0.26:
	.db 0x04
_BswM_Rule6TrueActList_Core0_Par0.27:
	.db 0x05
_BswM_Rule7TrueActList_Core0_Par0.28:
	.db 0x07
_BswM_Rule8TrueActList_Core0_Par0.29:
	.db 0x08
_BswM_Rule9TrueActList_Core0_Par0.30:
	.db 0x0A
_BswM_Rule10TrueActList_Core0_Par0.31:
	.db 0x0B
_BswM_Rule11TrueActList_Core0_Par0.32:
	.db 0x0C
_BswM_Rule12TrueActList_Core0_Par0.33:
	.db 0x0D
_BswM_Rule13TrueActList_Core0_Par0.34:
	.db 0x0E
_BswM_Rule14TrueActList_Core0_Par0.35:
	.db 0x0F
_BswM_Rule15TrueActList_Core0_Par0.36:
	.db 0x10
_BswM_Rule16FalseActList_Core0_Par0.37:
	.db 0x12
_BswM_Rule16TrueActList_Core0_Par0.38:
	.db 0x11
_BswM_Rule17TrueActList_Core0_Par0.39:
	.db 0x09
	.align 4
_BswM_RuleLCfg_Core0_Par0.40:
	.dw #_BswM_Rule0Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule0TrueActList_Core0_Par0.21
	.dw #_BswM_Rule1Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule1TrueActList_Core0_Par0.22
	.dw #_BswM_Rule2Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule2TrueActList_Core0_Par0.23
	.dw #_BswM_Rule3Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule3TrueActList_Core0_Par0.24
	.dw #_BswM_Rule4Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule4TrueActList_Core0_Par0.25
	.dw #_BswM_Rule5Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule5TrueActList_Core0_Par0.26
	.dw #_BswM_Rule6Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule6TrueActList_Core0_Par0.27
	.dw #_BswM_Rule7Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule7TrueActList_Core0_Par0.28
	.dw #_BswM_Rule8Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule8TrueActList_Core0_Par0.29
	.dw #_BswM_Rule9Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule9TrueActList_Core0_Par0.30
	.dw #_BswM_Rule10Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule10TrueActList_Core0_Par0.31
	.dw #_BswM_Rule11Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule11TrueActList_Core0_Par0.32
	.dw #_BswM_Rule12Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule12TrueActList_Core0_Par0.33
	.dw #_BswM_Rule13Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule13TrueActList_Core0_Par0.34
	.dw #_BswM_Rule14Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule14TrueActList_Core0_Par0.35
	.dw #_BswM_Rule15Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule15TrueActList_Core0_Par0.36
	.dw #_BswM_Rule16Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.dw #_BswM_Rule16FalseActList_Core0_Par0.37
	.dw #_BswM_Rule16TrueActList_Core0_Par0.38
	.dw #_BswM_Rule17Expression_Core0_Par0.1
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.dw #_BswM_Rule17TrueActList_Core0_Par0.39
	.align 4
_BswM_ActListItemsRefAction_Core0_Par0.41:
	.dw 0x00000010
	.ds (1)
	.ds (3)
	.dw 0x00000010
	.db 0x01
	.ds (3)
	.dw 0x00000010
	.db 0x02
	.ds (3)
	.dw 0x00000010
	.db 0x03
	.ds (3)
	.dw 0x0000000F
	.ds (1)
	.ds (3)
	.dw 0x0000000F
	.db 0x01
	.ds (3)
	.dw 0x00000007
	.ds (1)
	.ds (3)
	.dw 0x00000007
	.db 0x01
	.ds (3)
	.dw 0x00000001
	.ds (1)
	.ds (3)
	.dw 0x00000010
	.db 0x05
	.ds (3)
	.dw 0x00000010
	.db 0x04
	.ds (3)
	.dw 0x00000010
	.db 0x01
	.ds (3)
	.dw 0x00000010
	.db 0x03
	.ds (3)
	.dw 0x0000001D
	.db 0x01
	.ds (3)
	.dw 0x00000011
	.db 0x01
	.ds (3)
	.dw 0x00000006
	.ds (1)
	.ds (3)
	.dw 0x0000001D
	.db 0x02
	.ds (3)
	.dw 0x00000011
	.ds (1)
	.ds (3)
	.dw 0x0000001D
	.ds (1)
	.ds (3)
	.dw 0x00000003
	.ds (1)
	.ds (3)
	.dw 0x00000003
	.db 0x01
	.ds (3)
	.dw 0x00000010
	.db 0x03
	.ds (3)
	.dw 0x00000005
	.db 0x01
	.ds (3)
	.dw 0x00000010
	.db 0x03
	.ds (3)
	.dw 0x00000005
	.ds (1)
	.ds (3)
	.dw 0x00000010
	.db 0x02
	.ds (3)
	.dw 0x00000010
	.ds (1)
	.ds (3)
	.dw 0x00000010
	.db 0x03
	.ds (3)
	.dw 0x00000005
	.db 0x01
	.ds (3)
	.dw 0x00000005
	.ds (1)
	.ds (3)
	.dw 0x00000005
	.db 0x01
	.ds (3)
	.dw 0x00000011
	.ds (1)
	.ds (3)
	.dw 0x00000011
	.db 0x01
	.ds (3)
	.align 4
_BswM_ActList0Ref_Core0_Par0.42:
	.ds (4)
	.ds (4)
	.dw #_BswM_ActListItemsRefAction_Core0_Par0.41
	.align 4
_BswM_ActList1Ref_Core0_Par0.43:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 8
	.align 4
_BswM_ActList2Ref_Core0_Par0.44:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 16
	.align 4
_BswM_ActList3Ref_Core0_Par0.45:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 24
	.align 4
_BswM_ActList4Ref_Core0_Par0.46:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 32
	.align 4
_BswM_ActList5Ref_Core0_Par0.47:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 40
	.align 4
_BswM_ActList6Ref_Core0_Par0.48:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 48
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 56
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 64
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 72
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 80
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 88
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 96
	.align 4
_BswM_ActList7Ref_Core0_Par0.49:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 104
	.align 4
_BswM_ActList8Ref_Core0_Par0.50:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 112
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 120
	.align 4
_BswM_ActList9Ref_Core0_Par0.51:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 128
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 136
	.align 4
_BswM_ActList10Ref_Core0_Par0.52:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 144
	.align 4
_BswM_ActList11Ref_Core0_Par0.53:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 152
	.align 4
_BswM_ActList12Ref_Core0_Par0.54:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 160
	.align 4
_BswM_ActList13Ref_Core0_Par0.55:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 168
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 176
	.align 4
_BswM_ActList14Ref_Core0_Par0.56:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 184
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 192
	.align 4
_BswM_ActList15Ref_Core0_Par0.57:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 200
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 208
	.align 4
_BswM_ActList16Ref_Core0_Par0.58:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 216
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 224
	.align 4
_BswM_ActList17Ref_Core0_Par0.59:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 232
	.align 4
_BswM_ActList18Ref_Core0_Par0.60:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 240
	.align 4
_BswM_ActList19Ref_Core0_Par0.61:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 248
	.align 4
_BswM_ActList20Ref_Core0_Par0.62:
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActListItemsRefAction_Core0_Par0.41) + 256
	.align 4
_BswM_ActionListItemsLCfg_Core0_Par0.63:
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList0Ref_Core0_Par0.42
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList1Ref_Core0_Par0.43
	.db 0x02
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList2Ref_Core0_Par0.44
	.db 0x03
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList3Ref_Core0_Par0.45
	.db 0x04
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList4Ref_Core0_Par0.46
	.db 0x05
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList5Ref_Core0_Par0.47
	.db 0x06
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList6Ref_Core0_Par0.48
	.db 0x07
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 12
	.db 0x08
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 24
	.db 0x09
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 36
	.db 0x0A
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 48
	.db 0x0B
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 60
	.db 0x0C
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList6Ref_Core0_Par0.48) + 72
	.db 0x0D
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList7Ref_Core0_Par0.49
	.db 0x0E
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList8Ref_Core0_Par0.50
	.db 0x0F
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList8Ref_Core0_Par0.50) + 12
	.db 0x10
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList9Ref_Core0_Par0.51
	.db 0x11
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList9Ref_Core0_Par0.51) + 12
	.db 0x12
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList10Ref_Core0_Par0.52
	.db 0x13
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList11Ref_Core0_Par0.53
	.db 0x14
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList12Ref_Core0_Par0.54
	.db 0x15
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList13Ref_Core0_Par0.55
	.db 0x16
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList13Ref_Core0_Par0.55) + 12
	.db 0x17
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList14Ref_Core0_Par0.56
	.db 0x18
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList14Ref_Core0_Par0.56) + 12
	.db 0x19
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList15Ref_Core0_Par0.57
	.db 0x1A
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList15Ref_Core0_Par0.57) + 12
	.db 0x1B
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList16Ref_Core0_Par0.58
	.db 0x1C
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw (#_BswM_ActList16Ref_Core0_Par0.58) + 12
	.db 0x1D
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList17Ref_Core0_Par0.59
	.db 0x1E
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList18Ref_Core0_Par0.60
	.db 0x1F
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList19Ref_Core0_Par0.61
	.db 0x20
	.ds (1)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_BswM_ActList20Ref_Core0_Par0.62
	.align 4
_BswM_ActionListLCfg_Core0_Par0.64:
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw #_BswM_ActionListItemsLCfg_Core0_Par0.63
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 16
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 32
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 48
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 64
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 80
	.dw 0x00000001
	.ds (4)
	.db 0x07
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 96
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 208
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 224
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 256
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 288
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 304
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 320
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 336
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 368
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 400
	.dw 0x00000001
	.ds (4)
	.db 0x02
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 432
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 464
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 480
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 496
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ActionListItemsLCfg_Core0_Par0.63) + 512
_BswM_AllowComMLCfg_Core0_Par0.65:
	.db 0x01
	.ds (1)
	.ds (2)
_BswM_ComMModeSwiLCfg_Core0_Par0.66:
	.db 0x02
	.ds (1)
	.ds (2)
_BswM_ComEnAbleDmGruLCfg_Core0_Par0.67:
	.ds (1)
	.db 0x01
_BswM_ComDisAbleDmGruLCfg_Core0_Par0.68:
	.ds (1)
	.db 0x01
	.align 4
_BswM_ComDmCtrlLCfg_Core0_Par0.69:
	.dw #_BswM_ComEnAbleDmGruLCfg_Core0_Par0.67
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw #_BswM_ComDisAbleDmGruLCfg_Core0_Par0.68
	.db 0x01
	.ds (3)
	.dw (#_BswM_ComEnAbleDmGruLCfg_Core0_Par0.67) + 1
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw (#_BswM_ComDisAbleDmGruLCfg_Core0_Par0.68) + 1
	.db 0x01
	.ds (3)
_BswM_ComEnAblePduGruLCfg_Core0_Par0.70:
	.ds (1)
	.db 0x01,0x01
	.ds (1)
_BswM_ComDisAblePduGruLCfg_Core0_Par0.71:
	.ds (1)
	.db 0x01
	.align 4
_BswM_ComPduGruCtrlLCfg_Core0_Par0.72:
	.ds (1)
	.ds (3)
	.dw #_BswM_ComEnAblePduGruLCfg_Core0_Par0.70
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw #_BswM_ComDisAblePduGruLCfg_Core0_Par0.71
	.db 0x01
	.ds (3)
	.ds (1)
	.ds (3)
	.dw (#_BswM_ComEnAblePduGruLCfg_Core0_Par0.70) + 1
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw (#_BswM_ComDisAblePduGruLCfg_Core0_Par0.71) + 1
	.db 0x01
	.ds (3)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ComEnAblePduGruLCfg_Core0_Par0.70) + 2
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
	.db 0x01
	.ds (3)
	.dw (#_BswM_ComEnAblePduGruLCfg_Core0_Par0.70) + 3
	.db 0x01
	.ds (3)
	.ds (4)
	.ds (1)
	.ds (3)
_BswM_EcuMDrvInitListLCfg_Core0_Par0.73:
	.ds (1)
	.db 0x01
	.align 2
_BswM_EcuMGoDownHaltPollLCfg_Core0_Par0.74:
	.ds (2)
_BswM_EcuMStateSwitchLCfg_Core0_Par0.75:
	.db 0x32
	.db 0x33
	.align 4
_BswM_NmControlLCfg_Core0_Par0.76:
	.dw 0x00000001
	.ds (1)
	.ds (3)
	.ds (8)
	.align 2
_BswM_PdurPathIdsLCfg_Core0_Par0.77:
	.ds (4)
_BswM_PdurCtrlInit1_Core0_Par0.78:
	.db 0x01
	.align 4
_BswM_PdurCtrlLCfg_Core0_Par0.79:
	.dw 0x00000001
	.ds (4)
	.db 0x01
	.ds (3)
	.dw #_BswM_PdurPathIdsLCfg_Core0_Par0.77
	.ds (4)
	.dw #_BswM_PdurCtrlInit1_Core0_Par0.78
	.db 0x01
	.ds (3)
	.dw (#_BswM_PdurPathIdsLCfg_Core0_Par0.77) + 2
	.align 4
_BswM_UserCallLCfg_Core0_Par0.80:
	.dw #_User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN
	.dw #_Act_Bsw_Allow_GoDown_Function
	.dw #_WakeupSource_Validated
	.align 4
_BswM_ActionItemsLCfg_Core0_Par0.81:
	.dw #_BswM_AllowComMLCfg_Core0_Par0.65
	.dw #_BswM_ComMModeSwiLCfg_Core0_Par0.66
	.dw #_BswM_ComDmCtrlLCfg_Core0_Par0.69
	.dw #_BswM_ComPduGruCtrlLCfg_Core0_Par0.72
	.dw #_BswM_EcuMDrvInitListLCfg_Core0_Par0.73
	.dw #_BswM_EcuMGoDownHaltPollLCfg_Core0_Par0.74
	.dw #_BswM_EcuMStateSwitchLCfg_Core0_Par0.75
	.dw #_BswM_NmControlLCfg_Core0_Par0.76
	.dw #_BswM_PdurCtrlLCfg_Core0_Par0.79
	.dw #_BswM_UserCallLCfg_Core0_Par0.80
	.align 4
_BswM_PartitionLCfg_Core0.83:
	.dw #_BswM_EvRqstLCfg_Core0_Par0.2
	.dw #_BswM_ModeRqstLCfg_Core0_Par0.20
	.db 0x12
	.ds (3)
	.dw #_BswM_RuleLCfg_Core0_Par0.40
	.ds (1)
	.ds (3)
	.ds (4)
	.db 0x15
	.ds (3)
	.dw #_BswM_ActionListLCfg_Core0_Par0.64
	.dw #_BswM_ActionItemsLCfg_Core0_Par0.81
	.dw #_BswM_RuleRunTime_Core0_Par0.82
	.align 4
_BswM_LCfg.84:
	.dw #_BswM_PartitionLCfg_Core0.83
	.align 4
_BswM_CoreLinkCfg:
	.dw #_BswM_LCfg.84
	.section .bss, bss
	.align 4
_BswM_RuleRunTime_Core0_Par0.82:
	.ds (144)
