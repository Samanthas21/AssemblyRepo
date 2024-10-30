Num        dcd     4
Data       dcd     12, 7, 1, 4; Elementi dell'array


           mov     r0, #Num; numero elementi
           ldr     r0, [r0]
           mov     r1, #Data; puntatore dell'array
           mov     r2, #7; elemento da ricercare nell'array
           mov     r3, #0; temp

loopSomma  
           cmp     r0, #0; quando r0 arriva a -1 il loop termina
           bmi     notFoundEl
           ldr     r3, [r1]; elemento n-esimo dell'array
           cmp     r2, r3; compara elemento n-esimo dell'array
           beq     foundEl
           add     r1, r1, #4; avanzamento del puntatore dell'array
           sub     r0, r0, #1; aggiornamento variabile contatore

           b       loopSomma

foundEl    
           mov     r10, r3; metti l'elemento trovato nell'array in r10
           b       endSomma

notFoundEl 
           mov     r10, #-1; se l'elemento non viene trovato metti -1 in r10

endSomma   