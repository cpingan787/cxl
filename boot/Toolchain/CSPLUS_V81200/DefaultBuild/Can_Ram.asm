#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_Ram.c -oDefaultBuild\Can_Ram.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_17419e4900e34c18bb9fd1eea97b94beb4conaqf.03y
#@	compiled at Thu Jul 16 13:41:31 2026

	.file "..\..\Bsw\Mcal\can\src\Can_Ram.c"

	$reg_mode 22
	.dbl_size 4

	.public _Can_GblInitialized, 1
	.public _Can_GaaHwAccessFlag, 4
	.public _Can_GaaGlobalIntCount, 4
	.public _Can_GulPageID, 4
	.public _Can_GpConfig, 4
	.public _Can_GpPCController, 4
	.public _Can_GpPBController, 4
	.public _Can_GpHohConfig, 4
	.public _Can_GaaCtrlState, 20
	.public _Can_GaaMirrorGlobalReg, 4
	.public _Can_GaaMirrorChannelReg, 16
	.public _Can_GaaMirrorHohReg, 48

	.section .data, data
_Can_GblInitialized:
	.ds (1)
	.section .bss, bss
_Can_GaaHwAccessFlag:
	.ds (4)
	.align 4
_Can_GaaGlobalIntCount:
	.ds (4)
	.align 4
_Can_GulPageID:
	.ds (4)
	.align 4
_Can_GpConfig:
	.ds (4)
	.align 4
_Can_GpPCController:
	.ds (4)
	.align 4
_Can_GpPBController:
	.ds (4)
	.align 4
_Can_GpHohConfig:
	.ds (4)
	.align 4
_Can_GaaCtrlState:
	.ds (20)
	.align 4
_Can_GaaMirrorGlobalReg:
	.ds (4)
	.align 4
_Can_GaaMirrorChannelReg:
	.ds (16)
	.align 4
_Can_GaaMirrorHohReg:
	.ds (48)
