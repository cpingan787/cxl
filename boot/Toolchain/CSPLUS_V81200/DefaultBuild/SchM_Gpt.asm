#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\stubs\SchM\src\SchM_Gpt.c -oDefaultBuild\SchM_Gpt.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_e7a741831e4b4dbb8c36c19090ea37f2j123le3v.nt1
#@	compiled at Thu Jul 16 13:41:43 2026

	.file "..\..\Bsw\Mcal\stubs\SchM\src\SchM_Gpt.c"

	$reg_mode 22
	.dbl_size 4

	.public _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION
	.extern _SuspendAllInterrupts
	.public _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION
	.extern _ResumeAllInterrupts
	.public _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION
	.public _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION

	.section .text, text
_SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION:
	.stack _SchM_Enter_Gpt_GPT_TIMERINT_PROTECTION = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 86
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 88
	jarl32 _SuspendAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION:
	.stack _SchM_Exit_Gpt_GPT_TIMERINT_PROTECTION = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 94
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 96
	jarl32 _ResumeAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION:
	.stack _SchM_Enter_Gpt_GPT_TIMERREG_PROTECTION = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 102
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 104
	jarl32 _SuspendAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION:
	.stack _SchM_Exit_Gpt_GPT_TIMERREG_PROTECTION = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 110
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/stubs/SchM/src/SchM_Gpt.c", 112
	jarl32 _ResumeAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
