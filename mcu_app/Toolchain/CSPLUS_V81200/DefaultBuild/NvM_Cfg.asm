#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\NvM_Cfg.c -oDefaultBuild\NvM_Cfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f27cd620e5074ca09c32e2f6b1b927a5kijf5nqt.vzu
#@	compiled at Fri Mar 27 09:50:11 2026

	.file "..\..\Bsw\Config\BSW_Config\NvM_Cfg.c"

	$reg_mode 32
	.dbl_size 8

	.extern _DemEventMemoryEntryStorage
	.extern _DemEventRelateInformationStorage
	.public _NvMBlock_DIDF1A9_RomAddress, 4
	.public _NvMBlock_DIDF18B_RomAddress, 3
	.public _NvMBlock_DIDF18C_RomAddress, 16
	.public _NvMBlock_DIDF190_RomAddress, 17
	.public _NvMBlock_DIDF198_RomAddress, 11
	.public _NvMBlock_DIDF1A8_RomAddress, 20
	.public _NvMBlock_DIDF130_RomAddress, 32
	.public _NvMBlock_DIDC001_RomAddress, 64
	.public _NvMBlock_DIDC002_RomAddress, 32
	.public _NvMBlock_DIDC003_RomAddress, 32
	.public _NvMBlock_DIDC004_RomAddress, 64
	.public _NvMBlock_DIDC005_RomAddress, 32
	.public _NvMBlock_DIDC006_RomAddress, 32
	.public _NvMBlock_DIDC007_RomAddress, 32
	.public _NvMBlock_DIDC008_RomAddress, 32
	.public _NvMBlock_DIDC009_RomAddress, 6
	.public _NvMBlock_DIDC00A_RomAddress, 32
	.public _NvMBlock_DIDC00B_RomAddress, 6
	.public _NvMBlock_DIDC00C_RomAddress, 4
	.public _NvMBlock_DIDC00D_RomAddress, 2
	.public _NvMBlock_DIDC011_RomAddress, 64
	.public _NvMBlock_DIDC012_RomAddress, 32
	.public _NvMBlock_DIDC013_RomAddress, 32
	.public _NvMBlock_DIDC014_RomAddress, 64
	.public _NvMBlock_DIDC015_RomAddress, 32
	.public _NvMBlock_DIDC016_RomAddress, 32
	.public _NvMBlock_DIDC102_RomAddress, 2
	.public _NvMBlock_DIDC106_RomAddress, 8
	.public _NvMBlock_DIDC109_RomAddress, 14
	.public _NvMBlock_DIDCA02_RomAddress, 37
	.public _NvMBlock_DIDCA21_RomAddress, 1
	.public _NvMBlock_DIDC305_RomAddress, 2
	.public _NvMBlock_DIDC306_RomAddress, 1
	.public _NvMBlock_DIDC307_RomAddress, 2
	.public _NvMBlock_DIDC308_RomAddress, 8
	.public _NvMBlock_DIDC309_RomAddress, 8
	.public _NvMBlock_DIDC30A_RomAddress, 2
	.public _NvMBlock_DIDC30C_RomAddress, 8
	.public _NvMBlock_DIDCE01_RomAddress, 2
	.public _NvMBlock_DIDCE05_RomAddress, 1
	.public _NvMBlock_DIDCE06_RomAddress, 1
	.public _NvMBlock_DIDCF00_RomAddress, 24
	.public _NvMBlock_DIDC30D_RomAddress, 2
	.public _NvMBlock_Reserved_block0_RomAddress, 254
	.public _NvMBlock_Reserved_block1_RomAddress, 254
	.public _NvMBlock_Reserved_block2_RomAddress, 254
	.public _NvMBlock_27Key_error_count_RomAddress, 1
	.public _NvMBlock_SecOc_count_RomAddress, 4
	.public _NvMBlock_SecOc_Key_RomAddress, 16
	.public _NvMBlock_DID0100_RomAddress, 16
	.public _NvmMultiBlockCallback, 4
	.public _NvMBlockRamBuffer1, 2
	.public _NvMBlockRamBuffer2, 5
	.public _NvMBlockRamBuffer5, 3
	.public _NvMBlockRamBuffer6, 16
	.public _NvMBlockRamBuffer7, 17
	.public _NvMBlockRamBuffer8, 11
	.public _NvMBlockRamBuffer9, 20
	.public _NvMBlockRamBuffer10, 32
	.public _NvMBlockRamBuffer11, 64
	.public _NvMBlockRamBuffer12, 32
	.public _NvMBlockRamBuffer13, 32
	.public _NvMBlockRamBuffer14, 64
	.public _NvMBlockRamBuffer15, 32
	.public _NvMBlockRamBuffer16, 32
	.public _NvMBlockRamBuffer17, 32
	.public _NvMBlockRamBuffer18, 32
	.public _NvMBlockRamBuffer19, 6
	.public _NvMBlockRamBuffer20, 32
	.public _NvMBlockRamBuffer21, 6
	.public _NvMBlockRamBuffer22, 4
	.public _NvMBlockRamBuffer23, 2
	.public _NvMBlockRamBuffer24, 64
	.public _NvMBlockRamBuffer25, 32
	.public _NvMBlockRamBuffer26, 32
	.public _NvMBlockRamBuffer27, 64
	.public _NvMBlockRamBuffer28, 32
	.public _NvMBlockRamBuffer29, 32
	.public _NvMBlockRamBuffer30, 2
	.public _NvMBlockRamBuffer31, 8
	.public _NvMBlockRamBuffer32, 14
	.public _NvMBlockRamBuffer33, 37
	.public _NvMBlockRamBuffer34, 1
	.public _NvMBlockRamBuffer35, 2
	.public _NvMBlockRamBuffer36, 1
	.public _NvMBlockRamBuffer37, 2
	.public _NvMBlockRamBuffer38, 8
	.public _NvMBlockRamBuffer39, 8
	.public _NvMBlockRamBuffer40, 2
	.public _NvMBlockRamBuffer41, 8
	.public _NvMBlockRamBuffer42, 2
	.public _NvMBlockRamBuffer43, 1
	.public _NvMBlockRamBuffer44, 1
	.public _NvMBlockRamBuffer45, 24
	.public _NvMBlockRamBuffer46, 2
	.public _NvMBlockRamBuffer47, 254
	.public _NvMBlockRamBuffer48, 254
	.public _NvMBlockRamBuffer49, 254
	.public _NvMBlockRamBuffer50, 1
	.public _NvMBlockRamBuffer51, 4
	.public _NvMBlockRamBuffer52, 16
	.public _NvMBlockRamBuffer53, 16
	.public _NvMCrcBuf_NvMBlock_ConfigID, 4
	.public _NvMCrcBuf_NvMBlock_DIDF1A9, 4
	.public _NvMCrcBuf_NvMBlock_All_EventEntry, 4
	.public _NvMCrcBuf_NvMBlock_UDS_InternalData, 4
	.public _NvMCrcBuf_NvMBlock_DIDF18B, 4
	.public _NvMCrcBuf_NvMBlock_DIDF18C, 4
	.public _NvMCrcBuf_NvMBlock_DIDF190, 4
	.public _NvMCrcBuf_NvMBlock_DIDF198, 4
	.public _NvMCrcBuf_NvMBlock_DIDF1A8, 4
	.public _NvMCrcBuf_NvMBlock_DIDF130, 4
	.public _NvMCrcBuf_NvMBlock_DIDC001, 4
	.public _NvMCrcBuf_NvMBlock_DIDC002, 4
	.public _NvMCrcBuf_NvMBlock_DIDC003, 4
	.public _NvMCrcBuf_NvMBlock_DIDC004, 4
	.public _NvMCrcBuf_NvMBlock_DIDC005, 4
	.public _NvMCrcBuf_NvMBlock_DIDC006, 4
	.public _NvMCrcBuf_NvMBlock_DIDC007, 4
	.public _NvMCrcBuf_NvMBlock_DIDC008, 4
	.public _NvMCrcBuf_NvMBlock_DIDC009, 4
	.public _NvMCrcBuf_NvMBlock_DIDC00A, 4
	.public _NvMCrcBuf_NvMBlock_DIDC00B, 4
	.public _NvMCrcBuf_NvMBlock_DIDC00C, 4
	.public _NvMCrcBuf_NvMBlock_DIDC00D, 4
	.public _NvMCrcBuf_NvMBlock_DIDC011, 4
	.public _NvMCrcBuf_NvMBlock_DIDC012, 4
	.public _NvMCrcBuf_NvMBlock_DIDC013, 4
	.public _NvMCrcBuf_NvMBlock_DIDC014, 4
	.public _NvMCrcBuf_NvMBlock_DIDC015, 4
	.public _NvMCrcBuf_NvMBlock_DIDC016, 4
	.public _NvMCrcBuf_NvMBlock_DIDC102, 4
	.public _NvMCrcBuf_NvMBlock_DIDC106, 4
	.public _NvMCrcBuf_NvMBlock_DIDC109, 4
	.public _NvMCrcBuf_NvMBlock_DIDCA02, 4
	.public _NvMCrcBuf_NvMBlock_DIDCA21, 4
	.public _NvMCrcBuf_NvMBlock_DIDC305, 4
	.public _NvMCrcBuf_NvMBlock_DIDC306, 4
	.public _NvMCrcBuf_NvMBlock_DIDC307, 4
	.public _NvMCrcBuf_NvMBlock_DIDC308, 4
	.public _NvMCrcBuf_NvMBlock_DIDC309, 4
	.public _NvMCrcBuf_NvMBlock_DIDC30A, 4
	.public _NvMCrcBuf_NvMBlock_DIDC30C, 4
	.public _NvMCrcBuf_NvMBlock_DIDCE01, 4
	.public _NvMCrcBuf_NvMBlock_DIDCE05, 4
	.public _NvMCrcBuf_NvMBlock_DIDCE06, 4
	.public _NvMCrcBuf_NvMBlock_DIDCF00, 4
	.public _NvMCrcBuf_NvMBlock_DIDC30D, 4
	.public _NvMCrcBuf_NvMBlock_Reserved_block0, 4
	.public _NvMCrcBuf_NvMBlock_Reserved_block1, 4
	.public _NvMCrcBuf_NvMBlock_Reserved_block2, 4
	.public _NvMCrcBuf_NvMBlock_27Key_error_count, 4
	.public _NvMCrcBuf_NvMBlock_SecOc_count, 4
	.public _NvMCrcBuf_NvMBlock_SecOc_Key, 4
	.public _NvMCrcBuf_NvMBlock_DID0100, 4
	.public _NvM_BlockDescriptor, 2968

	.section .data, data
