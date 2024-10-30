          ;       a / b a = 6, b = 3
          mov     r0, #6
          mov     r1, #3

loop      
          cmp     r0, r1
          bmi     end_while
          sub     r0, r0, r1
          add     r2, r2, #1
          b       loop
end_while 