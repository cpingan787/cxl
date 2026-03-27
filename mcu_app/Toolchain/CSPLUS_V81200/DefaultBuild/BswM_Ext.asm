#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\BSW_Ext\BswM_Ext.c -oDefaultBuild\BswM_Ext.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cbcc7095f16344a2b81c9f23bf7312c3qqjbkf44.mhm
#@	compiled at Fri Mar 27 09:50:09 2026

	.file "..\..\ASW\BSW_Ext\BswM_Ext.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Mcu_WakeSource
	.extern _APP_WakeupNotified
	.extern _validNmMsgFlag
	.public _WakeupSource_Validated
	.extern _APP_SetWakeupSource
	.extern _BswM_RequestMode
	.extern _BswM_EcuM_CurrentWakeup
	.public _User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN
	.extern _EcuM_ClearWakeupEvent
	.public _Act_Bsw_Allow_GoDown_Function
	.extern _APP_GotoSleep

	.section .text, text
_WakeupSource_Validated:
	.stack _WakeupSource_Validated = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 30
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 33
	movhi HIGHW1(#_Mcu_WakeSource), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	mov 0x00000001, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 38
	movhi HIGHW1(#_Mcu_WakeSource+0x00000001), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000001)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	mov 0x0000000B, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_4:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 43
	movhi HIGHW1(#_Mcu_WakeSource+0x00000002), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000002)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	mov 0x00000009, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_6:	; if_else_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 48
	movhi HIGHW1(#_Mcu_WakeSource+0x00000003), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000003)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	movea 0x00000010, r0, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_8:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 53
	movhi HIGHW1(#_Mcu_WakeSource+0x00000004), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	movea 0x00000011, r0, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_10:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 58
	movhi HIGHW1(#_Mcu_WakeSource+0x00000005), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000005)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 63
	movhi HIGHW1(#_Mcu_WakeSource+0x00000006), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000006)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	mov 0x0000000F, r6
	br9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 68
	movhi HIGHW1(#_Mcu_WakeSource+0x00000007), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000007)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_14:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 0
	mov 0x0000000E, r6
.BB.LABEL.1_15:	; if_then_bb51
	jarl _APP_SetWakeupSource, r31
.BB.LABEL.1_16:	; if_break_bb59
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 78
	movhi HIGHW1(#_APP_WakeupNotified), r0, r2
	st.b r6, LOWW(#_APP_WakeupNotified)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 79
	mov r6, r7
	jarl _BswM_RequestMode, r31
	mov 0x00000003, r20
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 80
	mov r20, r7
	jarl _BswM_EcuM_CurrentWakeup, r31
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 81
	mov r20, r7
	jarl _BswM_EcuM_CurrentWakeup, r31
	dispose 0x00000000, 0x00000041, [r31]
_User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN:
	.stack _User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 84
	prepare 0x00000001, 0x00000000
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 86
	jarl _EcuM_ClearWakeupEvent, r31
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 87
	jarl _EcuM_ClearWakeupEvent, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 89
	movhi HIGHW1(#_validNmMsgFlag), r0, r2
	st.b r0, LOWW(#_validNmMsgFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 90
	mov #_Mcu_WakeSource, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 91
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 92
	st.b r0, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 93
	st.b r0, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 94
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 95
	st.b r0, 0x00000005[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 96
	st.b r0, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 97
	st.b r0, 0x00000007[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Act_Bsw_Allow_GoDown_Function:
	.stack _Act_Bsw_Allow_GoDown_Function = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 99
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/BSW_Ext/BswM_Ext.c", 101
	jarl _APP_GotoSleep, r31
	dispose 0x00000000, 0x00000001, [r31]
