#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\NmIf\Nm.c -oDefaultBuild\Nm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_59836d54584b485b92881852264deb55h20sap4g.uej
#@	compiled at Fri Mar 27 09:50:18 2026

	.file "..\..\Bsw\Communication\Common\NmIf\Nm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Nm_ChLConfig
	.public _Nm_Init
	.public _Nm_PassiveStartUp
	.public _Nm_NetworkRequest
	.extern _ComM_Nm_NetworkMode
	.public _Nm_NetworkRelease
	.public _Nm_DisableCommunication
	.public _Nm_EnableCommunication
	.public _Nm_GetPduData
	.public _Nm_RepeatMessageRequest
	.public _Nm_GetNodeIdentifier
	.public _Nm_GetLocalNodeIdentifier
	.public _Nm_GetState
	.public _Nm_NetworkStartIndication
	.extern _ComM_Nm_NetworkStartIndication
	.public _Nm_NetworkMode
	.public _Nm_BusSleepMode
	.extern _ComM_Nm_BusSleepMode
	.public _Nm_PrepareBusSleepMode
	.extern _ComM_Nm_PrepareBusSleepMode
	.public _Nm_SynchronizeMode
	.public _Nm_PduRxIndication
	.public _Nm_StateChangeNotification
	.extern _Com_SendSignal
	.public _Nm_RepeatMessageIndication
	.public _Nm_TxTimeoutException

	.section .text, text
_Nm_Init:
	.stack _Nm_Init = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 239
	jmp [r31]
_Nm_PassiveStartUp:
	.stack _Nm_PassiveStartUp = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 286
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 294
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 307
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 309
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 311
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 313
	mov r20, r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 319
	dispose 0x00000000, 0x00000041, [r31]
_Nm_NetworkRequest:
	.stack _Nm_NetworkRequest = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 335
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 345
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 373
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 375
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.bu 0x00000004[r2], r6
	jarl _ComM_Nm_NetworkMode, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 376
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 384
	mov r10, r6
	jarl _Nm_BusNmNetworkRequest.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Nm_NetworkRelease:
	.stack _Nm_NetworkRelease = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 405
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 414
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 428
	mov r10, r6
	jarl _Nm_BusNmNetworkRelease.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 433
	dispose 0x00000000, 0x00000001, [r31]
_Nm_DisableCommunication:
	.stack _Nm_DisableCommunication = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 452
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 460
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 461
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 463
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 465
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 467
	mov r20, r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 473
	dispose 0x00000000, 0x00000041, [r31]
_Nm_EnableCommunication:
	.stack _Nm_EnableCommunication = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 493
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 502
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 503
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 505
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 507
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 509
	mov r20, r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.6_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 515
	dispose 0x00000000, 0x00000041, [r31]
_Nm_GetPduData:
	.stack _Nm_GetPduData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 597
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 604
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 605
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 607
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 608
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 610
	mov r20, r6
	mov r21, r7
	jarl [r2], r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.7_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 615
	dispose 0x00000000, 0x00000061, [r31]
_Nm_RepeatMessageRequest:
	.stack _Nm_RepeatMessageRequest = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 617
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 625
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 626
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 628
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 630
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 632
	mov r20, r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_3:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 638
	dispose 0x00000000, 0x00000041, [r31]
_Nm_GetNodeIdentifier:
	.stack _Nm_GetNodeIdentifier = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 640
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 648
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 649
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 651
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x0000001C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 653
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 655
	mov r20, r6
	mov r21, r7
	jarl [r2], r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 660
	dispose 0x00000000, 0x00000061, [r31]
_Nm_GetLocalNodeIdentifier:
	.stack _Nm_GetLocalNodeIdentifier = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 662
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 670
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 671
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 673
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 675
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 677
	mov r20, r6
	mov r21, r7
	jarl [r2], r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.10_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 682
	dispose 0x00000000, 0x00000061, [r31]
