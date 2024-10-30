       ;       a * b a = 3, b = 4
       mov     r0, #3
       mov     r1, #4
       mov     r2, #0

       then
       cmp r2, r1
       beq fine
       add r3, r0, r0
       add r2, r2, #1 
       b then


       fine