_NvMBlock_DIDF1A9_RomAddress:
	.ds (4)
_NvMBlock_DIDF18B_RomAddress:
	.ds (3)
_NvMBlock_DIDF18C_RomAddress:
	.ds (16)
_NvMBlock_DIDF190_RomAddress:
	.ds (17)
_NvMBlock_DIDF198_RomAddress:
	.ds (11)
_NvMBlock_DIDF1A8_RomAddress:
	.ds (20)
_NvMBlock_DIDF130_RomAddress:
	.ds (32)
_NvMBlock_DIDC001_RomAddress:
	.ds (64)
_NvMBlock_DIDC002_RomAddress:
	.ds (32)
_NvMBlock_DIDC003_RomAddress:
	.ds (32)
_NvMBlock_DIDC004_RomAddress:
	.ds (64)
_NvMBlock_DIDC005_RomAddress:
	.ds (32)
_NvMBlock_DIDC006_RomAddress:
	.ds (32)
_NvMBlock_DIDC007_RomAddress:
	.ds (32)
_NvMBlock_DIDC008_RomAddress:
	.ds (32)
_NvMBlock_DIDC009_RomAddress:
	.ds (6)
_NvMBlock_DIDC00A_RomAddress:
	.ds (32)
_NvMBlock_DIDC00B_RomAddress:
	.ds (6)
