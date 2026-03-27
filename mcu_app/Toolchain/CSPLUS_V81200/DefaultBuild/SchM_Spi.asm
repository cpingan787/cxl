#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\stubs\SchM\src\SchM_Spi.c -oDefaultBuild\SchM_Spi.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_fde34b47eec24098b64b5a2db4351769ittxcq44.uj0
#@	compiled at Fri Mar 27 09:50:13 2026

	.file "..\..\Bsw\Mcal\stubs\SchM\src\SchM_Spi.c"

	$reg_mode 32
	.dbl_size 8

	.public _SchM_Enter_Spi_SPI_RAM_DATA_PROTECTION
	.public _SchM_Exit_Spi_SPI_RAM_DATA_PROTECTION
	.public _SchM_Enter_Spi_SPI_INTERRUPT_CONTROL_PROTECTION
	.public _SchM_Exit_Spi_SPI_INTERRUPT_CONTROL_PROTECTION

	.section .text, text
_SchM_Enter_Spi_SPI_RAM_DATA_PROTECTION:
	.stack _SchM_Enter_Spi_SPI_RAM_DATA_PROTECTION = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 87
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 88
	movhi HIGHW1(#_SchM_SpiGucDINestCount.1), r0, r2
	ld.b LOWW(#_SchM_SpiGucDINestCount.1)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_SchM_SpiGucDINestCount.1)[r2]
	jmp [r31]
_SchM_Exit_Spi_SPI_RAM_DATA_PROTECTION:
	.stack _SchM_Exit_Spi_SPI_RAM_DATA_PROTECTION = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 96
	movhi HIGHW1(#_SchM_SpiGucDINestCount.1), r0, r2
	ld.b LOWW(#_SchM_SpiGucDINestCount.1)[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_SchM_SpiGucDINestCount.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 97
	ld.bu LOWW(#_SchM_SpiGucDINestCount.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 99
	ei
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 105
	jmp [r31]
_SchM_Enter_Spi_SPI_INTERRUPT_CONTROL_PROTECTION:
	.stack _SchM_Enter_Spi_SPI_INTERRUPT_CONTROL_PROTECTION = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 112
	di
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 113
	movhi HIGHW1(#_SchM_SpiGucDINestCount.1), r0, r2
	ld.b LOWW(#_SchM_SpiGucDINestCount.1)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_SchM_SpiGucDINestCount.1)[r2]
	jmp [r31]
_SchM_Exit_Spi_SPI_INTERRUPT_CONTROL_PROTECTION:
	.stack _SchM_Exit_Spi_SPI_INTERRUPT_CONTROL_PROTECTION = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 121
	movhi HIGHW1(#_SchM_SpiGucDINestCount.1), r0, r2
	ld.b LOWW(#_SchM_SpiGucDINestCount.1)[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_SchM_SpiGucDINestCount.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 122
	ld.bu LOWW(#_SchM_SpiGucDINestCount.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 124
	ei
.BB.LABEL.4_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/stubs/SchM/src/SchM_Spi.c", 130
	jmp [r31]
	.section .data, data
_SchM_SpiGucDINestCount.1:
	.ds (1)
