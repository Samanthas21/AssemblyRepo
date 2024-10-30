        mov     r0, #12
        mov     r1, #14

        cmp     r0, r1
        bmi     printR1

        mov     r3, r0

        b       endMax

printR1 
        mov     r3, r1

endMax  