_NvMBlock_DIDC00C_RomAddress:
	.ds (4)
_NvMBlock_DIDC00D_RomAddress:
	.ds (2)
_NvMBlock_DIDC011_RomAddress:
	.ds (64)
_NvMBlock_DIDC012_RomAddress:
	.ds (32)
_NvMBlock_DIDC013_RomAddress:
	.ds (32)
_NvMBlock_DIDC014_RomAddress:
	.ds (64)
_NvMBlock_DIDC015_RomAddress:
	.ds (32)
_NvMBlock_DIDC016_RomAddress:
	.ds (32)
_NvMBlock_DIDC102_RomAddress:
	.ds (2)
_NvMBlock_DIDC106_RomAddress:
	.ds (8)
_NvMBlock_DIDC109_RomAddress:
	.ds (14)
_NvMBlock_DIDCA02_RomAddress:
	.ds (37)
_NvMBlock_DIDCA21_RomAddress:
	.ds (1)
_NvMBlock_DIDC305_RomAddress:
	.ds (2)
_NvMBlock_DIDC306_RomAddress:
	.ds (1)
_NvMBlock_DIDC307_RomAddress:
	.ds (2)
_NvMBlock_DIDC308_RomAddress:
	.ds (8)
_NvMBlock_DIDC309_RomAddress:
	.ds (8)
