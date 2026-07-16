#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Adc_OutPut\src\Adc_PBcfg.c -oDefaultBuild\Adc_PBcfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f1a0928444bf4673ab97cf72cecd3f690aosrd0h.1ml
#@	compiled at Thu Jul 16 13:41:27 2026

	.file "..\..\Bsw\Config\MCAL_Config\Adc_OutPut\src\Adc_PBcfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _Adc_GstGroupRamData, 60
	.public _Adc_GstSgUnitRamData, 24
	.public _Adc_GstRunTimeData, 16
	.public _Adc_GaaChannelToDisableEnable, 10
	.public _Adc_GstConfiguration, 52
	.public _Adc_GstHWUnitConfig, 40
	.public _Adc_GstSgUnitConfig, 40
	.public _Adc_GstGroupConfig, 48
	.public _Adc_GaaHWGroupTrigg, 4
	.public _Adc_GaaChannelToGroup, 20
	.public _Adc_GaaHwUnitIndex, 2
	.public _Adc_GaaSgUnitIndex, 6
	.extern _IoHwAb_Adc_Notification_Group0
	.extern _IoHwAb_Adc_Notification_Group1
	.extern _IoHwAb_Adc_Notification_Group2

	.section .bss, bss
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
	.ds (10)
	.section .const, const
	.align 4
_Adc_GstConfiguration:
	.dw 0x0EDEC108
	.dw #_Adc_GstHWUnitConfig
	.dw #_Adc_GstSgUnitConfig
	.dw #_Adc_GstGroupConfig
	.dw #_Adc_GaaHWGroupTrigg
	.dw #_Adc_GaaChannelToGroup
	.dw #_Adc_GaaHwUnitIndex
	.dw #_Adc_GaaSgUnitIndex
	.dw #_Adc_GstGroupRamData
	.dw #_Adc_GstSgUnitRamData
	.dw #_Adc_GstRunTimeData
	.dw #_Adc_GaaChannelToDisableEnable
	.db 0x02
	.db 0x03
	.db 0x0A
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
	.db 0x05
	.ds (2)
	.db 0x01
	.db 0x03
	.ds (2)
	.dw 0xFFFFB1AA
	.dw 0x00000010
	.dw 0x00000012
	.db 0x01
	.db 0x01
	.ds (2)
	.align 4
_Adc_GstSgUnitConfig:
	.ds (1)
	.ds (3)
	.ds (4)
	.dw 0xFFFEEA24
	.ds (4)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x03
	.ds (3)
	.ds (4)
	.dw 0xFFFFB1AA
	.ds (4)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.align 4
_Adc_GstGroupConfig:
	.dw #_IoHwAb_Adc_Notification_Group0
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x05
	.db 0x04
	.ds (2)
	.dw #_IoHwAb_Adc_Notification_Group1
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.db 0x04
	.db 0x05
	.db 0x01
	.ds (2)
	.dw #_IoHwAb_Adc_Notification_Group2
	.ds (4)
	.db 0x01
	.ds (1)
	.ds (1)
	.db 0x05
	.db 0x05
	.db 0x05
	.ds (2)
	.align 4
_Adc_GaaHWGroupTrigg:
	.dw 0x00000001
	.align 2
_Adc_GaaChannelToGroup:
	.dhw 0x0001,0x0002,0x0003,0x0004,0x0013,0x0001,0x0002,0x0003,0x0004,0x0005
_Adc_GaaHwUnitIndex:
	.ds (1)
	.db 0x01
_Adc_GaaSgUnitIndex:
	.ds (1)
	.db 0xFF,0xFF,0x01,0xFF,0xFF
