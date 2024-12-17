
arrayA              dcd     2,7,4,1,6,0,2,4,5,6; len = 10

arrayb1             fill    40; 40 byte
arrayb2             fill    40;

                    mov     r1, #6; k
                    mov     r2, #10; len array
                    mov     r3, #0; counter
                    mov     r4, #0; arrayA increment
                    mov     r6, #0 ;arrayb1 increment
                    mov     r7, #0 ;arrayb2 increment
                    mov     r8, #arrayb1; ptr arrayb1
                    mov     r9, #arrayb2; ptr arrayb2

start_loop          
                    cmp     r3, r2
                    beq     endLoop
                    mov     r5, #arrayA; ptr arrayA
                    ldr     r5, [r5, r4] ;element of array
                    cmp     r5, r1
                    blt     fillArr1
                    bge     fillArr2

next_loop_increment 
                    add     r3, r3, #1
                    add     r4, r4, #4
                    b       start_loop

fillArr1            
                    str     r5, [r8, r6]
                    ;ldr     r10, [r8, r6] for control
                    add     r6, r6, #4
                    b       next_loop_increment

fillArr2            
                    str     r5, [r9, r7]
                    ;ldr     r11, [r9, r7]
                    add     r7, r7, #4
                    b       next_loop_increment

endLoop             

