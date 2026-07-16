#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Private.c -oDefaultBuild\Wdg_59_DriverB_Private.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_253effd21281447ea3b1974cd6477c733sdliooe.zqz
#@	compiled at Thu Jul 16 13:41:25 2026

	.file "..\..\Bsw\Mcal\wdg\src\Wdg_59_DriverB_Private.c"

	$reg_mode 22
	.dbl_size 4

	.extern _WDG_59_DriverB_GpWDTAReg_BaseAddr
	.public _Wdg_59_DriverB_TriggerFunc
	.extern _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION
	.extern _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION

	.section .text, text
_Wdg_59_DriverB_TriggerFunc:
	.stack _Wdg_59_DriverB_TriggerFunc = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 248
	prepare 0x00000201, 0x00000000
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 266
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 268
	jarl32 _SchM_Enter_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 282
	movhi HIGHW1(#_WDG_59_DriverB_GpWDTAReg_BaseAddr), r0, r5
	ld.w LOWW(#_WDG_59_DriverB_GpWDTAReg_BaseAddr)[r5], r5
	movea 0xFFFFFFAC, r0, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 301
	cmp 0x00000000, r25
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 303
	jarl32 _SchM_Exit_Wdg_59_DriverB_WDG_59_DRIVERB_TRIGG_PROTECTION, r31
.BB.LABEL.1_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/wdg/src/Wdg_59_DriverB_Private.c", 318
	dispose 0x00000000, 0x00000201, [r31]
