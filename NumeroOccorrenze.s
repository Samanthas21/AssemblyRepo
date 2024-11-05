Num     dcd     8
Data    dcd     12, 7, 7, 4, 7, 7, 9, 12; Elementi dell'array


        mov     r0, #Num; numero elementi
        ldr     r0, [r0]
        mov     r1, #Data; puntatore dell'array
        mov     r2, #12; elemento da ricercare nell'array
        mov     r3, #0; temp
        mov     r4, #0; numero occorenze dell'elemento

loop    
        cmp     r0, #0; quando r0 arriva a -1 il loop termina
        beq     endloop
        ldr     r3, [r1]; elemento n-esimo dell'array
        cmp     r2, r3; compara elemento n-esimo dell'array
        beq     foundEl
inloop  
        add     r1, r1, #4; avanzamento del puntatore dell'array
        sub     r0, r0, #1; aggiornamento variabile contatore

        b       loop

foundEl 
        add     r4, r4, #1
        b       inloop

endloop 