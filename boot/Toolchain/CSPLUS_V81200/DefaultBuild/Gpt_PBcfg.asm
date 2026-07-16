#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\src\Gpt_PBcfg.c -oDefaultBuild\Gpt_PBcfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2e5627a3e8a346f785bd2c4f04cba3da1ebgkt2c.3x1
#@	compiled at Thu Jul 16 13:41:37 2026

	.file "..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\src\Gpt_PBcfg.c"

	$reg_mode 22
	.dbl_size 4

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
	.dhw 0xFFFF
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
