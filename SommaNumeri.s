Num       dcd     4
Data      dcd     12, 7, 1, 4; Elementi dell'array


          mov     r0, #Num; numero elementi
          ldr     r0, [r0]
          mov     r1, #Data; puntatore dell'array
          mov     r2, #0; somma
          mov     r3, #0; temp

loopSomma 
          cmp     r0, #0; quando r0 arriva a -1 il loop termina
          bmi     endSomma
          ldr     r3, [r1]; elemento n-esimo dell'array
          add     r2, r2, r3; somma
          add     r1, r1, #4; avanzamento del puntatore dell'array
          sub     r0, r0, #1; aggiornamento variabile contatore

          b       loopSomma


endSomma  