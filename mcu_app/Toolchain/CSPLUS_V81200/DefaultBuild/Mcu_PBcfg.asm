#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_PBcfg.c -oDefaultBuild\Mcu_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_619b331f4bc04f509ee09eb7dde62de2y5kf0dlc.by5
#@	compiled at Fri Mar 27 09:50:38 2026

	.file "..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _Mcu_GaaRamPortGroup, 4
	.public _Mcu_GstConfiguration, 36
	.public _Mcu_GaaClockOffset, 16
	.public _Mcu_GaaPortGroup, 4
	.public _Mcu_GstClockSetting, 40
	.public _Mcu_GstCkscSetting, 112
	.public _Mcu_GstModeSetting, 12

	.section .bss, bss
	.align 4
_Mcu_GaaRamPortGroup:
	.ds (4)
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
	.dw #_Mcu_GaaPortGroup
	.ds (1)
	.ds (3)
	.dw #_Mcu_GaaRamPortGroup
	.ds (1)
	.db 0x01
	.ds (2)
_Mcu_GaaClockOffset:
	.db 0x04,0x09,0x0E,0x13,0x16,0x31,0x1A,0x1C,0x1E,0x20,0x27,0x2D,0x2A,0x2F,0xFF
	.ds (1)
	.align 4
_Mcu_GaaPortGroup:
	.dw 0xFFC10124
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
	.db 0x01
	.db 0x03
	.db 0x04
	.db 0x07
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
	.db 0x06
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
	.db 0x07
	.ds (1)
	.db 0x13
	.ds (1)
	.dhw 0x0015
	.db 0x01
	.ds (1)
	.db 0x05
	.ds (1)
	.db 0x04
	.db 0x06
	.dhw 0x0008
	.db 0x02
	.db 0x01
	.db 0x07
	.ds (1)
	.ds (1)
	.db 0x01
	.dhw 0x0003
	.ds (1)
	.db 0x01
	.db 0x06
	.ds (1)
	.db 0x16
	.db 0x18
	.dhw 0xFFFF
	.db 0x03
	.db 0x11
	.db 0x03
	.ds (1)
	.db 0x20
	.db 0x22
	.dhw 0xFFFF
	.db 0x03
	.db 0x01
	.db 0x03
	.ds (1)
	.db 0x27
	.ds (1)
	.dhw 0x0029
	.db 0x02
	.ds (1)
	.db 0x05
	.ds (1)
	.db 0x1E
	.db 0x24
	.dhw 0x0026
	.db 0x01
	.db 0x01
	.db 0x07
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
	.dw 0xFBCF773F
	.dw 0xFFFFFFFF
	.db 0x03
	.db 0x01
	.db 0x01
	.ds (1)
