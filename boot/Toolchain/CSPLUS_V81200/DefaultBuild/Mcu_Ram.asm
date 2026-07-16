#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\mcu\src\Mcu_Ram.c -oDefaultBuild\Mcu_Ram.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_85dcaccfcbe54d5d8e646ee5d5d93f7e2qobaz5z.de1
#@	compiled at Thu Jul 16 13:41:26 2026

	.file "..\..\Bsw\Mcal\mcu\src\Mcu_Ram.c"

	$reg_mode 22
	.dbl_size 4

	.public _Mcu_GpConfigPtr, 4
	.public _Mcu_GpClockSetting, 4
	.public _Mcu_GpCkscSetting, 4
	.public _Mcu_GddLpsRegRamMirror, 32
	.public _Mcu_GddClkMntrReg0RamMirror, 6
	.public _Mcu_GddClkMntrReg1RamMirror, 6
	.public _Mcu_GddClkMntrReg2RamMirror, 6
	.public _Mcu_GddClkMntrReg3RamMirror, 6
	.public _Mcu_GddTaujOsRegRamMirror, 4
	.public _Mcu_GddTaujChRegRamMirror, 8
	.public _Mcu_GddClkCntlRegRamMirror, 172
	.public _Mcu_GblDriverStatus, 1
	.public _Mcu_GblPllActCheck, 1
	.public _Mcu_GblResetFlag, 1
	.public _Mcu_GblWakeUpPreparation, 1

	.section .bss, bss
	.align 4
_Mcu_GpConfigPtr:
	.ds (4)
	.align 4
_Mcu_GpClockSetting:
	.ds (4)
	.align 4
_Mcu_GpCkscSetting:
	.ds (4)
	.align 4
_Mcu_GddLpsRegRamMirror:
	.ds (32)
	.align 2
_Mcu_GddClkMntrReg0RamMirror:
	.ds (6)
	.align 2
_Mcu_GddClkMntrReg1RamMirror:
	.ds (6)
	.align 2
_Mcu_GddClkMntrReg2RamMirror:
	.ds (6)
	.align 2
_Mcu_GddClkMntrReg3RamMirror:
	.ds (6)
	.align 2
_Mcu_GddTaujOsRegRamMirror:
	.ds (4)
	.align 4
_Mcu_GddTaujChRegRamMirror:
	.ds (8)
	.align 4
_Mcu_GddClkCntlRegRamMirror:
	.ds (172)
	.section .data, data
_Mcu_GblDriverStatus:
	.ds (1)
_Mcu_GblPllActCheck:
	.db 0x01
_Mcu_GblResetFlag:
	.db 0x01
_Mcu_GblWakeUpPreparation:
	.db 0x01