_Nm_GetState:
	.stack _Nm_GetState = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 743
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 751
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 752
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 754
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000024[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 755
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 757
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl [r2], r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.11_3:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 762
	dispose 0x00000000, 0x00000071, [r31]
_Nm_NetworkStartIndication:
	.stack _Nm_NetworkStartIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 813
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 819
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 821
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.bu 0x00000004[r2], r6
	jarl _ComM_Nm_NetworkStartIndication, r31
	dispose 0x00000000, 0x00000001, [r31]
_Nm_NetworkMode:
	.stack _Nm_NetworkMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 842
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 848
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 869
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.bu 0x00000004[r2], r6
	jarl _ComM_Nm_NetworkMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_Nm_BusSleepMode:
	.stack _Nm_BusSleepMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 891
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 897
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 923
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.bu 0x00000004[r2], r6
	jarl _ComM_Nm_BusSleepMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_Nm_PrepareBusSleepMode:
	.stack _Nm_PrepareBusSleepMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 945
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 951
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 971
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.bu 0x00000004[r2], r6
	jarl _ComM_Nm_PrepareBusSleepMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_Nm_SynchronizeMode:
	.stack _Nm_SynchronizeMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1215
	jmp [r31]
_Nm_PduRxIndication:
	.stack _Nm_PduRxIndication = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1269
	jmp [r31]
_Nm_StateChangeNotification:
	.stack _Nm_StateChangeNotification = 88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1296
	prepare 0x00000061, 0x0000004C
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1302
	jarl _Nm_FindChannelIndex.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1305
	mov r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_18
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	movea 0x00000048, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1310
	mov #.STR.1, r5
	movea 0x00000004, r3, r6
	add r6, r2
	br9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	ld23.dw 0x00000000[r5], r8
	st23.dw r8, 0x00000000[r6]
	add 0x00000008, r5
	add 0x00000008, r6
.BB.LABEL.18_3:	; if_then_bb
	cmp r6, r2
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.18_9
.BB.LABEL.18_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1322
	mov r2, r6
	mul 0x0000000C, r6, r0
	movea 0x00000004, r3, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	cmp r6, r21
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_6:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov r2, r6
	mul 0x0000000C, r6, r0
	movea 0x00000004, r3, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	cmp r6, r20
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_then_bb43
	mov 0x00000001, r5
.BB.LABEL.18_8:	; if_break_bb
	add 0x00000001, r2
.BB.LABEL.18_9:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1320
	cmp 0x00000005, r2
	bh9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.18_5
.BB.LABEL.18_11:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1328
	zxb r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.18_18
.BB.LABEL.18_12:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1344
	add 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1346
	cmp 0x00000004, r21
	bnz9 .BB.LABEL.18_14
.BB.LABEL.18_13:	; if_then_bb69.if_break_bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	movea 0x00000040, r0, r21
	br9 .BB.LABEL.18_17
.BB.LABEL.18_14:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1350
	cmp 0x00000005, r21
	bz9 .BB.LABEL.18_16
.BB.LABEL.18_15:	; if_else_bb.if_break_bb83_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.18_17
.BB.LABEL.18_16:	; if_then_bb81
	movea 0x00000080, r0, r21
.BB.LABEL.18_17:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1354
	mul 0x0000000C, r2, r0
	movea 0x00000004, r3, r5
	add r2, r5
	ld.b 0x00000008[r5], r2
	or r2, r21
	st.b r21, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1356
	shl 0x00000004, r10
	mov #_Nm_ChLConfig, r2
	add r10, r2
	ld.hu 0x0000000E[r2], r6
	movea 0x00000003, r3, r7
	jarl _Com_SendSignal, r31
.BB.LABEL.18_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1368
	dispose 0x0000004C, 0x00000061, [r31]
_Nm_RepeatMessageIndication:
	.stack _Nm_RepeatMessageIndication = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1388
	jmp [r31]
_Nm_TxTimeoutException:
	.stack _Nm_TxTimeoutException = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1410
	jmp [r31]
_Nm_FindChannelIndex.1:
	.stack _Nm_FindChannelIndex.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1576
	mov 0x00000000, r10
	br9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1581
	andi 0x000000FF, r10, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.bu 0x00000004[r5], r2
	cmp r2, r6
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	add 0x00000001, r10
.BB.LABEL.21_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1579
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.21_1
.BB.LABEL.21_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 1587
	zxb r10
	jmp [r31]
_Nm_BusNmNetworkRequest.1:
	.stack _Nm_BusNmNetworkRequest.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2014
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2018
	mov r6, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2020
	mov r6, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2021
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2023
	shl 0x00000004, r6
	mov #_Nm_ChLConfig, r5
	add r6, r5
	ld.bu 0x00000004[r5], r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.22_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2037
	dispose 0x00000000, 0x00000001, [r31]
_Nm_BusNmNetworkRelease.1:
	.stack _Nm_BusNmNetworkRelease.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2053
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2056
	mov r6, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2058
	mov r6, r2
	shl 0x00000004, r2
	mov #_Nm_ChLConfig, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2059
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2061
	shl 0x00000004, r6
	mov #_Nm_ChLConfig, r5
	add r6, r5
	ld.bu 0x00000004[r5], r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_3:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/NmIf/Nm.c", 2068
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
.STR.1:
	.dw 0x00000001
	.dw 0x00000005
	.db 0x01
	.ds (3)
	.dw 0x00000002
	.dw 0x00000005
	.db 0x02
	.ds (3)
	.dw 0x00000005
	.dw 0x00000004
	.db 0x04
	.ds (3)
	.dw 0x00000003
	.dw 0x00000004
	.db 0x08
	.ds (3)
	.dw 0x00000003
	.dw 0x00000005
	.db 0x10
	.ds (3)
	.dw 0x00000004
	.dw 0x00000005
	.db 0x20
	.ds (3)