_NvMBlock_DIDC30A_RomAddress:
	.ds (2)
_NvMBlock_DIDC30C_RomAddress:
	.ds (8)
_NvMBlock_DIDCE01_RomAddress:
	.ds (2)
_NvMBlock_DIDCE05_RomAddress:
	.ds (1)
_NvMBlock_DIDCE06_RomAddress:
	.ds (1)
_NvMBlock_DIDCF00_RomAddress:
	.ds (24)
_NvMBlock_DIDC30D_RomAddress:
	.ds (2)
_NvMBlock_Reserved_block0_RomAddress:
	.ds (254)
_NvMBlock_Reserved_block1_RomAddress:
	.ds (254)
_NvMBlock_Reserved_block2_RomAddress:
	.ds (254)
_NvMBlock_27Key_error_count_RomAddress:
	.ds (1)
_NvMBlock_SecOc_count_RomAddress:
	.ds (4)
_NvMBlock_SecOc_Key_RomAddress:
	.ds (16)
_NvMBlock_DID0100_RomAddress:
	.ds (16)
	.section .const, const
	.align 4
_NvmMultiBlockCallback:
	.ds (4)
	.align 4
_NvM_BlockDescriptor:
	.ds (1)
	.ds (3)
	.dw 0x00000002
	.ds (2)
	.dhw 0x003C
	.dw 0x00000002
	.dhw 0x0001
	.dhw 0x0002
	.db 0x02
	.ds (1)
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_ConfigID
	.dw #_NvMBlockRamBuffer1
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0002
	.dhw 0x0005
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF1A9
	.dw #_NvMBlockRamBuffer2
	.dw #_NvMBlock_DIDF1A9_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x0038
	.dw 0x00000002
	.dhw 0x0003
	.dhw 0x09AE
	.db 0x01
	.ds (1)
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_All_EventEntry
	.dw #_DemEventMemoryEntryStorage
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x0038
	.dw 0x00000002
	.dhw 0x0004
	.dhw 0x00F4
	.db 0x01
	.ds (1)
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_UDS_InternalData
	.dw #_DemEventRelateInformationStorage
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0005
	.dhw 0x0003
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF18B
	.dw #_NvMBlockRamBuffer5
	.dw #_NvMBlock_DIDF18B_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0006
	.dhw 0x0010
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF18C
	.dw #_NvMBlockRamBuffer6
	.dw #_NvMBlock_DIDF18C_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0007
	.dhw 0x0011
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF190
	.dw #_NvMBlockRamBuffer7
	.dw #_NvMBlock_DIDF190_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0008
	.dhw 0x000B
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF198
	.dw #_NvMBlockRamBuffer8
	.dw #_NvMBlock_DIDF198_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0009
	.dhw 0x0014
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF1A8
	.dw #_NvMBlockRamBuffer9
	.dw #_NvMBlock_DIDF1A8_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000A
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDF130
	.dw #_NvMBlockRamBuffer10
	.dw #_NvMBlock_DIDF130_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000B
	.dhw 0x0040
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC001
	.dw #_NvMBlockRamBuffer11
	.dw #_NvMBlock_DIDC001_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000C
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC002
	.dw #_NvMBlockRamBuffer12
	.dw #_NvMBlock_DIDC002_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000D
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC003
	.dw #_NvMBlockRamBuffer13
	.dw #_NvMBlock_DIDC003_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000E
	.dhw 0x0040
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC004
	.dw #_NvMBlockRamBuffer14
	.dw #_NvMBlock_DIDC004_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x000F
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC005
	.dw #_NvMBlockRamBuffer15
	.dw #_NvMBlock_DIDC005_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0010
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC006
	.dw #_NvMBlockRamBuffer16
	.dw #_NvMBlock_DIDC006_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0011
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC007
	.dw #_NvMBlockRamBuffer17
	.dw #_NvMBlock_DIDC007_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0012
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC008
	.dw #_NvMBlockRamBuffer18
	.dw #_NvMBlock_DIDC008_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0013
	.dhw 0x0006
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC009
	.dw #_NvMBlockRamBuffer19
	.dw #_NvMBlock_DIDC009_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0014
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC00A
	.dw #_NvMBlockRamBuffer20
	.dw #_NvMBlock_DIDC00A_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0015
	.dhw 0x0006
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC00B
	.dw #_NvMBlockRamBuffer21
	.dw #_NvMBlock_DIDC00B_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0016
	.dhw 0x0004
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC00C
	.dw #_NvMBlockRamBuffer22
	.dw #_NvMBlock_DIDC00C_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0017
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC00D
	.dw #_NvMBlockRamBuffer23
	.dw #_NvMBlock_DIDC00D_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0018
	.dhw 0x0040
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC011
	.dw #_NvMBlockRamBuffer24
	.dw #_NvMBlock_DIDC011_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0019
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC012
	.dw #_NvMBlockRamBuffer25
	.dw #_NvMBlock_DIDC012_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001A
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC013
	.dw #_NvMBlockRamBuffer26
	.dw #_NvMBlock_DIDC013_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001B
	.dhw 0x0040
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC014
	.dw #_NvMBlockRamBuffer27
	.dw #_NvMBlock_DIDC014_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001C
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC015
	.dw #_NvMBlockRamBuffer28
	.dw #_NvMBlock_DIDC015_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001D
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC016
	.dw #_NvMBlockRamBuffer29
	.dw #_NvMBlock_DIDC016_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001E
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC102
	.dw #_NvMBlockRamBuffer30
	.dw #_NvMBlock_DIDC102_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x001F
	.dhw 0x0008
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC106
	.dw #_NvMBlockRamBuffer31
	.dw #_NvMBlock_DIDC106_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0020
	.dhw 0x000E
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC109
	.dw #_NvMBlockRamBuffer32
	.dw #_NvMBlock_DIDC109_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0021
	.dhw 0x0025
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCA02
	.dw #_NvMBlockRamBuffer33
	.dw #_NvMBlock_DIDCA02_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0022
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCA21
	.dw #_NvMBlockRamBuffer34
	.dw #_NvMBlock_DIDCA21_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0023
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC305
	.dw #_NvMBlockRamBuffer35
	.dw #_NvMBlock_DIDC305_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0024
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC306
	.dw #_NvMBlockRamBuffer36
	.dw #_NvMBlock_DIDC306_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0025
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC307
	.dw #_NvMBlockRamBuffer37
	.dw #_NvMBlock_DIDC307_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0026
	.dhw 0x0008
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC308
	.dw #_NvMBlockRamBuffer38
	.dw #_NvMBlock_DIDC308_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0027
	.dhw 0x0008
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC309
	.dw #_NvMBlockRamBuffer39
	.dw #_NvMBlock_DIDC309_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0028
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC30A
	.dw #_NvMBlockRamBuffer40
	.dw #_NvMBlock_DIDC30A_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0029
	.dhw 0x0008
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC30C
	.dw #_NvMBlockRamBuffer41
	.dw #_NvMBlock_DIDC30C_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002A
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCE01
	.dw #_NvMBlockRamBuffer42
	.dw #_NvMBlock_DIDCE01_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002B
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCE05
	.dw #_NvMBlockRamBuffer43
	.dw #_NvMBlock_DIDCE05_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002C
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCE06
	.dw #_NvMBlockRamBuffer44
	.dw #_NvMBlock_DIDCE06_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002D
	.dhw 0x0018
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDCF00
	.dw #_NvMBlockRamBuffer45
	.dw #_NvMBlock_DIDCF00_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002E
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DIDC30D
	.dw #_NvMBlockRamBuffer46
	.dw #_NvMBlock_DIDC30D_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x002F
	.dhw 0x00FE
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_Reserved_block0
	.dw #_NvMBlockRamBuffer47
	.dw #_NvMBlock_Reserved_block0_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0030
	.dhw 0x00FE
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_Reserved_block1
	.dw #_NvMBlockRamBuffer48
	.dw #_NvMBlock_Reserved_block1_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0031
	.dhw 0x00FE
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_Reserved_block2
	.dw #_NvMBlockRamBuffer49
	.dw #_NvMBlock_Reserved_block2_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0032
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_27Key_error_count
	.dw #_NvMBlockRamBuffer50
	.dw #_NvMBlock_27Key_error_count_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0033
	.dhw 0x0004
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_SecOc_count
	.dw #_NvMBlockRamBuffer51
	.dw #_NvMBlock_SecOc_count_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0034
	.dhw 0x0010
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_SecOc_Key
	.dw #_NvMBlockRamBuffer52
	.dw #_NvMBlock_SecOc_Key_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.dw 0x00000001
	.ds (2)
	.dhw 0x023C
	.dw 0x00000002
	.dhw 0x0035
	.dhw 0x0010
	.db 0x01
	.db 0x01
	.db 0x03
	.db 0x03
	.ds (2)
	.ds (2)
	.dw #_NvMCrcBuf_NvMBlock_DID0100
	.dw #_NvMBlockRamBuffer53
	.dw #_NvMBlock_DID0100_RomAddress
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.section .bss, bss
_NvMBlockRamBuffer1:
	.ds (2)
