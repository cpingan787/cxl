#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Config\BSW_Config\PduR_PBcfg.c -oDefaultBuild\PduR_PBcfg.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_0310fdaadfaf4ef69b8bd0cd231da028yl5jr3fa.tud
#@	compiled at Fri Mar 27 09:50:43 2026

	.file "..\..\Bsw\Config\BSW_Config\PduR_PBcfg.c"

	$reg_mode 32
	.dbl_size 8

	.public _PduR_PBConfigData, 24

	.section .const, const
	.align 2
_PduR_PduRSrcPduIdRef.1:
	.ds (2)
	.dhw 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x000C
	.dhw 0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019
	.dhw 0x001A,0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025
	.dhw 0x0026,0x0027,0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,0x0030,0x0031
	.dhw 0x0032,0x0033,0x0034,0x0035,0x0036,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D
	.dhw 0x003E,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,0x0048,0x0049
	.dhw 0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,0x0050,0x0051,0x0052,0x0053,0x0054,0x0055
	.dhw 0x0056,0x0057,0x0058,0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,0x0060,0x0061
	.dhw 0x0062,0x0063,0x0064,0x0065,0x0066,0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,0x006D
	.dhw 0x006E,0x006F,0x0070,0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,0x0079
	.dhw 0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,0x0081,0x0082,0x0083,0x0084,0x0085
	.dhw 0x0086,0x0088,0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,0x0091,0x0092
	.dhw 0x0093,0x0094,0x0095,0x0096,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E
	.dhw 0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x00A6,0x00A7,0x0013,0x0087,0x00A8
	.dhw 0x00A9,0x00AA,0x00AB,0x00AC
	.align 4
