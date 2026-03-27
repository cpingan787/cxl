#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\Os_Alarm_Cfg.c -oDefaultBuild\Os_Alarm_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e9bf0d6f5fa34371a59f8e3974acfc85payzrvcv.4kq
#@	compiled at Fri Mar 27 09:50:12 2026

	.file "..\..\Bsw\Config\BSW_Config\Os_Alarm_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Os_AlarmCfg, 80
	.public _Os_ACB, 20
	.public _Os_AlarmIdRange, 8
	.extern _ActivateTaskAsyn

	.section .text, text
_AlarmCallback_OsAlarm_1ms.1:
	.stack _AlarmCallback_OsAlarm_1ms.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 74
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 76
	jarl _ActivateTaskAsyn, r31
	dispose 0x00000000, 0x00000001, [r31]
_AlarmCallback_OsAlarm_5ms.1:
	.stack _AlarmCallback_OsAlarm_5ms.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 82
	prepare 0x00000001, 0x00000000
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 84
	jarl _ActivateTaskAsyn, r31
	dispose 0x00000000, 0x00000001, [r31]
_AlarmCallback_OsAlarm_10ms.1:
	.stack _AlarmCallback_OsAlarm_10ms.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 90
	prepare 0x00000001, 0x00000000
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 92
	jarl _ActivateTaskAsyn, r31
	dispose 0x00000000, 0x00000001, [r31]
_AlarmCallback_OsAlarm_50ms.1:
	.stack _AlarmCallback_OsAlarm_50ms.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 98
	prepare 0x00000001, 0x00000000
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 100
	jarl _ActivateTaskAsyn, r31
	dispose 0x00000000, 0x00000001, [r31]
_AlarmCallback_OsAlarm_100ms.1:
	.stack _AlarmCallback_OsAlarm_100ms.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 106
	prepare 0x00000001, 0x00000000
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Config/BSW_Config/Os_Alarm_Cfg.c", 108
	jarl _ActivateTaskAsyn, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
	.align 4
_Os_AlarmCfg:
	.ds (4)
	.dw #_AlarmCallback_OsAlarm_1ms.1
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_AlarmCallback_OsAlarm_5ms.1
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_AlarmCallback_OsAlarm_10ms.1
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_AlarmCallback_OsAlarm_50ms.1
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.dw #_AlarmCallback_OsAlarm_100ms.1
	.ds (2)
	.ds (2)
	.ds (4)
	.align 4
_Os_ACB:
	.dw #_Os_ACB_OsAlarm_1ms.1
	.dw #_Os_ACB_OsAlarm_5ms.2
	.dw #_Os_ACB_OsAlarm_10ms.3
	.dw #_Os_ACB_OsAlarm_50ms.4
	.dw #_Os_ACB_OsAlarm_100ms.5
	.align 4
_Os_AlarmIdRange:
	.ds (4)
	.dw 0x00000005
	.section .bss, bss
	.align 4
_Os_ACB_OsAlarm_1ms.1:
	.ds (12)
	.align 4
_Os_ACB_OsAlarm_5ms.2:
	.ds (12)
	.align 4
_Os_ACB_OsAlarm_10ms.3:
	.ds (12)
	.align 4
_Os_ACB_OsAlarm_50ms.4:
	.ds (12)
	.align 4
_Os_ACB_OsAlarm_100ms.5:
	.ds (12)
