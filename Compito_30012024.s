
arrayA          dcd     4, 7, 14, 2, 17, 5, 0
lenA            fill    4
arrayB          fill    64

                mov     r0, #arrayA; ptr to arrayA
                mov     r4, #arrayB; ptr to arrayB
                mov     r1, #0; len arrayA
                ldr     r2, [r0], #4; first element of arrayA
                mov     r5, #0; max of arrayB

mainLoop        
                cmp     r2, #0
                beq     endLoop
                and     r3, r1, #1; control even
                cmp     r3, #0
                beq     addArrayB
incrementArrayA 
                add     r1, r1, #1
                ldr     r2, [r0], #4
                b       mainLoop

addArrayB       
                str     r2, [r4], #4
                cmp     r2, r5
                bgt     changeMax
                b       incrementArrayA

changeMax       
                mov     r5, r2
                b       incrementArrayA

endLoop         

                mov     r6, #lenA; ptr to lenA
                str     r1, [r6]