
vett                dcd     16, 32, 14, 15, 8, 9, 64, 10, 2, 128
sixteen             fill    40
average             fill    4

                    mov     r0, #10; vett len
                    mov     r1, #vett; ptr to vett
                    mov     r2, #sixteen; ptr to sixteen
                    mov     r5, #0; sixTeenLen

mainLoop            
                    cmp     r0, #0
                    beq     endMainLoop
                    sub     r0, r0, #1
                    ldr     r3, [r1], #4; vett element
                    mov     r4, r3; used for partition
sixTeenLoop         
                    cmp     r4, #0
                    ble     endSixTeenLoop
                    sub     r4, r4, #16
                    b       sixTeenLoop

endSixTeenLoop      
                    cmp     r4, #0
                    beq     addSixTeen
                    b       mainLoop

addSixTeen          
                    str     r3, [r2], #4
                    add     r5, r5, #1
                    b       mainLoop

endMainLoop         

                    cmp     r5, #0
                    beq     endRun

                    mov     r2, #sixteen
                    ldr     r0, [r2], #4; save max into r0
                    mov     r1, r0; save min into r1

maxMinLoop          
                    cmp     r5, #1
                    ble     endMaxMinLoop
                    sub     r5, r5, #1
                    ldr     r3, [r2], #4
                    cmp     r3, r0
                    bgt     changeMax
checkMin            
                    cmp     r3, r1
                    blt     changeMin
                    b       maxMinLoop

changeMax           
                    mov     r0, r3
                    b       checkMin

changeMin           
                    mov     r1, r3
                    b       maxMinLoop

endMaxMinLoop       

                    add     r3, r0, r1; sum to max and min
                    mov     r6, #0; average value

averageValueLoop    
                    cmp     r3, #0
                    ble     endAverageValueLoop
                    sub     r3, r3, #2
                    add     r6, r6, #1
                    b       averageValueLoop

endAverageValueLoop 

endRun              
