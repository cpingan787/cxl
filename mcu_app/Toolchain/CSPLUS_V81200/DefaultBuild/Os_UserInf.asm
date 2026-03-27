#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_UserInf.c -oDefaultBuild\Os_UserInf.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_31b3c86091974d95b212bf97fc5fb1b6kliglys0.xjz
#@	compiled at Fri Mar 27 09:50:34 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_UserInf.c"

	$reg_mode 32
	.dbl_size 8

	.extern _IpduM_PBConfigData
	.extern _E2EXf_Config
	.extern _Wdg_59_DriverA_GstConfiguration
	.extern _WdgMConfigRoot
	.extern _SecOC_ConfigData
	.extern _StbM_Config
	.extern _CanTSyn_config
	.extern _SecOC_ErrorLogQueue
	.extern _CrashTimeElapsed
	.public _test1, 2
	.public _test5, 2
	.public _test10, 2
	.public _test50, 2
	.public _test100, 2
	.public _wdgtest0, 1
	.public _wdgtest1, 1
	.extern _gIOHwAbDI_IG1_St
	.public _Os_TaskEntry_OsTask_Init
	.extern _EcuM_StartupTwo
	.extern _Adc_StartGroupConversion
	.extern _Gpt_EnableNotification
	.extern _Gpt_StartTimer
	.extern _Icu_EnableNotification
	.extern _Icu_EnableEdgeDetection
	.extern _Icu_EnableWakeup
	.extern _Icu_StartSignalMeasurement
	.extern _Can_SetControllerMode
	.extern _ComM_CommunicationAllowed
	.extern _IpduM_Init
	.extern _E2EXf_Init
	.extern _StbM_Init
	.extern _CanTSyn_Init
	.extern _Wdg_59_DriverA_Init
	.extern _WdgM_Init
	.extern _Crypto_ISoft_Init
	.extern _CryIf_Init
	.extern _Csm_Init
	.extern _SecOC_Init
	.extern _Csm_KeySetValid
	.extern _Vss_InitConfig
	.extern _Fvm_InitConfig
	.extern _queue_init
	.extern _SetRelAlarm
	.extern _PeripheralHalInit
	.extern _LogHalInit
	.extern _MpuHalInit
	.extern _TimerHalInit
	.extern _MpuHalTxTaskInit
	.extern _McuMpuSyncTaskInit
	.extern _TaskPowerManageInit
	.extern _TaskVehicleDataToCpuInit
	.extern _RemoteControlTaskInit
	.extern _DtcGpioInit
	.extern _LogHalPrint
	.extern _TerminateTask
	.public _Os_TaskEntry_OsTask_1ms
	.extern _CanSM_MainFunction
	.public _Os_TaskEntry_OsTask_5ms
	.extern _CanNm_MainFunction
	.extern _Com_MainFunctionRx_ComMainFunctionRx
	.extern _Com_Test
	.extern _Com_SecOC_Test
	.extern _Com_MainFunctionTx_ComMainFunctionTx
	.extern _Csm_MainFunction
	.extern _SecOC_MainFunctionRx
	.extern _SecOC_MainFunctionTx
	.extern _McuMpuSyncTaskMain
	.extern _MpuHalTxTask
	.extern _TaskPowerManage
	.extern _TaskVehicleDataToCpu
	.extern _RemoteControlTask
	.extern _MpuHalUartTimerCallback
	.extern _CanPeriodCycleProcess
	.public _Os_TaskEntry_OsTask_10ms
	.extern _BswM_MainFunction
	.extern _Power_Detect
	.extern _ComM_MainFunction_ComMChannel_0
	.extern _CanTp_MainFunction
	.extern _Dcm_MainFunction
	.extern _Dem_MainFunction
	.extern _EcuM_MainFunction
	.extern _NvM_MainFunction
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _CanTSyn_MainFunction
	.extern _StbM_MainFunction
	.extern _Uds_Test
	.public _Os_TaskEntry_OsTask_50ms
	.extern _SystemTimeMs
	.extern _NvM_test
	.extern _DTCMem_test
	.public _Os_TaskEntry_OsTask_100ms
	.extern _WdgM_CheckpointReached
	.extern _IpduM_MainFunctionTx_IpduMMainFunctionTx
	.extern _WdgM_MainFunction
	.extern _App_SecOC_ErrorLogProcess
	.extern _Icu_GetTimeElapsed
	.extern _R_PORT_ToggleGpioOutput
	.extern _TimerHalTestMain
	.extern _TaskAntDetect100ms
	.public _IdleHook_Core0
	.public _ShutdownHook
	.extern _Mcu_SetMode
	.public _Os_PanicHandler
	.public _ISR_RCAN1ERR_IRQ_Handler
	.extern _CAN_CONTROLLER1_BUSOFF_CAT2_ISR
	.public _ISR_RCAN1TRX_IRQ_Handler
	.extern _CAN_CONTROLLER1_TX_CAT2_ISR
	.public _ISR_RCANGRECC0_IRQ_Handler
	.extern _CAN_RSCAN0_RXFIFO_CAT2_ISR
	.public _ISR_ADCA0I1_IRQ_Handler
	.extern _Adc_Isr
	.public _ISR_ADCA1I1_IRQ_Handler
	.public _ISR_TAUJ0I0_IRQ_Handler
	.public _ISR_TAUD0I9_IRQ_Handler
	.extern _Gpt_CbkNotification
	.extern _WDG_59_DRIVERA_TRIGGERFUNCTION_ISR
	.public _ISR_TAUB0I12_IRQ_Handler
	.public _ISR_TAUB0I8_IRQ_Handler
	.extern _Icu_TimerIsr
	.extern _Icu_Edge_Detect_Crash
	.public _ISR_TAUB0I9_IRQ_Handler
	.public _ISR_P1_IRQ_Handler
	.public _ISR_P2_IRQ_Handler
	.extern _Icu_ExternalInterruptIsr
	.public _ISR_P5_IRQ_Handler
	.public _ISR_P6_IRQ_Handler
	.public _ISR_P7_IRQ_Handler
	.public _ISR_P9_IRQ_Handler
	.public _ISR_P14_IRQ_Handler
	.public _ISR_RLIN34TX0_IRQ_Handler
	.extern _r_uart4_interrupt_send
	.public _ISR_RLIN34RX1_IRQ_Handler
	.extern _r_uart4_interrupt_receive
	.public _ISR_RLIN34ERR2_IRQ_Handler
	.extern _r_uart4_interrupt_error
	.public _ISR_RLIN35TX0_IRQ_Handler
	.extern _r_uart5_interrupt_send
	.public _ISR_RLIN35RX1_IRQ_Handler
	.extern _r_uart5_interrupt_receive
	.public _ISR_RLIN35ERR2_IRQ_Handler
	.extern _r_uart5_interrupt_error
	.public _ISR_RIIC0TI_IRQ_Handler
	.extern _r_riic0_transmit_interrupt
	.public _ISR_RIIC0EE_IRQ_Handler
	.extern _r_riic0_error_interrupt
	.public _ISR_RIIC0RI_IRQ_Handler
	.extern _r_riic0_receive_interrupt
	.public _ISR_RIIC0TEI_IRQ_Handler
	.extern _r_riic0_transmitend_interrupt

	.section .text, text
