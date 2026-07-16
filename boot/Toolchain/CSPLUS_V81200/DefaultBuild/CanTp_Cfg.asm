#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\CanTp\CanTp_Cfg.c -oDefaultBuild\CanTp_Cfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_374b4473894f49c69d6414ea9d5852cbzgcvxlai.ubm
#@	compiled at Thu Jul 16 13:41:30 2026

	.file "..\..\Bsw\SystemServices\BootServices\CanTp\CanTp_Cfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _CanTp_Config, 28

	.section .const, const
	.align 4
_CanTp_RxPdu.1:
	.ds (8)
	.db 0x01
	.ds (1)
	.ds (2)
	.ds (4)
	.align 2
_CanTp_TxSdu.2:
	.db 0x40
	.db 0x19
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (2)
	.ds (12)
	.align 2
_CanTp_RxSdu.3:
	.db 0x09
	.ds (1)
	.ds (1)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (2)
	.ds (2)
	.db 0x0D
	.ds (1)
	.ds (1)
	.db 0x01
	.ds (1)
	.ds (1)
	.ds (2)
	.dhw 0x0001
	.dhw 0x0001
	.align 2
_CanTp_TimeOut.4:
	.dhw 0x0046
	.dhw 0x0096
	.dhw 0x003D
	.dhw 0x0046
	.dhw 0x003C
	.dhw 0x0096
	.align 2
_CanTp_Param.5:
	.ds (4)
	.align 4
_CanTp_Config:
	.db 0x01
	.db 0x02
	.db 0x01
	.db 0x02
	.db 0x01
	.ds (3)
	.dw #_CanTp_RxPdu.1
	.dw #_CanTp_TxSdu.2
	.dw #_CanTp_RxSdu.3
	.dw #_CanTp_TimeOut.4
	.dw #_CanTp_Param.5
