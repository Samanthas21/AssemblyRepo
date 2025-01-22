vett_1    dcd     6, 7, 8, 40, 10, 3, 9, 5, 14, 21
b1        fill    40
b2        fill    40
K_        dcd     7

          mov     r0, #vett_1; original array
          mov     r1, #10; len array
          mov     r2, #K_; K
          ldr     r2, [r2]
          mov     r3, #b1; array b1
          mov     r4, #b2; array b2

main_loop 
          cmp     r1, #0
          beq     end_loop
          sub     r1, r1, #1
          ldr     r5, [r0], #4; vett_1 element
          cmp     r5, r2
          bge     add_B2

add_B1    
          str     r5, [r3], #4
          b       main_loop

add_B2    
          str     r5, [r4], #4
          b       main_loop


end_loop  

