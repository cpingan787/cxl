#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\ASW\APP\PowManager.c -oDefaultBuild\PowManager.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_604a190931f54bd3a417a5ac47f1c353yntndn3m.3yb
#@	compiled at Fri Mar 27 09:50:06 2026

	.file "..\..\ASW\APP\PowManager.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemPbCfg
	.public _APP_WakeupHold, 1
	.public _APP_WakeupNotified, 1
	.public _APP_WakeupHoldCnt, 2
	.public _Mcu_WakeSource, 8
	.public _NmSleepMode, 1
	.public _gIOHwAbDI_KL30_St, 1
	.public _gIOHwAbDI_ACC_St, 1
	.public _gIOHwAbDI_IG1_St, 1
	.public _gIOHwAbDI_CanRx_St, 1
	.public _gIOHwAbDI_NAD_WAKEUP_MCU_St, 1
	.public _gIOHwAbDI_CDS_St, 1
	.public _gIOHwAbDI_ECALL_BUTTON_St, 1
	.public _gIOHwAbDI_IMU_INT1_St, 1
	.public _gIOHwAbDI_IMU_INT2_St, 1
	.public _gIOHwAbDI_RTC_St, 1
	.extern _validNmMsgFlag
	.public _CAN_STATUS, 1
	.public _CrashTimeElapsed, 4
	.public _Power_WakeUpSrcIsValid
	.public _Mcu_CheckWakeSource
	.extern _Dio_ReadChannel
	.extern _EcuM_SetWakeupEvent
	.extern _BswM_RequestMode
	.public _Icu_Edge_Detect_Crash
	.extern _Icu_CheckWakeup
	.public _Icu_Edge_Detect_KL30
	.public _Icu_Edge_Detect_NAD
	.public _Icu_Edge_Detect_EcallBtn
	.public _Icu_Edge_Detect_Imu_Int1
	.public _Icu_Edge_Detect_Imu_int2
	.public _Icu_Edge_Detect_Rtc_Int
	.public _Power_Init
	.public _Power_Detect
	.extern _CanNm_GetState
	.extern _BswM_GetEcuMWakeSrcStatus
	.extern _User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN
	.public _APP_RequestNetWork
	.public _APP_ReleaseNetWork
	.public _APP_AllowedGodown
	.extern _EcuM_OnGoOffOne
	.extern _Dio_WriteChannel
	.extern _Dem_PreInit
	.extern _Dem_Init
	.public _APP_SetWakeupHold
	.public _APP_ClearWakeupHold
	.public _APP_GetWakeupHold

	.section .text, text
