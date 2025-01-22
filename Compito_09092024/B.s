vett_a        dcd     1, 3, 4, 5, 7, 9, 10, 11, 12, 14
vett_b        fill    40


              mov     r0, #vett_a; ptr to vett_a
              mov     r1, #10; len A
              ldr     r2, [r0], #4; first element of vett_a
              mov     r5, #vett_b; ptr to vett_b

orderLoop     
              cmp     r1, #1
              beq     end_orderLoop
              sub     r1, r1, #1
              ldr     r3, [r0], #4; vett_a element
              cmp     r3, r2
              blt     stop
              mov     r2, r3
              b       orderLoop

end_orderLoop 

              mov     r4, #0; N
              mov     r1, #10

Div           
              cmp     r1, #0
              beq     endDiv
              add     r4, r4, #1
              sub     r1, r1, #2
              b       Div

endDiv        
              mov     r1, #10
              mov     r0, #vett_a; ptr to vett_a
              sub     r4, r4, #1
              sub     r4, r1, r4

loop_b        
              cmp     r1, #0
              beq     stop
              sub     r1, r1, #1
              ldr     r3, [r0], #4
              cmp     r1, r4
              blt     addOnB
              b       loop_b

addOnB        
              str     r3, [r5], #4
              b       loop_b

stop          
