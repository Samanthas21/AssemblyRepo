
arrayA     dcd     24, 35, 9, 10, 6, 90, 79, 14, 21, 45
arrayB     fill    40; 40 byte

           mov     r0, #arrayA; ptr ad arrayA
           mov     r1, #arrayB; ptr ad arrayB
           mov     r2, #10;len array
           mov     r3, #0; counter
           mov     r4, #5; k
           mov     r7, #0; arrayB offset

start_loop 
           cmp     r2, r3
           beq     end_loop
           ldr     r5, [r0]; nth element of array
           add     r0, r0, #4
           add     r3, r3, #1
           mov     r6, r5; remainder
div_loop   
           cmp     r6, r4
           bmi     end_div
           sub     r6, r6, r4
           b       div_loop
end_div    
           cmp     r6, #0
           beq     push
           b       start_loop


push       
           str     r5, [r1, r7]
           ;ldr    r8, [r1, r7] for control
           add     r7, r7, #4
           b       start_loop

end_loop   