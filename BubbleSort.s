num         dcd     10
arr         dcd     12, 7, 4, 2, -1, 0, 6, 10, 2, 14

            mov     r0, #num; size array
            ldr     r0, [r0];load
            sub     r0, r0, #1
            mov     r1, #arr; array
            mov     r4, #0; i

loop        
            cmp     r4, r0
            beq     endloop
            mov     r3, #num; num iteration second loop
            mov     r2, r1; set second pointer equal to first pointer
            ldr     r3, [r3]
            sub     r3, r3, #1
            sub     r3, r3, r4
            mov     r5, #0; j
swapLoop    
            cmp     r5, r3
            beq     incrementI
            add     r5, r5, #1; increment j
            ldr     r6, [r1]; element j
            add     r2, r2, #4; increment second pointer
            ldr     r7, [r2]; element j+1
            cmp     r6, r7
            bgt     swap; blt in descending order
            b       swapLoop

incrementI  
            add     r4, r4, #1
            add     r1, r1, #4; increment first pointer
            b       loop

swap        
            str     r7, [r1];store
            str     r6, [r2]

            b       swapLoop

endloop     

            mov     r8, #num
            ldr     r8, [r8]
            mov     r9, #arr
controlSort 
            cmp     r8, #0
            beq     endExe
            ldr     r10, [r9]; final array value
            add     r9, r9, #4
            sub     r8, r8, #1
            b       controlSort
            
endExe      
