#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\adc\src\Adc_Ram.c -oDefaultBuild\Adc_Ram.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_990a43c0dced47d480b5e2c0d49343d6wx30lxmo.rfe
#@	compiled at Thu Jul 16 13:41:57 2026

	.file "..\..\Bsw\Mcal\adc\src\Adc_Ram.c"

	$reg_mode 22
	.dbl_size 4

	.public _Adc_GpHwUnitConfig, 4
	.public _Adc_GpSgUnitConfig, 4
	.public _Adc_GpGroupConfig, 4
	.public _Adc_GpHWGroupTrigg, 4
	.public _Adc_GpHwUnitIndex, 4
	.public _Adc_GpSgUnitIndex, 4
	.public _Adc_GpChannelToGroup, 4
	.public _Adc_GpGroupRamData, 4
	.public _Adc_GpChannelToDisableEnable, 4
	.public _Adc_GpSgUnitRamData, 4
	.public _Adc_GpRunTimeData, 4
	.public _Adc_GaaRamMirrorAdcConfReg, 80
	.public _Adc_GaaRamMirrorAdcVirChReg, 400
	.public _Adc_GaaRamMirrorAdcSGReg, 96
	.public _Adc_GucMaxSwTriggGroups, 1
	.public _Adc_GucNoOfGroups, 1

	.section .bss, bss
	.align 4
_Adc_GpHwUnitConfig:
	.ds (4)
	.align 4
_Adc_GpSgUnitConfig:
	.ds (4)
	.align 4
_Adc_GpGroupConfig:
	.ds (4)
	.align 4
_Adc_GpHWGroupTrigg:
	.ds (4)
	.align 4
_Adc_GpHwUnitIndex:
	.ds (4)
	.align 4
_Adc_GpSgUnitIndex:
	.ds (4)
	.align 4
_Adc_GpChannelToGroup:
	.ds (4)
	.align 4
_Adc_GpGroupRamData:
	.ds (4)
	.align 4
_Adc_GpChannelToDisableEnable:
	.ds (4)
	.align 4
_Adc_GpSgUnitRamData:
	.ds (4)
	.align 4
_Adc_GpRunTimeData:
	.ds (4)
	.align 4
_Adc_GaaRamMirrorAdcConfReg:
	.ds (80)
	.align 4
_Adc_GaaRamMirrorAdcVirChReg:
	.ds (400)
	.align 4
_Adc_GaaRamMirrorAdcSGReg:
	.ds (96)
_Adc_GucMaxSwTriggGroups:
	.ds (1)
_Adc_GucNoOfGroups:
	.ds (1)