_NvMBlockRamBuffer2:
	.ds (5)
_NvMBlockRamBuffer5:
	.ds (3)
_NvMBlockRamBuffer6:
	.ds (16)
_NvMBlockRamBuffer7:
	.ds (17)
_NvMBlockRamBuffer8:
	.ds (11)
_NvMBlockRamBuffer9:
	.ds (20)
_NvMBlockRamBuffer10:
	.ds (32)
_NvMBlockRamBuffer11:
	.ds (64)
_NvMBlockRamBuffer12:
	.ds (32)
_NvMBlockRamBuffer13:
	.ds (32)
_NvMBlockRamBuffer14:
	.ds (64)
_NvMBlockRamBuffer15:
	.ds (32)
_NvMBlockRamBuffer16:
	.ds (32)
_NvMBlockRamBuffer17:
	.ds (32)
_NvMBlockRamBuffer18:
	.ds (32)
_NvMBlockRamBuffer19:
	.ds (6)
_NvMBlockRamBuffer20:
	.ds (32)
_NvMBlockRamBuffer21:
	.ds (6)
_NvMBlockRamBuffer22:
	.ds (4)
_NvMBlockRamBuffer23:
	.ds (2)
_NvMBlockRamBuffer24:
	.ds (64)
_NvMBlockRamBuffer25:
	.ds (32)
