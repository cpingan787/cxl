#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Can_OutPut\src\Can_PBcfg.c -oDefaultBuild\Can_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_2e6fcde5bf144d55a685924b3530bed8q44dyfvt.u5l
#@	compiled at Fri Mar 27 09:50:25 2026

	.file "..\..\Bsw\Config\MCAL_Config\Can_OutPut\src\Can_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Can_GaaControllerPCConfig0
	.extern _Can_GaaPhysicalControllerToIndex0
	.public _Can_GaaConfig, 24

	.section .const, const
	.align 4
_Can_GaaBaudrateConfig00.1:
	.ds (1)
	.ds (1)
	.dhw 0x01F4
	.dw 0x07163800
	.dw 0x01140000
	.dw 0x00000200
	.db 0x01
	.db 0x01
	.ds (2)
	.align 4
_Can_GaaControllerPBConfig0.2:
	.ds (1)
	.ds (1)
	.dhw 0x0001
	.dw #_Can_GaaBaudrateConfig00.1
	.align 4
_Can_GaaHohConfig0.3:
	.ds (4)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (2)
	.dw 0x00000003
	.ds (1)
	.ds (1)
	.ds (2)
	.dw 0x00001572
	.ds (4)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.dhw 0x0001
	.ds (2)
	.dw 0x00000003
	.db 0x01
	.ds (1)
	.ds (2)
	.dw 0x00001572
	.dw 0x00000001
	.ds (1)
	.ds (1)
	.db 0x40
	.ds (1)
	.dhw 0x0002
	.ds (2)
	.dw 0x00000001
	.db 0x03
	.ds (1)
	.ds (2)
	.dw 0x00011374
	.dw 0x00000001
	.ds (1)
	.ds (1)
	.db 0x40
	.ds (1)
	.dhw 0x0003
	.ds (2)
	.dw 0x00000001
	.db 0x04
	.ds (1)
	.ds (2)
	.dw 0x00111374
	.align 4
_Can_GaaFilterConfig00.4:
	.ds (4)
	.dw 0xC0000000
	.ds (4)
	.dw 0x00000001
	.ds (4)
	.dw 0xC0000000
	.ds (4)
	.dw 0x00000002
	.align 4
_Can_GaaTMIEConfig00.5:
	.ds (12)
	.align 4
_Can_GaaHWUnitInfo0.6:
	.db 0x03
	.db 0x02
	.dhw 0x0002
	.dw 0x00000300
	.dw 0x00080012
	.dw 0x00020000
	.ds (4)
	.dw #_Can_GaaTMIEConfig00.5
	.dw #_Can_GaaFilterConfig00.4
	.dw 0x00000004
	.align 4
_Can_GaaConfig:
	.dw 0x0ED40100
	.dw #_Can_GaaHWUnitInfo0.6
	.dw #_Can_GaaControllerPCConfig0
	.dw #_Can_GaaControllerPBConfig0.2
	.dw #_Can_GaaHohConfig0.3
	.dw #_Can_GaaPhysicalControllerToIndex0
