#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Can_OutPut\src\Can_PBcfg.c -oDefaultBuild\Can_PBcfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cf9dca0d88c0415ca7fb76c247764fd9mpzl3abi.n5w
#@	compiled at Thu Jul 16 13:41:29 2026

	.file "..\..\Bsw\Config\MCAL_Config\Can_OutPut\src\Can_PBcfg.c"

	$reg_mode 22
	.dbl_size 4

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
	.dw 0x00001372
	.dw 0x00000001
	.ds (1)
	.ds (1)
	.db 0x40
	.ds (1)
	.dhw 0x0002
	.ds (2)
	.dw 0x00000001
	.ds (1)
	.ds (1)
	.ds (2)
	.dw 0x00011574
	.dw 0x00000001
	.ds (1)
	.ds (1)
	.db 0x40
	.ds (1)
	.dhw 0x0003
	.ds (2)
	.dw 0x00000001
	.db 0x01
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
	.dw 0x02000000
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