_Os_TaskEntry_OsTask_Init:
	.stack _Os_TaskEntry_OsTask_Init = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 108
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 114
	jarl _EcuM_StartupTwo, r31
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 116
	mov r20, r6
	jarl _Adc_StartGroupConversion, r31
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 117
	mov r21, r6
	jarl _Adc_StartGroupConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 120
	mov r20, r6
	jarl _Gpt_EnableNotification, r31
	movea 0x00004E20, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 121
	mov r20, r6
	jarl _Gpt_StartTimer, r31
	mov 0x00000002, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 123
	mov r22, r6
	jarl _Icu_EnableNotification, r31
	mov 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 124
	mov r23, r6
	jarl _Icu_EnableNotification, r31
	mov 0x00000004, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 125
	mov r24, r6
	jarl _Icu_EnableNotification, r31
	mov 0x00000005, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 126
	mov r25, r6
	jarl _Icu_EnableNotification, r31
	mov 0x00000006, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 127
	mov r26, r6
	jarl _Icu_EnableNotification, r31
	mov 0x00000007, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 128
	mov r27, r6
	jarl _Icu_EnableNotification, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 130
	mov r22, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 131
	mov r23, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 132
	mov r24, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 133
	mov r25, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 134
	mov r26, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 135
	mov r27, r6
	jarl _Icu_EnableEdgeDetection, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 137
	mov r20, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 138
	mov r22, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 139
	mov r23, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 140
	mov r24, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 141
	mov r25, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 142
	mov r26, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 143
	mov r27, r6
	jarl _Icu_EnableWakeup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 145
	mov r20, r6
	jarl _Icu_StartSignalMeasurement, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 148
	mov r20, r6
	mov r23, r7
	jarl _Can_SetControllerMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 149
	mov r20, r6
	mov r20, r7
	jarl _Can_SetControllerMode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 151
	mov r20, r6
	mov r21, r7
	jarl _ComM_CommunicationAllowed, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 152
	mov #_IpduM_PBConfigData, r6
	jarl _IpduM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 153
	mov #_E2EXf_Config, r6
	jarl _E2EXf_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 154
	mov #_StbM_Config, r6
	jarl _StbM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 155
	mov #_CanTSyn_config, r6
	jarl _CanTSyn_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 157
	mov #_Wdg_59_DriverA_GstConfiguration, r6
	jarl _Wdg_59_DriverA_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 158
	mov #_WdgMConfigRoot, r6
	jarl _WdgM_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 160
	mov r20, r6
	jarl _Crypto_ISoft_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 161
	mov r20, r6
	jarl _CryIf_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 162
	mov r20, r6
	jarl _Csm_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 163
	mov #_SecOC_ConfigData, r6
	jarl _SecOC_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 164
	mov r20, r6
	jarl _Csm_KeySetValid, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 165
	jarl _Vss_InitConfig, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 167
	jarl _Fvm_InitConfig, r31
	mov 0x7FFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 169
	mov r23, r6
	jarl _Gpt_StartTimer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 170
	mov #.STR.1, r7
	mov #_SecOC_ErrorLogQueue, r6
	mov r20, r8
	jarl _queue_init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 171
	mov r20, r6
	mov r21, r7
	mov r21, r8
	jarl _SetRelAlarm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 172
	mov r21, r6
	mov r22, r7
	mov r25, r8
	jarl _SetRelAlarm, r31
	mov 0x0000000A, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 173
	mov r22, r6
	mov r23, r7
	jarl _SetRelAlarm, r31
	movea 0x00000032, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 174
	mov r23, r6
	mov r24, r7
	jarl _SetRelAlarm, r31
	movea 0x00000064, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 175
	mov r24, r6
	mov r25, r7
	jarl _SetRelAlarm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 177
	jarl _PeripheralHalInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 178
	mov r21, r6
	jarl _LogHalInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 179
	jarl _MpuHalInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 180
	jarl _TimerHalInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 183
	jarl _MpuHalTxTaskInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 184
	jarl _McuMpuSyncTaskInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 185
	jarl _TaskPowerManageInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 186
	jarl _TaskVehicleDataToCpuInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 187
	jarl _RemoteControlTaskInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 188
	jarl _DtcGpioInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 189
	mov #.STR.12020, r6
	jarl _LogHalPrint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 195
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 197
	br9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 202
	dispose 0x00000000, 0x000007F9, [r31]
