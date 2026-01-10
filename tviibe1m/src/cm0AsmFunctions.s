
 //name swapBlock


 //EXTERN C_UserSVCHandler;
 //PUBLIC SVC_Handler;
 PUBLIC GET_CONTROL;
 PUBLIC SET_CONTROL;
 PUBLIC BACK_TO_START;


 section MYCODE:CODE(2)
//.text
thumb
//#pragma ghs section text = ".ramprog"

; Override SCV handler
       // ALIGN 4
;SVC_Handler:
;        PUSH {LR}
;        MOVS r0, #4
;        MOV  r1, lr
;        TST  r0, r1
;        BEQ  L_MSP
;        MRS  r0, PSP
;L_MSP:
;        MRS  r0, MSP
;        BL   C_UserSVCHandler
;        POP  {PC}
        //.endf SVC_Handler

        //ALIGN 4
GET_CONTROL:
        PUSH {LR}
        MRS  r0, CONTROL ; Read CONTROL register into R0
        POP  {PC}
        //.endf GET_CONTROL

        //ALIGN 4
SET_CONTROL:
        PUSH {LR}
        MSR  CONTROL, r0 ; Write R0 into CONTROL register
        POP  {PC}
        //.endf SET_CONTROL

        //ALIGN 4
BACK_TO_START:
        //DSB 0xF    ; Make sure outstanding transfers are done
        DSB    ; Make sure outstanding transfers are d
        ISB        ; Make sure outstanding transfers are done
        //SVC 0x2
        LDR R0, =0x10000000
        LDR R1, [R0]
        MSR MSP, R1
        LDR R1, [R0, #4]
        BLX  R1
        end


 END
