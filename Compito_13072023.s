
v_            dcd     8, 10, 2, 7, 14, 109, 3, 77, 89, 7777
counts        fill    40

              mov     r0, #v_; ptr to v
              mov     r1, #10; v len
              mov     r2, #counts; ptr to counts

CountsLoop    
              cmp     r1, #0
              beq     endCountsLoop
              mov     r3, #32; max bit num
              mov     r4, #0; count bit
              sub     r1, r1, #1
              ldr     r5, [r0], #4; i-th element of v
bitLoop       
              cmp     r3, #0
              beq     addInCounts
              and     r6, r5, #1; b0 of i-th element of v
              lsr     r5, r5, #1
              sub     r3, r3, #1
              cmp     r6, #1
              beq     countBit
              b       bitLoop

countBit      
              add     r4, r4, #1
              b       bitLoop

addInCounts   
              str     r4, [r2], #4
              b       CountsLoop

endCountsLoop 

              mov     r1, #10
              mov     r2, #counts
              mov     r3, #1; max

maxLoop       
              cmp     r1, #0
              beq     endMaxLoop
              sub     r1, r1, #1
              ldr     r5, [r2], #4
              cmp     r5, r3
              bge     switchMax
              b       maxLoop

switchMax     
              mov     r3, r5
              b       maxLoop

endMaxLoop    