_Power_WakeUpSrcIsValid:
	.stack _Power_WakeUpSrcIsValid = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 97
	movhi HIGHW1(#_Mcu_WakeSource+0x00000003), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000003)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	movhi HIGHW1(#_Mcu_WakeSource+0x00000004), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource+0x00000004)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb14
	movhi HIGHW1(#_Mcu_WakeSource), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 110
	jmp [r31]
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 114
	jmp [r31]
_Mcu_CheckWakeSource:
	.stack _Mcu_CheckWakeSource = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 131
	prepare 0x00000041, 0x00000000
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 136
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 139
	mov #_Mcu_WakeSource, r20
	st.b r2, 0x00000000[r20]
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 148
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 151
	st.b r2, 0x00000002[r20]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 160
	jarl _Dio_ReadChannel, r31
	cmp 0x00000001, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 166
	st.b r2, 0x00000004[r20]
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 169
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 172
	st.b r2, 0x00000005[r20]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 175
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 178
	st.b r2, 0x00000006[r20]
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 181
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 184
	st.b r2, 0x00000007[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 188
	jarl _Power_WakeUpSrcIsValid, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 190
	movhi HIGHW1(#_Mcu_WakeSource), r0, r2
	ld.bu LOWW(#_Mcu_WakeSource)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	movea 0x00000020, r0, r20
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb59
	movea 0x00000040, r0, r20
.BB.LABEL.2_4:	; if_else_bb59
	mov r20, r6
	jarl _EcuM_SetWakeupEvent, r31
	mov 0x00000001, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 201
	jarl _BswM_RequestMode, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_5:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 209
	dispose 0x00000000, 0x00000041, [r31]
_Icu_Edge_Detect_Crash:
	.stack _Icu_Edge_Detect_Crash = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 222
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 224
	movhi HIGHW1(#_Mcu_WakeSource+0x00000003), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000003)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 225
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_KL30:
	.stack _Icu_Edge_Detect_KL30 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 228
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 230
	movhi HIGHW1(#_Mcu_WakeSource+0x00000001), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000001)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 231
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_NAD:
	.stack _Icu_Edge_Detect_NAD = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 234
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 236
	movhi HIGHW1(#_Mcu_WakeSource+0x00000002), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000002)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 237
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_EcallBtn:
	.stack _Icu_Edge_Detect_EcallBtn = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 240
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 242
	movhi HIGHW1(#_Mcu_WakeSource+0x00000004), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000004)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 243
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_Imu_Int1:
	.stack _Icu_Edge_Detect_Imu_Int1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 246
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 248
	movhi HIGHW1(#_Mcu_WakeSource+0x00000005), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000005)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 249
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_Imu_int2:
	.stack _Icu_Edge_Detect_Imu_int2 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 252
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 254
	movhi HIGHW1(#_Mcu_WakeSource+0x00000006), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000006)[r2]
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 255
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Icu_Edge_Detect_Rtc_Int:
	.stack _Icu_Edge_Detect_Rtc_Int = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 258
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 260
	movhi HIGHW1(#_Mcu_WakeSource+0x00000007), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Mcu_WakeSource+0x00000007)[r2]
	movea 0x00000080, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 261
	jarl _Icu_CheckWakeup, r31
	dispose 0x00000000, 0x00000001, [r31]
_Power_Init:
	.stack _Power_Init = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 278
	movhi HIGHW1(#_APP_WakeupHold), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_APP_WakeupHold)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 279
	movhi HIGHW1(#_APP_WakeupHoldCnt), r0, r2
	movea 0x000003E8, r0, r5
	st.h r5, LOWW(#_APP_WakeupHoldCnt)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 280
	movhi HIGHW1(#_APP_WakeupNotified), r0, r2
	st.b r0, LOWW(#_APP_WakeupNotified)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 281
	movhi HIGHW1(#_NmSleepMode), r0, r2
	st.b r0, LOWW(#_NmSleepMode)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 282
	movhi HIGHW1(#_gIOHwAbDI_KL30_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_KL30_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 283
	movhi HIGHW1(#_gIOHwAbDI_CanRx_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_CanRx_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 284
	movhi HIGHW1(#_gIOHwAbDI_NAD_WAKEUP_MCU_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_NAD_WAKEUP_MCU_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 285
	movhi HIGHW1(#_gIOHwAbDI_CDS_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_CDS_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 286
	movhi HIGHW1(#_gIOHwAbDI_ECALL_BUTTON_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_ECALL_BUTTON_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 287
	movhi HIGHW1(#_gIOHwAbDI_IMU_INT1_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_IMU_INT1_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 288
	movhi HIGHW1(#_gIOHwAbDI_IMU_INT2_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_IMU_INT2_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 289
	movhi HIGHW1(#_gIOHwAbDI_RTC_St), r0, r2
	st.b r0, LOWW(#_gIOHwAbDI_RTC_St)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 291
	movhi HIGHW1(#_CAN_STATUS), r0, r2
	mov 0x00000009, r5
	st.b r5, LOWW(#_CAN_STATUS)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 292
	movhi HIGHW1(#_validNmMsgFlag), r0, r2
	st.b r0, LOWW(#_validNmMsgFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 293
	mov #_Mcu_WakeSource, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 294
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 295
	st.b r0, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 296
	st.b r0, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 297
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 298
	st.b r0, 0x00000005[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 299
	st.b r0, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 300
	st.b r0, 0x00000007[r2]
	jmp [r31]
_Power_Detect:
	.stack _Power_Detect = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 314
	prepare 0x00000041, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 316
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 317
	st.w r0, 0x00000000[r3]
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 322
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_KL30_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_KL30_St)[r2]
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 324
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_CanRx_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_CanRx_St)[r2]
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 325
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_NAD_WAKEUP_MCU_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_NAD_WAKEUP_MCU_St)[r2]
	mov 0x0000000F, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 326
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_CDS_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_CDS_St)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 327
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_ECALL_BUTTON_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_ECALL_BUTTON_St)[r2]
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 328
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_IMU_INT1_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_IMU_INT1_St)[r2]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 329
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_IMU_INT2_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_IMU_INT2_St)[r2]
	movea 0x00000010, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 330
	jarl _Dio_ReadChannel, r31
	movhi HIGHW1(#_gIOHwAbDI_RTC_St), r0, r2
	st.b r10, LOWW(#_gIOHwAbDI_RTC_St)[r2]
	mov 0x00000000, r20
	mov r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 332
	mov r20, r6
	jarl _CanNm_GetState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 333
	mov r20, r6
	jarl _BswM_GetEcuMWakeSrcStatus, r31
	movhi HIGHW1(#_CAN_STATUS), r0, r2
	st.b r10, LOWW(#_CAN_STATUS)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 336
	ld.w 0x00000004[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 338
	jarl _APP_GetWakeupHold, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	movhi HIGHW1(#_APP_WakeupNotified), r0, r2
	ld.bu LOWW(#_APP_WakeupNotified)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 340
	jarl _Mcu_CheckWakeSource, r31
.BB.LABEL.11_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 347
	jarl _APP_GetWakeupHold, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 349
	jarl _User_EcuM_ClearWakeUpSource_EcuMWakeupSource_CAN, r31
	mov 0x00000002, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 350
	jarl _BswM_RequestMode, r31
.BB.LABEL.11_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 390
	dispose 0x00000008, 0x00000041, [r31]
_APP_RequestNetWork:
	.stack _APP_RequestNetWork = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 403
	prepare 0x00000001, 0x00000000
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 405
	mov r6, r7
	jarl _BswM_RequestMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_APP_ReleaseNetWork:
	.stack _APP_ReleaseNetWork = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 419
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 421
	jarl _APP_GetWakeupHold, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 423
	jarl _BswM_RequestMode, r31
.BB.LABEL.13_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 429
	dispose 0x00000000, 0x00000001, [r31]
_APP_AllowedGodown:
	.stack _APP_AllowedGodown = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 442
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 444
	movhi HIGHW1(#_validNmMsgFlag), r0, r2
	st.b r0, LOWW(#_validNmMsgFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 445
	jarl _Power_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 446
	jarl _EcuM_OnGoOffOne, r31
	mov 0x00000001, r20
	mov 0x00000006, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 447
	mov r21, r6
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	mov 0x00000002, r22
	mov 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 448
	mov r23, r6
	mov r22, r7
	jarl _BswM_RequestMode, r31
	mov 0x00000000, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 449
	mov r22, r6
	mov r24, r7
	jarl _BswM_RequestMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 450
	mov r20, r6
	mov r24, r7
	jarl _BswM_RequestMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 451
	mov r23, r6
	mov r24, r7
	jarl _BswM_RequestMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 452
	mov r21, r6
	mov r24, r7
	jarl _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 453
	jarl _Dem_PreInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 454
	mov #_DemPbCfg, r6
	jarl _Dem_Init, r31
	dispose 0x00000000, 0x00000479, [r31]
_APP_SetWakeupHold:
	.stack _APP_SetWakeupHold = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 471
	movhi HIGHW1(#_APP_WakeupHold), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_APP_WakeupHold)[r2]
	jmp [r31]
_APP_ClearWakeupHold:
	.stack _APP_ClearWakeupHold = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 475
	movhi HIGHW1(#_APP_WakeupHold), r0, r2
	st.b r0, LOWW(#_APP_WakeupHold)[r2]
	jmp [r31]
_APP_GetWakeupHold:
	.stack _APP_GetWakeupHold = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 480
	movhi HIGHW1(#_APP_WakeupHold), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/ASW/APP/PowManager.c", 481
	ld.bu LOWW(#_APP_WakeupHold)[r2], r10
	jmp [r31]
	.section .data, data
_APP_WakeupHold:
	.db 0x01
_APP_WakeupNotified:
	.ds (1)
	.align 2
_APP_WakeupHoldCnt:
	.dhw 0x03E8
_Mcu_WakeSource:
	.ds (8)
_NmSleepMode:
	.ds (1)
_gIOHwAbDI_KL30_St:
	.ds (1)
_gIOHwAbDI_ACC_St:
	.ds (1)
_gIOHwAbDI_IG1_St:
	.ds (1)
_gIOHwAbDI_CanRx_St:
	.ds (1)
_gIOHwAbDI_NAD_WAKEUP_MCU_St:
	.ds (1)
_gIOHwAbDI_CDS_St:
	.ds (1)
_gIOHwAbDI_ECALL_BUTTON_St:
	.ds (1)
_gIOHwAbDI_IMU_INT1_St:
	.ds (1)
_gIOHwAbDI_IMU_INT2_St:
	.ds (1)
_gIOHwAbDI_RTC_St:
	.ds (1)
_CAN_STATUS:
	.db 0x09
	.section .bss, bss
	.align 4
_CrashTimeElapsed:
	.ds (4)
