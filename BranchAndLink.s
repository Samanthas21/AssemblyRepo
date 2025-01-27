
          mov     sp, #0x8000
          sub     sp, sp, #16 ; Alloca 16 byte nello stack
          add     sp, sp, #16 ; Dealloca 16 byte

          mov     r0, #17
          mov     r1, #5

          bl      divisione
          ;mov    r14, #16
          ;mov    r15, #24

          add     r4, r0, r3

          b       fine; equivalente mov PC, #48

divisione 
          mov     r3, #0
div_loop  
          cmp     r0, r1
          bmi     div_end
          sub     r0, r0, r1
          add     r3, r3, #1
          b       div_loop

div_end   
          mov     PC, LR

fine      