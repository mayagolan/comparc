BCD8ADD    STMFD   R13!, {R0-R1, R14}
           LDR     r12, =0x66666666
           ADDS    R0, R0, r12
           MOVVS   R3, #1                 //// Vsign IS WRONG !
           LDR     r12, =0x88888888
           ADDS    R2, R0, R1
           MOVCS   R4, #1
           EOR     R1, R0, R1
           EOR     R1, R1, R2
           BIC     R1, r12, R1, LSR #1
           SUBCS   R1, R1, #0X80000000
           SUBS    R2, R2, R1, LSR #2
           SUBS    R2, R2, R1, LSR #1
           LDMFD   R13!, {R0-R1, R15}

BCD8ADDMEM STMFD   R13!, {R0-R1, R7, R14}
           SUB     R7, R1, #4
           LDR     R0, [R0]
           LDR     R1, [R1]
           LDR     r12, =0x66666666
           ADDS    R0, R0, r12
           LDR     r12, =0x88888888
           ADDS    R2, R0, R1
           MOVCS   R4, #1
           EOR     R1, R0, R1
           EOR     R1, R1, R2
           BIC     R1, r12, R1, LSR #1
           SUBCS   R1, R1, #0X80000000
           SUBS    R2, R2, R1, LSR #2
           SUBS    R2, R2, R1, LSR #1
           STR     R2, [R7]
           LDMFD   R13!, {R0-R1, R7, R15}