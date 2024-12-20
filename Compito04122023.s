
v0            dcd     124, 235, 9, 100, 6, 90, 79, 14, 21, 45
v1            fill    40; 40 byte

              mov     r0, #68; mask
              mov     r1, #v0; array v
              mov     r2, #v1; array v1
              mov     r3, #0; counter
              mov     r4, #10; len array
              mov     r7, #0; min

start_loop    
              cmp     r3, r4
              beq     end_loop
              ldr     r5, [r1]
              orr     r6, r5, r0; array value after mask
              str     r6, [r2]
              add     r3, r3, #1
              add     r1, r1, #4
              add     r2, r2, #4
              cmp     r7, #0
              beq     set_min
continue_loop 
              cmp     r6, r7
              ble     control_min
              b       start_loop

set_min       
              mov     r7, r6
              b       continue_loop

control_min   
              mov     r7, r6
              b       start_loop

end_loop     
