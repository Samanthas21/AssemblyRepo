image    dcd     0x00223344, 0x00808080, 0x00ff0000, 0x00000000, 0x008080ff

         mov     r0, #5
         mov     r1, #image

loop     
         cmp     r0, #0
         beq     end_loop
         ldr     r2, [r1]
         orr     r2, r2, #0xff00
         str     r2, [r1]
         add     r1, r1, #4
         sub     r0, r0, #1
         b       loop

end_loop 

         mov     r3, #0x0F
         ;bic    r3, r3, #0xff00
         eor     r3, r3, #0xAF

         ;asr    per considerare i bit in complemento a due, quindi l'ultimo bit rappresenta il segno
         mov     r4, #60
         and     r0, r4, #0x20; maschera che prende solo il 5 bit
         lsr     r0, r0, #5
         cmp     r0, #0x1
         beq     si
         b       endd

si       
         mov     r5, #1
endd     
         ;orr    r0, r0, #0x000000A2
         ;orr    r0, r0, #4
         ;and    r0, r0, #0xF