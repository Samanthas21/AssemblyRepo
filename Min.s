        mov     r0, #21
        mov     r1, #19

        cmp     r1, r0
        bmi     printR1

        mov     r3, r0

        b       endMax

printR1 
        mov     r3, r1

endMax  