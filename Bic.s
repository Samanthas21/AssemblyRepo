
       mov     r1, #45
       mov     r2, #0x20
       bic     r1, r1, r2; cancella il bit della maschera che sta in r2 da r1

       ;per    far tornare il valore di r1 come prima basta usare eor per invertire il bit
       eor     r1, r1, r2

       ;controllo il singolo valore di un bit
       and     r0, r1, #8
       lsr     r0, r0, #3
       cmp     r0, #1
       beq     uguali
       b       endd

uguali 
       mov     r10, #128

endd   