_Os_TaskEntry_OsTask_1ms:
	.stack _Os_TaskEntry_OsTask_1ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 212
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 218
	movhi HIGHW1(#_test1), r0, r2
	ld.h LOWW(#_test1)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_test1)[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 219
	jarl _Adc_StartGroupConversion, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 223
	jarl _CanSM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 224
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 226
	br9 .BB.LABEL.2_1
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 231
	dispose 0x00000000, 0x00000001, [r31]
_Os_TaskEntry_OsTask_5ms:
	.stack _Os_TaskEntry_OsTask_5ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 234
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 241
	movhi HIGHW1(#_test5), r0, r2
	ld.h LOWW(#_test5)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_test5)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 242
	jarl _CanNm_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 244
	jarl _Com_MainFunctionRx_ComMainFunctionRx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 246
	jarl _Com_Test, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 249
	jarl _Com_SecOC_Test, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 252
	jarl _Com_MainFunctionTx_ComMainFunctionTx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 254
	jarl _Csm_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 255
	jarl _SecOC_MainFunctionRx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 256
	jarl _SecOC_MainFunctionTx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 258
	jarl _McuMpuSyncTaskMain, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 259
	jarl _MpuHalTxTask, r31
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 260
	jarl _TaskPowerManage, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 261
	jarl _TaskVehicleDataToCpu, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 262
	jarl _RemoteControlTask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 264
	jarl _MpuHalUartTimerCallback, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 265
	jarl _CanPeriodCycleProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 271
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 273
	br9 .BB.LABEL.3_1
.BB.LABEL.3_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 278
	dispose 0x00000000, 0x00000001, [r31]
_Os_TaskEntry_OsTask_10ms:
	.stack _Os_TaskEntry_OsTask_10ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 280
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 287
	movhi HIGHW1(#_test10), r0, r2
	ld.h LOWW(#_test10)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_test10)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 288
	jarl _BswM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 289
	jarl _Power_Detect, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 291
	jarl _ComM_MainFunction_ComMChannel_0, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 293
	jarl _CanTp_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 294
	jarl _Dcm_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 295
	jarl _Dem_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 296
	jarl _EcuM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 298
	jarl _NvM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 299
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 300
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 302
	jarl _CanTSyn_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 303
	jarl _StbM_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 308
	jarl _Uds_Test, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 313
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 315
	br9 .BB.LABEL.4_1
.BB.LABEL.4_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 320
	dispose 0x00000000, 0x00000001, [r31]
_Os_TaskEntry_OsTask_50ms:
	.stack _Os_TaskEntry_OsTask_50ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 322
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 328
	movhi HIGHW1(#_test50), r0, r2
	ld.h LOWW(#_test50)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_test50)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 329
	jarl _SystemTimeMs, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 332
	jarl _NvM_test, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 333
	jarl _DTCMem_test, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 338
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 340
	br9 .BB.LABEL.5_1
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 345
	dispose 0x00000000, 0x00000001, [r31]
_Os_TaskEntry_OsTask_100ms:
	.stack _Os_TaskEntry_OsTask_100ms = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 349
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 356
	movhi HIGHW1(#_wdgtest0), r0, r2
	ld.bu LOWW(#_wdgtest0)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 358
	jarl _WdgM_CheckpointReached, r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 361
	movhi HIGHW1(#_test100), r0, r2
	ld.h LOWW(#_test100)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_test100)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 362
	jarl _IpduM_MainFunctionTx_IpduMMainFunctionTx, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 364
	movhi HIGHW1(#_wdgtest1), r0, r2
	ld.bu LOWW(#_wdgtest1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 367
	jarl _WdgM_MainFunction, r31
.BB.LABEL.6_4:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 369
	jarl _App_SecOC_ErrorLogProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 375
	movhi HIGHW1(#_test100), r0, r2
	ld.hu LOWW(#_test100)[r2], r2
	mov 0x0000000A, r5
	divhu r5, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 377
	jarl _Icu_GetTimeElapsed, r31
	movhi HIGHW1(#_CrashTimeElapsed), r0, r2
	st.w r10, LOWW(#_CrashTimeElapsed)[r2]
	mov 0x00000001, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 378
	jarl _R_PORT_ToggleGpioOutput, r31
.BB.LABEL.6_6:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 380
	movhi HIGHW1(#_test100), r0, r2
	ld.hu LOWW(#_test100)[r2], r2
	movea 0x000000C8, r0, r5
	divhu r5, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 382
	movhi HIGHW1(#_gIOHwAbDI_IG1_St), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_gIOHwAbDI_IG1_St)[r2]
.BB.LABEL.6_8:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 0
	movea 0x00000064, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 384
	jarl _TimerHalTestMain, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 385
	jarl _TaskAntDetect100ms, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 387
	jarl _TerminateTask, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 389
	br9 .BB.LABEL.6_9
.BB.LABEL.6_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 394
	dispose 0x00000000, 0x00000001, [r31]
_IdleHook_Core0:
	.stack _IdleHook_Core0 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 399
	jmp [r31]
_ShutdownHook:
	.stack _ShutdownHook = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 419
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 432
	jarl _Mcu_SetMode, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_PanicHandler:
	.stack _Os_PanicHandler = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 446
	jmp [r31]
_ISR_RCAN1ERR_IRQ_Handler:
	.stack _ISR_RCAN1ERR_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 459
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 466
	jarl _CAN_CONTROLLER1_BUSOFF_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RCAN1TRX_IRQ_Handler:
	.stack _ISR_RCAN1TRX_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 478
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 485
	jarl _CAN_CONTROLLER1_TX_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RCANGRECC0_IRQ_Handler:
	.stack _ISR_RCANGRECC0_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 497
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 504
	jarl _CAN_RSCAN0_RXFIFO_CAT2_ISR, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_ADCA0I1_IRQ_Handler:
	.stack _ISR_ADCA0I1_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 517
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 524
	jarl _Adc_Isr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_ADCA1I1_IRQ_Handler:
	.stack _ISR_ADCA1I1_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 536
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 543
	mov r6, r7
	jarl _Adc_Isr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_TAUJ0I0_IRQ_Handler:
	.stack _ISR_TAUJ0I0_IRQ_Handler = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 555
	jmp [r31]
_ISR_TAUD0I9_IRQ_Handler:
	.stack _ISR_TAUD0I9_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 573
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 580
	jarl _Gpt_CbkNotification, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 581
	movhi HIGHW1(#_ret.1.ISR_TAUD0I9_IRQ_Handler), r0, r2
	ld.hu LOWW(#_ret.1.ISR_TAUD0I9_IRQ_Handler)[r2], r2
	addi 0xFFFFFF9D, r2, r0
	bgt9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 583
	add 0x00000001, r2
	movhi HIGHW1(#_ret.1.ISR_TAUD0I9_IRQ_Handler), r0, r5
	st.h r2, LOWW(#_ret.1.ISR_TAUD0I9_IRQ_Handler)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 587
	jarl _WDG_59_DRIVERA_TRIGGERFUNCTION_ISR, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 588
	movhi HIGHW1(#_ret.1.ISR_TAUD0I9_IRQ_Handler), r0, r2
	mov 0x00000001, r5
	st.h r5, LOWW(#_ret.1.ISR_TAUD0I9_IRQ_Handler)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_ISR_TAUB0I12_IRQ_Handler:
	.stack _ISR_TAUB0I12_IRQ_Handler = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 602
	jmp [r31]
_ISR_TAUB0I8_IRQ_Handler:
	.stack _ISR_TAUB0I8_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 620
	prepare 0x00000001, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 628
	jarl _Icu_TimerIsr, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 629
	jarl _Icu_Edge_Detect_Crash, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_TAUB0I9_IRQ_Handler:
	.stack _ISR_TAUB0I9_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 642
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 649
	jarl _Icu_TimerIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P1_IRQ_Handler:
	.stack _ISR_P1_IRQ_Handler = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 661
	jmp [r31]
_ISR_P2_IRQ_Handler:
	.stack _ISR_P2_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 680
	prepare 0x00000001, 0x00000000
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 687
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P5_IRQ_Handler:
	.stack _ISR_P5_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 699
	prepare 0x00000001, 0x00000000
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 706
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P6_IRQ_Handler:
	.stack _ISR_P6_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 718
	prepare 0x00000001, 0x00000000
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 725
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P7_IRQ_Handler:
	.stack _ISR_P7_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 737
	prepare 0x00000001, 0x00000000
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 744
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P9_IRQ_Handler:
	.stack _ISR_P9_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 756
	prepare 0x00000001, 0x00000000
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 763
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_P14_IRQ_Handler:
	.stack _ISR_P14_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 775
	prepare 0x00000001, 0x00000000
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 782
	jarl _Icu_ExternalInterruptIsr, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN34TX0_IRQ_Handler:
	.stack _ISR_RLIN34TX0_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 794
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 801
	jarl _r_uart4_interrupt_send, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN34RX1_IRQ_Handler:
	.stack _ISR_RLIN34RX1_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 813
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 820
	jarl _r_uart4_interrupt_receive, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN34ERR2_IRQ_Handler:
	.stack _ISR_RLIN34ERR2_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 832
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 839
	jarl _r_uart4_interrupt_error, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN35TX0_IRQ_Handler:
	.stack _ISR_RLIN35TX0_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 851
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 858
	jarl _r_uart5_interrupt_send, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN35RX1_IRQ_Handler:
	.stack _ISR_RLIN35RX1_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 870
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 877
	jarl _r_uart5_interrupt_receive, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RLIN35ERR2_IRQ_Handler:
	.stack _ISR_RLIN35ERR2_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 889
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 896
	jarl _r_uart5_interrupt_error, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RIIC0TI_IRQ_Handler:
	.stack _ISR_RIIC0TI_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 908
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 915
	jarl _r_riic0_transmit_interrupt, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RIIC0EE_IRQ_Handler:
	.stack _ISR_RIIC0EE_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 927
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 934
	jarl _r_riic0_error_interrupt, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RIIC0RI_IRQ_Handler:
	.stack _ISR_RIIC0RI_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 946
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 953
	jarl _r_riic0_receive_interrupt, r31
	dispose 0x00000000, 0x00000001, [r31]
_ISR_RIIC0TEI_IRQ_Handler:
	.stack _ISR_RIIC0TEI_IRQ_Handler = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 965
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_UserInf.c", 972
	jarl _r_riic0_transmitend_interrupt, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 2
_test1:
	.ds (2)
	.align 2
_test5:
	.ds (2)
	.align 2
_test10:
	.ds (2)
	.align 2
_test50:
	.ds (2)
	.align 2
_test100:
	.ds (2)
_wdgtest0:
	.ds (1)
_wdgtest1:
	.ds (1)
	.align 2
_ret.1.ISR_TAUD0I9_IRQ_Handler:
	.dhw 0x0001
	.section .const, const
.STR.1:
	.db 0x53,0x65,0x63,0x4F,0x43,0x5F,0x45,0x72,0x72,0x6F,0x72,0x4C,0x6F,0x67,0x51,0x75
	.db 0x65,0x75,0x65
	.ds (1)
.STR.12020:
	.db 0x61,0x70,0x70,0x20,0x73,0x79,0x73,0x74,0x65,0x6D,0x20,0x73,0x74,0x61,0x72,0x74
	.db 0x0A
	.ds (1)
