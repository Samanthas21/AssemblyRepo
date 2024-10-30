          ;       a * b a = 3, b = 4
          mov     r0, #3
          mov     r1, #4

loop      
          cmp     r1, #0
          beq     end_while
          add     r2, r2, r0
          sub     r1, r1, #1s
          b       loop
end_while 
          mov     r1, #4