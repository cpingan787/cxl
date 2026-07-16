#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_PBcfg.c -oDefaultBuild\Mcu_PBcfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a2ef37b86ac4463ba603e78299014a0c0r4xtcxr.fzx
#@	compiled at Thu Jul 16 13:41:43 2026

	.file "..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_PBcfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _Mcu_GstConfiguration, 20
	.public _Mcu_GaaClockOffset, 16
	.public _Mcu_GstClockSetting, 40
	.public _Mcu_GstCkscSetting, 104
	.public _Mcu_GstModeSetting, 24

	.section .const, const
	.align 4
_Mcu_GstConfiguration:
	.dw 0x0ED94110
	.dw 0x000020C4
	.ds (4)
	.dw #_Mcu_GaaClockOffset
	.ds (1)
	.ds (1)
	.ds (2)
_Mcu_GaaClockOffset:
	.db 0x04,0x09,0x0E,0x13,0x16,0x31,0x1A,0x1C,0x1E,0x20,0x27,0x2D,0x2A,0x2F,0xFF
	.ds (1)
	.align 4
_Mcu_GstClockSetting:
	.dw #_Mcu_GstCkscSetting
	.ds (1)
	.ds (3)
	.dw 0x0000083B
	.dw 0x0001FFFF
	.dhw 0x0001
	.db 0x0D
	.db 0x02
	.ds (1)
	.db 0x03
	.db 0x04
	.db 0x06
	.ds (1)
	.db 0x07
	.db 0x01
	.db 0x01
	.dhw 0x01BC
	.dhw 0x0280
	.dhw 0x03A9
	.dhw 0x04C3
	.dhw 0x0077
	.dhw 0x00D6
	.align 2
_Mcu_GstCkscSetting:
	.ds (1)
	.db 0x2A
	.dhw 0x002C
	.ds (1)
	.db 0x01
	.db 0x02
	.ds (1)
	.db 0x2D
	.ds (1)
	.dhw 0xFFFF
	.db 0x03
	.ds (1)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (1)
	.dhw 0xFFFF
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.db 0x0E
	.db 0x10
	.dhw 0x0012
	.db 0x01
	.db 0x01
	.db 0x03
	.ds (1)
	.db 0x13
	.ds (1)
	.dhw 0x0015
	.db 0x01
	.ds (1)
	.db 0x01
	.ds (1)
	.db 0x04
	.db 0x06
	.dhw 0x0008
	.db 0x02
	.db 0x01
	.db 0x03
	.ds (1)
	.ds (1)
	.db 0x01
	.dhw 0x0003
	.ds (1)
	.db 0x01
	.db 0x02
	.ds (1)
	.db 0x16
	.db 0x18
	.dhw 0xFFFF
	.db 0x03
	.db 0x11
	.db 0x03
	.ds (1)
	.db 0x27
	.ds (1)
	.dhw 0x0029
	.db 0x02
	.ds (1)
	.db 0x01
	.ds (1)
	.db 0x1E
	.db 0x24
	.dhw 0x0026
	.db 0x01
	.db 0x01
	.db 0x03
	.ds (1)
	.db 0x1A
	.ds (1)
	.dhw 0xFFFF
	.db 0x01
	.ds (1)
	.db 0x01
	.ds (1)
	.db 0x1C
	.ds (1)
	.dhw 0xFFFF
	.db 0x01
	.ds (1)
	.db 0x01
	.ds (1)
	.db 0x31
	.ds (1)
	.dhw 0xFFFF
	.db 0x03
	.ds (1)
	.db 0x01
	.ds (1)
	.align 4
_Mcu_GstModeSetting:
	.dw 0xFFEFDF5F
	.dw 0xFFFFFFFF
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw 0xFFFFDF5F
	.dw 0xFFFFFFFF
	.db 0x02
	.db 0x01
	.db 0x01
	.ds (1)
