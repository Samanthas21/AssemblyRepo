
arrayA              dcd     7, 4, 9, 10, 15, 3, 1, 0, -5, 21
arrayB              dcd     5, 1, 3, 90, 4, 8, 4, 19, 21, -6

                    mov     r0, #0; counter occurrences
                    mov     r3, #10; arrayA len
                    mov     r4, #10; arrayB len
                    mov     r5, #arrayB; ptr to arrayB

mainLoop            
                    mov     r6, #arrayA; ptr to arrayA
                    mov     r3, #10
                    cmp     r4, #0
                    beq     endLoop
                    ldr     r7, [r5], #4; arrayB element
secondLoop          
                    cmp     r3, #0
                    beq     decrementLenArrayB
                    ldr     r8, [r6], #4; arrayA element
                    cmp     r7, r8
                    beq     incrementOccurences
decrementLenArrayA  
                    sub     r3, r3, #1
                    b       secondLoop

decrementLenArrayB  
                    sub     r4, r4, #1
                    b       mainLoop

incrementOccurences 
                    add     r0, r0, #1
                    b       decrementLenArrayA

endLoop             
