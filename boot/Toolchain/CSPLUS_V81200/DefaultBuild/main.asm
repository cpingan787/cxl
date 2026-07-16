#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Cpu\main.c -oDefaultBuild\main.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7cce2bc4593147b99388adad92a8927e4m1hoqze.fcm
#@	compiled at Thu Jul 16 13:41:50 2026

	.file "..\..\Cpu\main.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Mcu_GstConfiguration
	.public _ReadAppBuffer, 32
	.public _WriteAppBuffer, 32
	.public _FlsLoopCount, 1
	.public _IoHwAb_Adc_Notification_Group0
	.public _IoHwAb_Adc_Notification_Group1
	.public _IoHwAb_Adc_Notification_Group2
	.public _Gpt_WriteVerifyErrorCallback
	.public _Gpt_Notification_0
	.public _Gpt_Notification_1
	.public _Gpt_Notification_2
	.public _JobOkNotification
	.public _JobErrorNotification
	.public _EccSedNotification
	.public _EccDedNotification
	.public _Fls_test
	.extern _Fls_Read
	.extern _Fls_MainFunction
	.extern _Fls_GetStatus
	.extern _Fls_Erase
	.extern _Fls_Write
	.public _TstCanSendMessage
	.extern _Can_Write
	.public _TstCanSendMessageRx
	.public _main
	.extern _Mcu_Init
	.extern _Mcu_InitClock
	.extern _Mcu_GetPllStatus
	.extern _Mcu_DistributePllClock
	.extern _StartOS

	.section .text, text
_IoHwAb_Adc_Notification_Group0:
	.stack _IoHwAb_Adc_Notification_Group0 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 49
	jmp [r31]
_IoHwAb_Adc_Notification_Group1:
	.stack _IoHwAb_Adc_Notification_Group1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 53
	jmp [r31]
_IoHwAb_Adc_Notification_Group2:
	.stack _IoHwAb_Adc_Notification_Group2 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 57
	jmp [r31]
_Gpt_WriteVerifyErrorCallback:
	.stack _Gpt_WriteVerifyErrorCallback = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 61
	jmp [r31]
_Gpt_Notification_0:
	.stack _Gpt_Notification_0 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 64
	jmp [r31]
_Gpt_Notification_1:
	.stack _Gpt_Notification_1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 67
	jmp [r31]
_Gpt_Notification_2:
	.stack _Gpt_Notification_2 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 70
	jmp [r31]
_JobOkNotification:
	.stack _JobOkNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 74
	jmp [r31]
_JobErrorNotification:
	.stack _JobErrorNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 78
	jmp [r31]
_EccSedNotification:
	.stack _EccSedNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 82
	jmp [r31]
_EccDedNotification:
	.stack _EccDedNotification = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 86
	jmp [r31]
