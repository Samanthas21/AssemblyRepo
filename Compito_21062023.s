
vett                 dcd     10, 1, 100, 6, 8, 9, 7, 1000, 8, 3
tens                 fill    40
no_tens              fill    40

                     mov     r0, #vett; ptr to vett
                     mov     r1, #tens; ptr to tens
                     mov     r2, #no_tens; ptr to no_tens
                     mov     r3, #10; vett len
                     mov     r6, #0; len tens array
                     mov     r7, #0; len no_tens array

vettLoop             
                     cmp     r3, #0
                     beq     endVettLoop
                     sub     r3, r3, #1
                     ldr     r4, [r0], #4; i-th element of vett
                     mov     r5, r4; temp
tensLoop             
                     cmp     r5, #0
                     ble     endTensLoop
                     sub     r5, r5, #10
                     b       tensLoop

endTensLoop          
                     cmp     r5, #0
                     beq     addInTens
                     str     r4, [r2], #4
                     add     r7, r7, #1
                     b       vettLoop

addInTens            
                     str     r4, [r1], #4
                     add     r6, r6, #1
                     b       vettLoop
endVettLoop          

                     mov     r1, #tens
                     mov     r2, #no_tens
                     mov     r3, #0; sumTens
                     mov     r5, #0; sumNoTens
                     mov     r8, r6; counter
                     mov     r9, #0; tensAverage
                     mov     r10, #0; noTensAverage

sumTensLoop          
                     cmp     r8, #0
                     beq     endSumTensLoop
                     sub     r8, r8, #1
                     ldr     r4, [r1], #4
                     add     r3, r3, r4
                     b       sumTensLoop

endSumTensLoop       

averageTensLoop      
                     cmp     r3, #0
                     beq     endAverageTensLoop
                     sub     r3, r3, r6
                     add     r9, r9, #1
                     b       averageTensLoop

endAverageTensLoop   

                     mov     r8, r7

sumNoTensLoop        
                     cmp     r8, #0
                     beq     endSumNoTensLoop
                     sub     r8, r8, #1
                     ldr     r4, [r2], #4
                     add     r5, r5, r4
                     b       sumNoTensLoop

endSumNoTensLoop     

averageNoTensLoop    
                     cmp     r5, #0
                     beq     endAverageNoTensLoop
                     sub     r5, r5, r7
                     add     r10, r10, #1
                     b       averageNoTensLoop

endAverageNoTensLoop 