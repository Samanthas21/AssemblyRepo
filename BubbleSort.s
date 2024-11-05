num         dcd     5
arr         dcd     4, 2, 1, 3, 6

            mov     r0, #num
            ldr     r0, [r0]
            mov     r1, #arr
            mov     r2, #arr
            mov     r3, #0; temp

loop        
            cmp     r0, #1
            beq     endloop
            mov     r4, #0
            mov     r6, r0
            sub     r6, r6, #1
            mov     r5, #num
            ldr     r5, [r5]
swapLoop    
            cmp     r5, r6
            beq     decrementI
            ldr     r7, [r1]
            add     r2, r2, #4
            ldr     r8, [r2]
            cmp     r7, r8
            bgt     swap

endSwap     
            sub     r5, r5, #1
            b       swapLoop

decrementI  
            sub     r0, r0, #1
            b       loop

swap        
            mov     r12, r8
            mov     r12, r7
            str     r8, [r1]
            str     r7, [r2]

            b       endSwap

endloop     

            mov     r9, #num
            ldr     r9, [r9]
            mov     r10, #arr
controlSort 
            cmp     r9, #0
            beq     endExe
            ldr     r11, [r10]
            add     r10, r10, #4
            sub     r9, r9, #1
            b       controlSort

endExe      


