Num             dcd     8
arr1            dcd     2, 3, 5, 1, 2, 6, 7, 1
arr2            dcd     1, 2, 10, 4, 10, 14, 1, 2

                mov     r0, #Num
                ldr     r0, [r0]
                mov     r1, #arr1
                mov     r2, #arr2
                mov     r3, #0; temp
                mov     r4, #0; Prodotto
                mov     r5, #0; variabile contatore del prodotto
                mov     r6, #0; temp2


loop            
                cmp     r0, #0
                bmi     endloop
                ldr     r5, [r2]
loopProdotto; mini-loop per il prodotto    
                cmp     r5, #0
                beq     endloopProdotto
                ldr     r6, [r1]; elemento n-esimo dell'array
                add     r3, r3, r6
                sub     r5, r5, #1
                b       loopProdotto
incArray        
                add     r1, r1, #4
                add     r2, r2, #4
                sub     r0, r0, #1

                b       loop


endloopProdotto 
                add     r4, r4, r3
                mov     r3, #0
                b       incArray

endloop         

