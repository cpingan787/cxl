#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\src\Gpt_PBcfg.c -oDefaultBuild\Gpt_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_28d35469d841422eafdb765181ea6ae91tu3qzw0.zgi
#@	compiled at Fri Mar 27 09:50:35 2026

	.file "..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\src\Gpt_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Gpt_GstConfiguration, 16
	.public _Gpt_GstTAUUnitConfig, 24
	.public _Gpt_GstChannelConfig, 160
	.public _Gpt_GstChannelRamData, 32
	.extern _Gpt_Notification_0
	.extern _Gpt_Notification_1
	.extern _Gpt_Notification_2

	.section .const, const
	.align 4
_Gpt_GstConfiguration:
	.dw 0x0ED90100
	.dw #_Gpt_GstTAUUnitConfig
	.dw #_Gpt_GstChannelConfig
	.dw #_Gpt_GstChannelRamData
	.align 2
_Gpt_GstTAUUnitConfig:
	.ds (1)
	.ds (1)
	.dhw 0x0300
	.dhw 0x2222
	.db 0xFF
	.db 0x01
	.db 0x01
	.db 0x01
	.dhw 0x1000
	.dhw 0xF954
	.ds (1)
	.db 0x01
	.ds (1)
	.ds (1)
	.dhw 0x0001
	.dhw 0xFFF0
	.db 0xFF
	.db 0x01
	.align 4
_Gpt_GstChannelConfig:
	.dw #_Gpt_Notification_0
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFFFB068
	.dhw 0x0200
	.ds (2)
	.dhw 0xFFFF
	.ds (1)
	.db 0x10
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFFEEA18
	.dhw 0x0100
	.ds (2)
	.dhw 0xFFFF
	.ds (1)
	.db 0x10
	.dw #_Gpt_Notification_1
	.db 0x02
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFFFB134
	.dhw 0x1000
	.ds (2)
	.dhw 0xFFFF
	.db 0x01
	.db 0x11
	.dw #_Gpt_Notification_2
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFFFB0A0
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFFF
	.db 0x02
	.db 0x12
	.dw #_Gpt_Notification_0
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFFFB0A8
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFFF
	.db 0xFF
	.db 0x13
	.dw #_Gpt_Notification_0
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC00108
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFFB
	.db 0xFF
	.db 0x14
	.dw #_Gpt_Notification_0
	.db 0x02
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC00108
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFF7
	.db 0xFF
	.db 0x14
	.dw #_Gpt_Notification_0
	.db 0x03
	.ds (1)
	.ds (1)
	.ds (1)
	.dw 0xFFC00108
	.dhw 0x0001
	.ds (2)
	.dhw 0xFFEF
	.db 0xFF
	.db 0x14
	.section .bss, bss
	.align 4
_Gpt_GstChannelRamData:
	.ds (32)