_NvMBlockRamBuffer26:
	.ds (32)
_NvMBlockRamBuffer27:
	.ds (64)
_NvMBlockRamBuffer28:
	.ds (32)
_NvMBlockRamBuffer29:
	.ds (32)
_NvMBlockRamBuffer30:
	.ds (2)
_NvMBlockRamBuffer31:
	.ds (8)
_NvMBlockRamBuffer32:
	.ds (14)
_NvMBlockRamBuffer33:
	.ds (37)
_NvMBlockRamBuffer34:
	.ds (1)
_NvMBlockRamBuffer35:
	.ds (2)
_NvMBlockRamBuffer36:
	.ds (1)
_NvMBlockRamBuffer37:
	.ds (2)
_NvMBlockRamBuffer38:
	.ds (8)
_NvMBlockRamBuffer39:
	.ds (8)
_NvMBlockRamBuffer40:
	.ds (2)
_NvMBlockRamBuffer41:
	.ds (8)
_NvMBlockRamBuffer42:
	.ds (2)
_NvMBlockRamBuffer43:
	.ds (1)
_NvMBlockRamBuffer44:
	.ds (1)
_NvMBlockRamBuffer45:
	.ds (24)
_NvMBlockRamBuffer46:
	.ds (2)
_NvMBlockRamBuffer47:
	.ds (254)
_NvMBlockRamBuffer48:
	.ds (254)
_NvMBlockRamBuffer49:
	.ds (254)
_NvMBlockRamBuffer50:
	.ds (1)
_NvMBlockRamBuffer51:
	.ds (4)
_NvMBlockRamBuffer52:
	.ds (16)
_NvMBlockRamBuffer53:
	.ds (16)
	.align 4
_NvMCrcBuf_NvMBlock_ConfigID:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF1A9:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_All_EventEntry:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_UDS_InternalData:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF18B:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF18C:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF190:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF198:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF1A8:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDF130:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC001:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC002:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC003:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC004:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC005:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC006:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC007:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC008:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC009:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC00A:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC00B:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC00C:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC00D:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC011:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC012:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC013:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC014:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC015:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC016:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC102:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC106:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC109:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCA02:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCA21:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC305:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC306:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC307:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC308:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC309:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC30A:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC30C:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCE01:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCE05:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCE06:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDCF00:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DIDC30D:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_Reserved_block0:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_Reserved_block1:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_Reserved_block2:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_27Key_error_count:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_SecOc_count:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_SecOc_Key:
	.ds (4)
	.align 4
_NvMCrcBuf_NvMBlock_DID0100:
	.ds (4)