_Fls_test:
	.stack _Fls_test = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 92
	prepare 0x00000201, 0x00000000
	mov 0x00000000, r5
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 99
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	ld.bu LOWW(#_FlsLoopCount)[r5], r6
	mov #_WriteAppBuffer, r7
	add r6, r7
	movea 0x00000055, r6, r6
	st.b r6, 0x00000000[r7]
	ld.b LOWW(#_FlsLoopCount)[r5], r5
	add 0x00000001, r5
.BB.LABEL.12_2:	; bb10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r6
	st.b r5, LOWW(#_FlsLoopCount)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 97
	zxb r5
	cmp 0x00000008, r5
	blt9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 106
	mov #_ReadAppBuffer, r7
	mov 0x00000000, r25
	mov r25, r6
	jarl32 _Fls_Read, r31
	br9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 110
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 111
	movhi HIGHW1(#_FlsLoopCount), r0, r25
	ld.b LOWW(#_FlsLoopCount)[r25], r25
	add 0x00000001, r25
.BB.LABEL.12_5:	; bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r25, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 108
	jarl32 _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movea 0x00000400, r0, r7
	mov 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 118
	mov r25, r6
	jarl32 _Fls_Erase, r31
	br9 .BB.LABEL.12_8
.BB.LABEL.12_7:	; bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 122
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 123
	movhi HIGHW1(#_FlsLoopCount), r0, r25
	ld.b LOWW(#_FlsLoopCount)[r25], r25
	add 0x00000001, r25
.BB.LABEL.12_8:	; bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r25, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 120
	jarl32 _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_9:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 130
	mov #_WriteAppBuffer, r7
	mov 0x00000000, r25
	mov r25, r6
	jarl32 _Fls_Write, r31
	br9 .BB.LABEL.12_11
.BB.LABEL.12_10:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 134
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 135
	movhi HIGHW1(#_FlsLoopCount), r0, r25
	ld.b LOWW(#_FlsLoopCount)[r25], r25
	add 0x00000001, r25
.BB.LABEL.12_11:	; bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r25, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 132
	jarl32 _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_10
.BB.LABEL.12_12:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 142
	mov #_ReadAppBuffer, r7
	mov 0x00000000, r25
	mov r25, r6
	jarl32 _Fls_Read, r31
	br9 .BB.LABEL.12_14
.BB.LABEL.12_13:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 146
	jarl32 _Fls_MainFunction, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 147
	movhi HIGHW1(#_FlsLoopCount), r0, r25
	ld.b LOWW(#_FlsLoopCount)[r25], r25
	add 0x00000001, r25
.BB.LABEL.12_14:	; bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 0
	movhi HIGHW1(#_FlsLoopCount), r0, r5
	st.b r25, LOWW(#_FlsLoopCount)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 144
	jarl32 _Fls_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_13
.BB.LABEL.12_15:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 150
	dispose 0x00000000, 0x00000201, [r31]
_TstCanSendMessage:
	.stack _TstCanSendMessage = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 152
	prepare 0x00000001, 0x00000018
	mov 0x0000000C, r5
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 155
	mov #.STR.1, r7
	mov r5, r8
	add r6, r8
	mov r6, r9
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry
	ld.b 0x00000000[r7], r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r7
	add 0x00000001, r9
.BB.LABEL.13_2:	; entry
	cmp r9, r8
	bnz9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 156
	st.h r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 157
	st.b r5, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 158
	st.w r6, 0x0000000C[r3]
	mov 0x40000100, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 159
	st.w r5, 0x00000010[r3]
	movea 0x0000000C, r3, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 161
	jarl32 _Can_Write, r31
	dispose 0x00000018, 0x00000001, [r31]
_TstCanSendMessageRx:
	.stack _TstCanSendMessageRx = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 164
	prepare 0x00000001, 0x00000018
	mov 0x0000000C, r5
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 167
	mov #.STR.1417, r7
	mov r5, r8
	add r6, r8
	mov r6, r9
	br9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry
	ld.b 0x00000000[r7], r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r7
	add 0x00000001, r9
.BB.LABEL.14_2:	; entry
	cmp r9, r8
	bnz9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 168
	st.h r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 169
	st.b r5, 0x00000016[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 170
	st.w r6, 0x0000000C[r3]
	mov 0x40000201, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 171
	st.w r5, 0x00000010[r3]
	movea 0x0000000C, r3, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 173
	jarl32 _Can_Write, r31
	dispose 0x00000018, 0x00000001, [r31]
_main:
	.stack _main = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 177
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 182
	mov #_Mcu_GstConfiguration, r6
	jarl32 _Mcu_Init, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 184
	jarl32 _Mcu_InitClock, r31
.BB.LABEL.15_1:	; bb2
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 186
	jarl32 _Mcu_GetPllStatus, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_1
.BB.LABEL.15_2:	; bb6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 188
	jarl32 _Mcu_DistributePllClock, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 190
	jarl32 _StartOS, r31
.BB.LABEL.15_3:	; bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Cpu/main.c", 191
	br9 .BB.LABEL.15_3
	.section .data, data
_ReadAppBuffer:
	.ds (32)
_WriteAppBuffer:
	.ds (32)
_FlsLoopCount:
	.ds (1)
	.section .const, const
.STR.1:
	.db 0x01,0x02,0x05,0x04,0x03,0x32,0x07,0x76,0x09,0x10,0x11,0x12
.STR.1417:
	.db 0x22,0x22,0x22,0x04,0x03,0x32,0x07,0x76,0x09,0x10,0x11,0x12
