#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\BootServices\MemoryManager\MemM_cfg.c -oDefaultBuild\MemM_cfg.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f2c6c2a734904f9c9c015f5bc969d289j1cuvmup.vud
#@	compiled at Thu Jul 16 13:41:28 2026

	.file "..\..\Bsw\SystemServices\BootServices\MemoryManager\MemM_cfg.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_logicalBlocks, 32
	.public _g_FlagsInfo, 160

	.section .data, data
	.align 4
_g_logicalBlocks:
	.ds (1)
	.ds (3)
	.dw 0xFEDD0F00
	.dw 0xFEDDF000
	.dw 0x0000E100
	.db 0x01
	.ds (3)
	.dw 0x00080200
	.dw 0x0014FFFF
	.dw 0x000CFE00
	.align 4
_g_FlagsInfo:
	.db 0x02
	.ds (3)
	.dw 0x00000002
	.dw 0x00000004
	.dw 0x000000B5
	.db 0x02
	.ds (3)
	.dw 0x00000006
	.dw 0x00000004
	.dw 0x00000001
	.db 0x02
	.ds (3)
	.dw 0x00000006
	.dw 0x00000004
	.dw 0x00000002
	.db 0x02
	.ds (3)
	.dw 0x0000000E
	.dw 0x00000004
	.dw 0x000000A9
	.db 0x01
	.ds (3)
	.dw 0x00080000
	.dw 0x00000004
	.dw 0x000000FE
	.db 0x02
	.ds (3)
	.dw 0x0000000A
	.dw 0x00000004
	.dw 0x000000FF
	.db 0x02
	.ds (3)
	.dw 0x000003E6
	.dw 0x00000001
	.dw 0x000000FF
	.db 0x02
	.ds (3)
	.dw 0x00000408
	.dw 0x00000001
	.dw 0x000000FF
	.db 0x02
	.ds (3)
	.dw 0x00000012
	.dw 0x00000001
	.dw 0x000000FF
	.db 0x02
	.ds (3)
	.dw 0x00000013
	.dw 0x00000001
	.dw 0x000000FF
