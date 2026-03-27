#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\main.c -oDefaultBuild\main.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_fe339f82206949c687ee928831d53c19lnmmcgas.0ph
#@	compiled at Fri Mar 27 09:49:53 2026

	.file "..\..\Cpu\main.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Mcu_GstConfiguration
	.extern _Gpt_GstConfiguration
	.extern _Port_GstConfiguration
	.extern _Adc_GstConfiguration
	.extern _Fls_GstConfiguration
	.extern _Icu_GstConfiguration
	.extern _Fee_ConfigData
	.public _Adc0_Group0_Buffer, 32
	.public _Adc1_Group1_Buffer, 16
	.extern _g_adBuffer
	.public _Gpt0Index, 1
	.public _Gpt2Index, 1
	.public _Gpt3Index, 1
	.public _IoHwAb_Adc_Notification_Group0
	.extern _Adc_ReadGroup
	.public _IoHwAb_Adc_Notification_Group1
	.public _IoHwAb_Adc_Notification_Group2
	.public _Gpt_WriteVerifyErrorCallback
	.public _Gpt_Notification_0
	.public _Gpt_Notification_1
	.public _Gpt_Notification_2
	.public _WVErrorNotification
	.public _JobOkNotification
	.public _JobErrorNotification
	.public _EccSedNotification
	.public _EccDedNotification
	.public _TstCanSendMessage
	.extern _Can_Write
	.public _main
	.extern _Mcu_Init
	.extern _Mcu_InitClock
	.extern _Mcu_GetPllStatus
	.extern _Mcu_DistributePllClock
	.extern _Port_Init
	.extern _Dio_WriteChannel
	.extern _Adc_Init
	.extern _Adc_SetupResultBuffer
	.extern _Adc_EnableGroupNotification
	.extern _Gpt_Init
	.extern _Icu_Init
	.extern _Fls_Init
	.extern _Fee_Init
	.extern _NvM_Init
	.extern _NvM_ReadAll
	.extern _Fee_MainFunction
	.extern _Fls_MainFunction
	.extern _NvM_MainFunction
	.extern _NvM_GetErrorStatus
	.extern _EcuM_Init

	.section .text, text