_PduR_DestPduConfigData.2:
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw #_PduR_PduRSrcPduIdRef.1
	.ds (2)
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 2
	.dhw 0x0001
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 4
	.dhw 0x0002
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 6
	.dhw 0x0003
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 8
	.dhw 0x0004
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 10
	.dhw 0x0005
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 12
	.dhw 0x0006
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 14
	.dhw 0x0007
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 16
	.dhw 0x0008
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 18
	.dhw 0x0009
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 20
	.dhw 0x000A
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 22
	.dhw 0x000B
	.dhw 0x0014
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 24
	.dhw 0x000C
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 26
	.dhw 0x000D
	.dhw 0x0020
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 28
	.dhw 0x000E
	.dhw 0x0010
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 30
	.dhw 0x000F
	.dhw 0x000C
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 32
	.dhw 0x0010
	.dhw 0x0020
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 34
	.dhw 0x0011
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 36
	.dhw 0x0012
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 332
	.dhw 0x0013
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 38
	.dhw 0x0014
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 40
	.dhw 0x0015
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 42
	.dhw 0x0016
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 44
	.dhw 0x0017
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 46
	.dhw 0x0018
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 48
	.dhw 0x0019
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 50
	.dhw 0x001A
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 344
	.dhw 0x001B
	.dhw 0x0014
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 342
	.dhw 0x001C
	.dhw 0x0034
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 340
	.dhw 0x001D
	.dhw 0x0034
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 338
	.dhw 0x001E
	.dhw 0x000C
	.ds (4)
	.ds (4)
	.db 0x03
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 60
	.dhw 0x0005
	.dhw 0x0040
	.dw 0x00000005
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 62
	.ds (2)
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 64
	.dhw 0x0001
	.dhw 0x0030
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 66
	.dhw 0x0002
	.dhw 0x0030
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 68
	.dhw 0x0003
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 70
	.dhw 0x0004
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 72
	.dhw 0x0005
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 74
	.dhw 0x0006
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 76
	.dhw 0x0007
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 78
	.dhw 0x0008
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 80
	.dhw 0x0009
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 82
	.dhw 0x000A
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 84
	.dhw 0x000B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 86
	.dhw 0x000C
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 88
	.dhw 0x000D
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 90
	.dhw 0x000E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 92
	.dhw 0x000F
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 94
	.dhw 0x0010
	.dhw 0x000C
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 96
	.dhw 0x0011
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 98
	.dhw 0x0012
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 100
	.dhw 0x0013
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 102
	.dhw 0x0014
	.dhw 0x000C
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 104
	.dhw 0x0015
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 106
	.dhw 0x0016
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 108
	.dhw 0x0017
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 110
	.dhw 0x0018
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 112
	.dhw 0x0019
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 114
	.dhw 0x001A
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 116
	.dhw 0x001B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 118
	.dhw 0x001C
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 120
	.dhw 0x001D
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 122
	.dhw 0x001E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 124
	.dhw 0x001F
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 126
	.dhw 0x0020
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 128
	.dhw 0x0021
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 130
	.dhw 0x0022
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 132
	.dhw 0x0023
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 134
	.dhw 0x0024
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 136
	.dhw 0x0025
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 138
	.dhw 0x0026
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 140
	.dhw 0x0027
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 142
	.dhw 0x0028
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 144
	.dhw 0x0029
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 146
	.dhw 0x002A
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 148
	.dhw 0x002B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 150
	.dhw 0x002C
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 152
	.dhw 0x002D
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 154
	.dhw 0x002E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 156
	.dhw 0x002F
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 158
	.dhw 0x0030
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 160
	.dhw 0x0031
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 162
	.dhw 0x0032
	.dhw 0x0020
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 164
	.dhw 0x0033
	.dhw 0x0020
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 166
	.dhw 0x0034
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 168
	.dhw 0x0035
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 170
	.dhw 0x0036
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 172
	.dhw 0x0037
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 174
	.dhw 0x0038
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 176
	.dhw 0x0039
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 178
	.dhw 0x003A
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 180
	.dhw 0x003B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 182
	.dhw 0x003C
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 184
	.dhw 0x003D
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 186
	.dhw 0x003E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 188
	.dhw 0x003F
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 190
	.dhw 0x0040
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 192
	.dhw 0x0041
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 194
	.dhw 0x0042
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 196
	.dhw 0x0043
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 198
	.dhw 0x0044
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 200
	.dhw 0x0045
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 202
	.dhw 0x0046
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 204
	.dhw 0x0047
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 206
	.dhw 0x0048
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 208
	.dhw 0x0049
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 210
	.dhw 0x004A
	.dhw 0x0018
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 212
	.dhw 0x004B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 214
	.dhw 0x004C
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 216
	.dhw 0x004D
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 218
	.dhw 0x004E
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 220
	.dhw 0x004F
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 222
	.dhw 0x0050
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 224
	.dhw 0x0051
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 226
	.dhw 0x0052
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 228
	.dhw 0x0053
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 230
	.dhw 0x0054
	.dhw 0x0020
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 232
	.dhw 0x0055
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 234
	.dhw 0x0056
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 236
	.dhw 0x0057
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 238
	.dhw 0x0058
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 240
	.dhw 0x0059
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 242
	.dhw 0x005A
	.dhw 0x0020
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 244
	.dhw 0x005B
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 246
	.dhw 0x005C
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 248
	.dhw 0x005D
	.dhw 0x000C
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 250
	.dhw 0x005E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 252
	.dhw 0x005F
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 254
	.dhw 0x0060
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 256
	.dhw 0x0061
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 258
	.dhw 0x0062
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 260
	.dhw 0x0063
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 262
	.dhw 0x0064
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 264
	.dhw 0x0065
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 266
	.dhw 0x0066
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 336
	.dhw 0x0067
	.dhw 0x0005
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 268
	.dhw 0x0068
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 270
	.dhw 0x0069
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 272
	.dhw 0x006A
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 274
	.dhw 0x006B
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 276
	.dhw 0x006C
	.dhw 0x0010
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 278
	.dhw 0x006D
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 280
	.dhw 0x006E
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 282
	.dhw 0x006F
	.dhw 0x0014
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 284
	.dhw 0x0070
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 286
	.dhw 0x0071
	.dhw 0x0040
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 288
	.dhw 0x0072
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 290
	.dhw 0x0073
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 292
	.dhw 0x0074
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.ds (1)
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 294
	.dhw 0x0075
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.db 0x04
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 296
	.dhw 0x0001
	.dhw 0x0400
	.dw 0x00000006
	.ds (4)
	.db 0x04
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 298
	.ds (2)
	.dhw 0x0040
	.dw 0x00000006
	.ds (4)
	.db 0x02
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 300
	.ds (2)
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 302
	.dhw 0x0020
	.dhw 0x0040
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 304
	.ds (2)
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 306
	.dhw 0x0001
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 308
	.dhw 0x0002
	.dhw 0x0018
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 310
	.dhw 0x001F
	.dhw 0x0040
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 312
	.dhw 0x0003
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 314
	.dhw 0x0004
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 316
	.dhw 0x0005
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 318
	.dhw 0x0006
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 320
	.dhw 0x0007
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x01
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 322
	.dhw 0x0021
	.dhw 0x0040
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 324
	.dhw 0x0008
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 326
	.dhw 0x0009
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 328
	.dhw 0x000A
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x05
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 330
	.dhw 0x000B
	.dhw 0x0018
	.ds (4)
	.ds (4)
	.db 0x06
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 334
	.ds (2)
	.dhw 0x0008
	.dw 0x00000001
	.ds (4)
	.db 0x06
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 58
	.ds (2)
	.dhw 0x0008
	.ds (4)
	.ds (4)
	.db 0x06
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 56
	.dhw 0x0001
	.dhw 0x0030
	.ds (4)
	.ds (4)
	.db 0x06
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 54
	.dhw 0x0002
	.dhw 0x0030
	.ds (4)
	.ds (4)
	.db 0x06
	.db 0x01
	.db 0x01
	.ds (1)
	.dw (#_PduR_PduRSrcPduIdRef.1) + 52
	.dhw 0x0003
	.dhw 0x0010
	.ds (4)
	.ds (4)
	.align 2
_PduR_SrcPduConfigData.3:
	.db 0x01
	.ds (1)
	.dhw 0x0076
	.db 0x01
	.ds (1)
	.dhw 0x0077
	.db 0x01
	.ds (1)
	.dhw 0x0078
	.db 0x01
	.ds (1)
	.dhw 0x0079
	.db 0x01
	.ds (1)
	.dhw 0x007A
	.db 0x01
	.ds (1)
	.dhw 0x007B
	.db 0x01
	.ds (1)
	.dhw 0x007C
	.db 0x01
	.ds (1)
	.dhw 0x007D
	.db 0x01
	.ds (1)
	.dhw 0x007E
	.db 0x01
	.ds (1)
	.dhw 0x007F
	.db 0x01
	.ds (1)
	.dhw 0x0080
	.db 0x01
	.ds (1)
	.dhw 0x0081
	.db 0x01
	.ds (1)
	.dhw 0x0082
	.db 0x01
	.ds (1)
	.dhw 0x0083
	.db 0x01
	.ds (1)
	.dhw 0x0084
	.db 0x01
	.ds (1)
	.dhw 0x0085
	.db 0x01
	.ds (1)
	.dhw 0x0086
	.db 0x01
	.ds (1)
	.dhw 0x0087
	.db 0x01
	.ds (1)
	.dhw 0x0088
	.db 0x01
	.ds (1)
	.dhw 0x0089
	.db 0x01
	.ds (1)
	.dhw 0x008A
	.db 0x01
	.ds (1)
	.dhw 0x008B
	.db 0x01
	.ds (1)
	.dhw 0x008C
	.db 0x01
	.ds (1)
	.dhw 0x008D
	.db 0x01
	.ds (1)
	.dhw 0x008E
	.db 0x01
	.ds (1)
	.dhw 0x008F
	.db 0x01
	.ds (1)
	.dhw 0x0090
	.db 0x01
	.ds (1)
	.dhw 0x0091
	.db 0x01
	.ds (1)
	.dhw 0x0092
	.db 0x01
	.ds (1)
	.dhw 0x0093
	.db 0x01
	.ds (1)
	.dhw 0x0094
	.db 0x01
	.db 0x04
	.ds (2)
	.db 0x01
	.db 0x01
	.ds (2)
	.db 0x01
	.db 0x01
	.dhw 0x0001
	.db 0x01
	.db 0x01
	.dhw 0x0002
	.db 0x01
	.db 0x01
	.dhw 0x0003
	.db 0x01
	.db 0x01
	.dhw 0x0004
	.db 0x01
	.db 0x01
	.dhw 0x0005
	.db 0x01
	.db 0x01
	.dhw 0x0006
	.db 0x01
	.db 0x01
	.dhw 0x0007
	.db 0x01
	.db 0x01
	.dhw 0x0008
	.db 0x01
	.db 0x01
	.dhw 0x0009
	.db 0x01
	.db 0x01
	.dhw 0x000A
	.db 0x01
	.db 0x01
	.dhw 0x000B
	.db 0x01
	.db 0x01
	.dhw 0x000C
	.db 0x01
	.db 0x01
	.dhw 0x000D
	.db 0x01
	.db 0x01
	.dhw 0x000E
	.db 0x01
	.db 0x01
	.dhw 0x000F
	.db 0x01
	.db 0x01
	.dhw 0x0010
	.db 0x01
	.db 0x01
	.dhw 0x0011
	.db 0x01
	.db 0x01
	.dhw 0x0012
	.db 0x01
	.db 0x01
	.dhw 0x0013
	.db 0x01
	.db 0x01
	.dhw 0x0014
	.db 0x01
	.db 0x01
	.dhw 0x0015
	.db 0x01
	.db 0x01
	.dhw 0x0016
	.db 0x01
	.db 0x01
	.dhw 0x0017
	.db 0x01
	.db 0x01
	.dhw 0x0018
	.db 0x01
	.db 0x01
	.dhw 0x0019
	.db 0x01
	.db 0x01
	.dhw 0x001A
	.db 0x01
	.db 0x01
	.dhw 0x001B
	.db 0x01
	.db 0x01
	.dhw 0x001C
	.db 0x01
	.db 0x01
	.dhw 0x001D
	.db 0x01
	.db 0x01
	.dhw 0x001E
	.db 0x01
	.db 0x01
	.dhw 0x001F
	.db 0x01
	.db 0x01
	.dhw 0x0020
	.db 0x01
	.db 0x01
	.dhw 0x0021
	.db 0x01
	.db 0x01
	.dhw 0x0022
	.db 0x01
	.db 0x01
	.dhw 0x0023
	.db 0x01
	.db 0x01
	.dhw 0x0024
	.db 0x01
	.db 0x01
	.dhw 0x0025
	.db 0x01
	.db 0x01
	.dhw 0x0026
	.db 0x01
	.db 0x01
	.dhw 0x0027
	.db 0x01
	.db 0x01
	.dhw 0x0028
	.db 0x01
	.db 0x01
	.dhw 0x0029
	.db 0x01
	.db 0x01
	.dhw 0x002A
	.db 0x01
	.db 0x01
	.dhw 0x002B
	.db 0x01
	.db 0x01
	.dhw 0x002C
	.db 0x01
	.db 0x01
	.dhw 0x002D
	.db 0x01
	.db 0x01
	.dhw 0x002E
	.db 0x01
	.db 0x01
	.dhw 0x002F
	.db 0x01
	.db 0x01
	.dhw 0x0030
	.db 0x01
	.db 0x01
	.dhw 0x0031
	.db 0x01
	.db 0x01
	.dhw 0x0032
	.db 0x01
	.db 0x01
	.dhw 0x0033
	.db 0x01
	.db 0x01
	.dhw 0x0034
	.db 0x01
	.db 0x01
	.dhw 0x0035
	.db 0x01
	.db 0x01
	.dhw 0x0036
	.db 0x01
	.db 0x01
	.dhw 0x0037
	.db 0x01
	.db 0x01
	.dhw 0x0038
	.db 0x01
	.db 0x01
	.dhw 0x0039
	.db 0x01
	.db 0x01
	.dhw 0x003A
	.db 0x01
	.db 0x01
	.dhw 0x003B
	.db 0x01
	.db 0x01
	.dhw 0x003C
	.db 0x01
	.db 0x01
	.dhw 0x003D
	.db 0x01
	.db 0x01
	.dhw 0x003E
	.db 0x01
	.db 0x01
	.dhw 0x003F
	.db 0x01
	.db 0x01
	.dhw 0x0040
	.db 0x01
	.db 0x01
	.dhw 0x0041
	.db 0x01
	.db 0x01
	.dhw 0x0042
	.db 0x01
	.db 0x01
	.dhw 0x0043
	.db 0x01
	.db 0x01
	.dhw 0x0044
	.db 0x01
	.db 0x01
	.dhw 0x0045
	.db 0x01
	.db 0x01
	.dhw 0x0046
	.db 0x01
	.db 0x01
	.dhw 0x0047
	.db 0x01
	.db 0x01
	.dhw 0x0048
	.db 0x01
	.db 0x01
	.dhw 0x0049
	.db 0x01
	.db 0x01
	.dhw 0x004A
	.db 0x01
	.db 0x01
	.dhw 0x004B
	.db 0x01
	.db 0x01
	.dhw 0x004C
	.db 0x01
	.db 0x01
	.dhw 0x004D
	.db 0x01
	.db 0x01
	.dhw 0x004E
	.db 0x01
	.db 0x01
	.dhw 0x004F
	.db 0x01
	.db 0x01
	.dhw 0x0050
	.db 0x01
	.db 0x01
	.dhw 0x0051
	.db 0x01
	.db 0x01
	.dhw 0x0052
	.db 0x01
	.db 0x01
	.dhw 0x0053
	.db 0x01
	.db 0x01
	.dhw 0x0054
	.db 0x01
	.db 0x01
	.dhw 0x0055
	.db 0x01
	.db 0x01
	.dhw 0x0056
	.db 0x01
	.db 0x01
	.dhw 0x0057
	.db 0x01
	.db 0x01
	.dhw 0x0058
	.db 0x01
	.db 0x01
	.dhw 0x0059
	.db 0x01
	.db 0x01
	.dhw 0x005A
	.db 0x01
	.db 0x01
	.dhw 0x005B
	.db 0x01
	.db 0x01
	.dhw 0x005C
	.db 0x01
	.db 0x01
	.dhw 0x005D
	.db 0x01
	.db 0x01
	.dhw 0x005E
	.db 0x01
	.db 0x01
	.dhw 0x005F
	.db 0x01
	.db 0x01
	.dhw 0x0060
	.db 0x01
	.db 0x01
	.dhw 0x0061
	.db 0x01
	.db 0x01
	.dhw 0x0062
	.db 0x01
	.db 0x01
	.dhw 0x0063
	.db 0x01
	.db 0x01
	.dhw 0x0064
	.db 0x01
	.db 0x01
	.dhw 0x0065
	.db 0x01
	.db 0x01
	.dhw 0x0066
	.db 0x01
	.db 0x01
	.dhw 0x0067
	.db 0x01
	.db 0x01
	.dhw 0x0068
	.db 0x01
	.db 0x01
	.dhw 0x0069
	.db 0x01
	.db 0x01
	.dhw 0x006A
	.db 0x01
	.db 0x01
	.dhw 0x006B
	.db 0x01
	.db 0x01
	.dhw 0x006C
	.db 0x01
	.db 0x01
	.dhw 0x006D
	.db 0x01
	.db 0x01
	.dhw 0x006E
	.db 0x01
	.db 0x01
	.dhw 0x006F
	.db 0x01
	.db 0x01
	.dhw 0x0070
	.db 0x01
	.db 0x01
	.dhw 0x0071
	.db 0x01
	.db 0x01
	.dhw 0x0072
	.db 0x01
	.db 0x01
	.dhw 0x0073
	.db 0x01
	.db 0x01
	.dhw 0x0074
	.db 0x01
	.db 0x01
	.dhw 0x0075
	.db 0x01
	.db 0x03
	.dhw 0x0002
	.db 0x01
	.db 0x03
	.ds (2)
	.db 0x01
	.ds (1)
	.dhw 0x0098
	.db 0x01
	.db 0x05
	.ds (2)
	.db 0x01
	.ds (1)
	.dhw 0x0096
	.db 0x01
	.ds (1)
	.dhw 0x0099
	.db 0x01
	.ds (1)
	.dhw 0x009A
	.db 0x01
	.db 0x05
	.dhw 0x0001
	.db 0x01
	.ds (1)
	.dhw 0x0095
	.db 0x01
	.ds (1)
	.dhw 0x009B
	.db 0x01
	.ds (1)
	.dhw 0x009C
	.db 0x01
	.ds (1)
	.dhw 0x009D
	.db 0x01
	.ds (1)
	.dhw 0x009E
	.db 0x01
	.db 0x05
	.dhw 0x0002
	.db 0x01
	.ds (1)
	.dhw 0x0097
	.db 0x01
	.ds (1)
	.dhw 0x009F
	.db 0x01
	.ds (1)
	.dhw 0x00A0
	.db 0x01
	.ds (1)
	.dhw 0x00A1
	.db 0x01
	.db 0x06
	.ds (2)
	.db 0x01
	.db 0x06
	.ds (2)
	.db 0x01
	.db 0x06
	.dhw 0x0001
	.db 0x01
	.db 0x06
	.dhw 0x0002
	.db 0x01
	.db 0x06
	.dhw 0x0003
	.align 2
_PduR_PduRDestPduIdRef.4:
	.ds (2)
	.dhw 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x000C
	.dhw 0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019
	.dhw 0x001A,0x00AC,0x00AB,0x00AA,0x00A9,0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025
	.dhw 0x0026,0x0027,0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,0x0030,0x0031
	.dhw 0x0032,0x0033,0x0034,0x0035,0x0036,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D
	.dhw 0x003E,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,0x0048,0x0049
	.dhw 0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,0x0050,0x0051,0x0052,0x0053,0x0054,0x0055
	.dhw 0x0056,0x0057,0x0058,0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,0x0060,0x0061
	.dhw 0x0062,0x0063,0x0064,0x0065,0x0066,0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,0x006D
	.dhw 0x006E,0x006F,0x0070,0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,0x0079
	.dhw 0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,0x0081,0x0082,0x0083,0x0084,0x0085
	.dhw 0x0086,0x0088,0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,0x0091,0x0092
	.dhw 0x0093,0x0094,0x0095,0x0096,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E
	.dhw 0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x00A6,0x00A7,0x0013,0x00A8,0x0087
	.dhw 0x001E,0x001D,0x001C,0x001B
	.align 4
_PduR_RoutingPathConfigData0.5:
	.db 0x01
	.ds (1)
	.ds (2)
	.dw #_PduR_PduRDestPduIdRef.4
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 2
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 4
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 6
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 8
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 10
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 12
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 14
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 16
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 18
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 20
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 22
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 24
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 26
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 28
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 30
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 32
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 34
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 36
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 332
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 38
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 40
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 42
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 44
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 46
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 48
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 50
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 52
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 54
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 56
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 58
	.db 0x01
	.db 0x01
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 60
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 62
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 64
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 66
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 68
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 70
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 72
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 74
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 76
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 78
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 80
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 82
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 84
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 86
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 88
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 90
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 92
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 94
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 96
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 98
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 100
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 102
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 104
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 106
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 108
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 110
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 112
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 114
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 116
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 118
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 120
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 122
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 124
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 126
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 128
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 130
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 132
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 134
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 136
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 138
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 140
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 142
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 144
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 146
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 148
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 150
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 152
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 154
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 156
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 158
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 160
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 162
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 164
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 166
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 168
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 170
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 172
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 174
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 176
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 178
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 180
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 182
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 184
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 186
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 188
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 190
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 192
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 194
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 196
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 198
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 200
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 202
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 204
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 206
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 208
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 210
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 212
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 214
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 216
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 218
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 220
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 222
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 224
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 226
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 228
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 230
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 232
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 234
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 236
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 238
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 240
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 242
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 244
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 246
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 248
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 250
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 252
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 254
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 256
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 258
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 260
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 262
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 264
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 266
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 334
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 268
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 270
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 272
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 274
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 276
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 278
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 280
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 282
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 284
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 286
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 288
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 290
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 292
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 294
	.db 0x01
	.db 0x01
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 296
	.db 0x01
	.db 0x01
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 298
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 300
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 302
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 304
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 306
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 308
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 310
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 312
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 314
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 316
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 318
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 320
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 322
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 324
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 326
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 328
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 330
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 336
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 338
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 340
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 342
	.db 0x01
	.ds (1)
	.ds (2)
	.dw (#_PduR_PduRDestPduIdRef.4) + 344
	.align 4
_PduR_RoutingTableConfigData.6:
	.dw #_PduR_RoutingPathConfigData0.5
	.align 2
_PduR_DestPduPathGroup0.7:
	.dhw 0x001F,0x0096,0x0097
	.align 4
_PduR_RoutingPathGroupConfigData.8:
	.db 0x01
	.ds (1)
	.ds (2)
	.dhw 0x0003
	.ds (2)
	.dw #_PduR_DestPduPathGroup0.7
	.align 4
_PduR_PBConfigData:
	.ds (2)
	.dhw 0x0001
	.dhw 0x00AD
	.dhw 0x00AD
	.dw #_PduR_RoutingPathGroupConfigData.8
	.dw #_PduR_RoutingTableConfigData.6
	.dw #_PduR_SrcPduConfigData.3
	.dw #_PduR_DestPduConfigData.2
