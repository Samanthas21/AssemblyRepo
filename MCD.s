            ;       a= 12, b = 9, MCD = r2
            mov     r0, #36
            mov     r1, #16

loopMCD     

            cmp     r0, r1
            beq     endMCD
            bmi     if_A_less_B
            sub     r0, r0, r1
            b       loopMCD

if_A_less_B 
            sub     r1, r1, r0
            b       loopMCD

endMCD      
            mov     r2, r0
            mov     r0, #36
            mov     r1, #16
