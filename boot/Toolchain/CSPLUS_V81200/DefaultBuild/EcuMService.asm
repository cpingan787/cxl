#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\EcuMService\EcuMService.c -oDefaultBuild\EcuMService.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_275b0d9527364d1498b5ee15615b4e0b05u2mwhy.kwr
#@	compiled at Thu Jul 16 13:41:52 2026

	.file "..\..\Bsw\SystemServices\BootServices\EcuMService\EcuMService.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Port_GstConfiguration
	.extern _Can_GaaConfig
	.extern _Wdg_59_DriverB_GstConfiguration
	.extern _Port_Init
	.extern _Dio_WriteChannel
	.extern _Wdg_59_DriverB_Init
	.extern _EEIf_Init
	.extern _SecureBoot_Init
	.extern _Can_Init
	.extern _Can_SetControllerMode
	.extern _CanTp_Init
	.extern _BootM_GetFlag
	.extern _SecM_Init
	.extern _Dcm_Init
	.extern _BootM_FlagHandle
	.public _EcuMService_Init
	.public _EcuMService_DeInit
	.extern _SuspendAllInterrupts

	.section .text, text
_Mcal_Init.1:
	.stack _Mcal_Init.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 85
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 88
	mov #_Port_GstConfiguration, r6
	jarl32 _Port_Init, r31
	mov 0x00000000, r25
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 90
	mov r25, r7
	jarl32 _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 95
	mov #_Wdg_59_DriverB_GstConfiguration, r6
	jarl32 _Wdg_59_DriverB_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 98
	jarl32 _EEIf_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 101
	jarl32 _SecureBoot_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 104
	mov #_Can_GaaConfig, r6
	jarl32 _Can_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 105
	mov r25, r6
	mov r25, r7
	jarl32 _Can_SetControllerMode, r31
	dispose 0x00000000, 0x00000201, [r31]
_Service_Init.1:
	.stack _Service_Init.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 124
	prepare 0x00000201, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 128
	jarl32 _CanTp_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 130
	jarl32 _BootM_GetFlag, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 132
	jarl32 _SecM_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 134
	jarl32 _Dcm_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 136
	mov r25, r6
	jarl32 _BootM_FlagHandle, r31
	dispose 0x00000000, 0x00000201, [r31]
_EcuMService_Init:
	.stack _EcuMService_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 156
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 159
	jarl _Mcal_Init.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 163
	jarl _Service_Init.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_EcuMService_DeInit:
	.stack _EcuMService_DeInit = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 181
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 190
	jarl32 _Can_SetControllerMode, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/BootServices/EcuMService/EcuMService.c", 192
	jarl32 _SuspendAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