_IoHwAb_Adc_Notification_Group0:
	.stack _IoHwAb_Adc_Notification_Group0 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 70
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 72
	mov #_Adc0_Group0_Buffer, r7
	mov 0x00000000, r20
	mov r20, r6
	jarl _Adc_ReadGroup, r31
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 75
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_g_adBuffer, r5
	mov r2, r6
	add r5, r6
	mov #_Adc0_Group0_Buffer, r7
	add r7, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000000[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 76
	st.b r2, 0x00000032[r5]
	add 0x00000001, r20
.BB.LABEL.1_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 73
	andi 0x000000FF, r20, r2
	cmp 0x0000000F, r2
	ble9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 78
	dispose 0x00000000, 0x00000041, [r31]
_IoHwAb_Adc_Notification_Group1:
	.stack _IoHwAb_Adc_Notification_Group1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 80
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 82
	mov #_Adc1_Group1_Buffer, r7
	mov 0x00000001, r6
	jarl _Adc_ReadGroup, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 85
	andi 0x000000FF, r2, r5
	add r5, r5
	mov #_g_adBuffer, r6
	mov r6, r7
	add r5, r7
	mov #_Adc1_Group1_Buffer, r8
	add r8, r5
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000020[r7]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 86
	st.b r5, 0x00000032[r6]
	add 0x00000001, r2
.BB.LABEL.2_2:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 83
	andi 0x000000FF, r2, r5
	cmp 0x00000008, r5
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 88
	dispose 0x00000000, 0x00000001, [r31]
_IoHwAb_Adc_Notification_Group2:
	.stack _IoHwAb_Adc_Notification_Group2 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 90
	jmp [r31]
_Gpt_WriteVerifyErrorCallback:
	.stack _Gpt_WriteVerifyErrorCallback = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 94
	jmp [r31]
_Gpt_Notification_0:
	.stack _Gpt_Notification_0 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 104
	movhi HIGHW1(#_Gpt0Index), r0, r2
	ld.b LOWW(#_Gpt0Index)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Gpt0Index)[r2]
	jmp [r31]
_Gpt_Notification_1:
	.stack _Gpt_Notification_1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 111
	movhi HIGHW1(#_Gpt2Index), r0, r2
	ld.b LOWW(#_Gpt2Index)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Gpt2Index)[r2]
	jmp [r31]
_Gpt_Notification_2:
	.stack _Gpt_Notification_2 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 118
	movhi HIGHW1(#_Gpt3Index), r0, r2
	ld.b LOWW(#_Gpt3Index)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Gpt3Index)[r2]
	jmp [r31]
_WVErrorNotification:
	.stack _WVErrorNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 123
	jmp [r31]
_JobOkNotification:
	.stack _JobOkNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 127
	jmp [r31]
_JobErrorNotification:
	.stack _JobErrorNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 131
	jmp [r31]
_EccSedNotification:
	.stack _EccSedNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 135
	jmp [r31]
_EccDedNotification:
	.stack _EccDedNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 139
	jmp [r31]
_TstCanSendMessage:
	.stack _TstCanSendMessage = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 144
	prepare 0x00000001, 0x00000018
	mov 0x0000000C, r2
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 147
	mov #.STR.1, r6
	mov r2, r7
	add r5, r7
	mov r5, r8
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry
	ld.b 0x00000000[r6], r9
	st.b r9, 0x00000000[r8]
	add 0x00000001, r6
	add 0x00000001, r8
.BB.LABEL.13_2:	; entry
	cmp r8, r7
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 148
	st.h r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 149
	st.b r2, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 150
	st.w r5, 0x0000000C[r3]
	mov 0x40000100, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 151
	st.w r2, 0x00000010[r3]
	movea 0x0000000C, r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 153
	jarl _Can_Write, r31
	dispose 0x00000018, 0x00000001, [r31]
_main:
	.stack _main = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 156
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 161
	mov #_Mcu_GstConfiguration, r6
	jarl _Mcu_Init, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 163
	jarl _Mcu_InitClock, r31
.BB.LABEL.14_1:	; bb4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 165
	jarl _Mcu_GetPllStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_1
.BB.LABEL.14_2:	; bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 167
	jarl _Mcu_DistributePllClock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 170
	mov #_Port_GstConfiguration, r6
	jarl _Port_Init, r31
	mov 0x00000000, r20
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 172
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	mov 0x00000001, r21
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 173
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000011, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 174
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 175
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 176
	mov r21, r7
	jarl _Dio_WriteChannel, r31
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 177
	mov r20, r7
	jarl _Dio_WriteChannel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 179
	mov #_Adc_GstConfiguration, r6
	jarl _Adc_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 180
	mov #_Adc0_Group0_Buffer, r7
	mov r20, r6
	jarl _Adc_SetupResultBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 181
	mov #_Adc1_Group1_Buffer, r7
	mov r21, r6
	jarl _Adc_SetupResultBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 182
	mov r20, r6
	jarl _Adc_EnableGroupNotification, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 183
	mov r21, r6
	jarl _Adc_EnableGroupNotification, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 186
	mov #_Gpt_GstConfiguration, r6
	jarl _Gpt_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 188
	mov #_Icu_GstConfiguration, r6
	jarl _Icu_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 190
	mov #_Fls_GstConfiguration, r6
	jarl _Fls_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 191
	mov #_Fee_ConfigData, r6
	jarl _Fee_Init, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 192
	mov r20, r6
	jarl _NvM_Init, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 194
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 196
	jarl _NvM_ReadAll, r31
.BB.LABEL.14_3:	; bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 200
	jarl _Fee_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 201
	jarl _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 202
	jarl _NvM_MainFunction, r31
	mov r3, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 203
	jarl _NvM_GetErrorStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 199
	add 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 204
	addi 0xFFFFEC78, r20, r0
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 197
	ld.w 0x00000000[r3], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_5:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 208
	jarl _EcuM_Init, r31
.BB.LABEL.14_6:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Cpu/main.c", 210
	br9 .BB.LABEL.14_6
	.section .data, data
	.align 2
_Adc0_Group0_Buffer:
	.ds (32)
	.align 2
_Adc1_Group1_Buffer:
	.ds (16)
_Gpt0Index:
	.ds (1)
_Gpt2Index:
	.ds (1)
_Gpt3Index:
	.ds (1)
	.section .const, const
.STR.1:
	.db 0x01,0x02,0x05,0x04,0x03,0x32,0x07,0x76,0x09,0x10,0x11,0x12
