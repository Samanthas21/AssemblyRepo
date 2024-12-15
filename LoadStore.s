
arr    dcd     1, 5, 10, 15, 20

       mov     r0, #arr
       ldr     r1, [r0, #8]
       mov     r3, #35
       str     r3, [r0, #8]
       ldr     r2, [r0, #8]


       mov     r10, #-1
       mov     r11, #-2
       mov     r12, #-3
       stmia   r0, {r10,r11,r12}; r0! per conservare l'incremento al puntatore in r0
       ldmia   r0, {r4,r5,r6,r7,r8}


