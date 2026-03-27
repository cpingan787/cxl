#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Adc_OutPut\src\Adc_PBcfg.c -oDefaultBuild\Adc_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_58e4a34b1c3b4d0989eab370029bce33emdyicw0.sgi
#@	compiled at Fri Mar 27 09:50:23 2026

	.file "..\..\Bsw\Config\MCAL_Config\Adc_OutPut\src\Adc_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Adc_GaaSgUnitPriorityQueue, 1
	.public _Adc_GstGroupRamData, 60
	.public _Adc_GstSgUnitRamData, 24
	.public _Adc_GstRunTimeData, 16
	.public _Adc_GaaChannelToDisableEnable, 29
	.public _Adc_GstConfiguration, 52
	.public _Adc_GstHWUnitConfig, 40
	.public _Adc_GstSgUnitConfig, 40
	.public _Adc_GstGroupConfig, 48
	.public _Adc_GaaChannelToGroup, 58
	.public _Adc_GaaHwUnitIndex, 2
	.public _Adc_GaaSgUnitIndex, 6
	.extern _IoHwAb_Adc_Notification_Group0
	.extern _IoHwAb_Adc_Notification_Group1
	.extern _IoHwAb_Adc_Notification_Group2

	.section .bss, bss
_Adc_GaaSgUnitPriorityQueue:
	.ds (1)
	.align 4
_Adc_GstGroupRamData:
	.ds (60)
	.align 4
_Adc_GstSgUnitRamData:
	.ds (24)
	.align 4
_Adc_GstRunTimeData:
	.ds (16)
_Adc_GaaChannelToDisableEnable:
	.ds (29)
	.section .const, const
	.align 4
_Adc_GstConfiguration:
	.dw 0x0EDEC108
	.dw #_Adc_GstHWUnitConfig
	.dw #_Adc_GstSgUnitConfig
	.dw #_Adc_GstGroupConfig
	.ds (4)
	.dw #_Adc_GaaChannelToGroup
	.dw #_Adc_GaaHwUnitIndex
	.dw #_Adc_GaaSgUnitIndex
	.dw #_Adc_GstGroupRamData
	.dw #_Adc_GstSgUnitRamData
	.dw #_Adc_GstRunTimeData
	.dw #_Adc_GaaChannelToDisableEnable
	.db 0x03
	.db 0x03
	.db 0x1D
	.ds (1)
	.align 4
_Adc_GstHWUnitConfig:
	.ds (1)
	.ds (1)
	.ds (2)
	.dw 0xFFFEEA24
	.ds (4)
	.dw 0x00000012
	.db 0x01
	.db 0x10
	.ds (2)
	.db 0x01
	.db 0x03
	.ds (2)
	.dw 0xFFFFB1AA
	.ds (4)
	.dw 0x00000018
	.db 0x01
	.db 0x08
	.ds (2)
	.align 4
_Adc_GstSgUnitConfig:
	.db 0x01
	.ds (3)
	.dw #_Adc_GaaSgUnitPriorityQueue
	.dw 0xFFFEEA26
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.db 0x04
	.ds (3)
	.ds (4)
	.dw 0xFFFFB1AC
	.ds (4)
	.ds (1)
	.ds (1)
	.db 0x01
	.ds (1)
	.align 4
_Adc_GstGroupConfig:
	.dw #_IoHwAb_Adc_Notification_Group0
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x04
	.db 0x10
	.ds (2)
	.dw #_IoHwAb_Adc_Notification_Group1
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.db 0x10
	.db 0x05
	.db 0x08
	.ds (2)
	.dw #_IoHwAb_Adc_Notification_Group2
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.db 0x18
	.db 0x04
	.db 0x05
	.ds (2)
	.align 2
_Adc_GaaChannelToGroup:
	.ds (2)
	.dhw 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x000C
	.dhw 0x000D,0x000E,0x000F
	.ds (2)
	.dhw 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007
	.ds (2)
	.dhw 0x0001,0x0002,0x0003,0x0004
_Adc_GaaHwUnitIndex:
	.ds (1)
	.db 0x01
_Adc_GaaSgUnitIndex:
	.db 0xFF
	.ds (1)
	.db 0xFF,0xFF,0x01,0xFF
