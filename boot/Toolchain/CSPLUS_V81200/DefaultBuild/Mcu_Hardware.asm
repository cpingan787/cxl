#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_Hardware.c -oDefaultBuild\Mcu_Hardware.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_cf3389357cdb4e8d9050db3462a085dd04wkm3wk.tbc
#@	compiled at Thu Jul 16 13:41:39 2026

	.file "..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\src\Mcu_Hardware.c"

	$reg_mode 22
	.dbl_size 4

	.public _Mcu_WriteProtReg_BaseAddress, 4
	.public _LviReg_BaseAddress, 4
	.public _Mcu_IoHoldRegister_BaseAddress, 4
	.public _Mcu_ResfRegister_BaseAddress, 4
	.public _Clma0Reg_BaseAddress, 4
	.public _Clma1Reg_BaseAddress, 4
	.public _Clma2Reg_BaseAddress, 4
	.public _Mcu_Stbc0Register_BaseAddress, 4
	.public _WufReg_BaseAddress, 4
	.public _WufIsoReg_BaseAddress, 4
	.public _FEIntMsk_BaseAddress, 4
	.public _Mcu_ClkCtrlReg_BaseAddress, 4
	.public _Mcu_ICCWEND_IMRAddress, 4

	.section .const, const
	.align 4
_Mcu_WriteProtReg_BaseAddress:
	.dw 0xFFF80000
	.align 4
_LviReg_BaseAddress:
	.dw 0xFFF80980
	.align 4
_Mcu_IoHoldRegister_BaseAddress:
	.dw 0xFFF80B00
	.align 4
_Mcu_ResfRegister_BaseAddress:
	.dw 0xFFF80760
	.align 4
_Clma0Reg_BaseAddress:
	.dw 0xFFF8C000
	.align 4
_Clma1Reg_BaseAddress:
	.dw 0xFFF8D000
	.align 4
_Clma2Reg_BaseAddress:
	.dw 0xFFF8E000
	.align 4
_Mcu_Stbc0Register_BaseAddress:
	.dw 0xFFF80100
	.align 4
_WufReg_BaseAddress:
	.dw 0xFFF80400
	.align 4
_WufIsoReg_BaseAddress:
	.dw 0xFFF88110
	.align 4
_FEIntMsk_BaseAddress:
	.dw 0xFFC00100
	.align 4
_Mcu_ClkCtrlReg_BaseAddress:
	.dw 0xFFF81000
	.align 4
_Mcu_ICCWEND_IMRAddress:
	.dw 0xFFFFB40E
