
vett     dcd     10, 3, -5, 9, 2, 4, 17, 21, 8, 1, 11, 7
even     fill    48
odd      fill    48
max      fill    4
min      fill    4

         mov     r0, #12; vett_len
         mov     r1, #vett; original array
         mov     r2, #even; even array
         mov     r3, #odd; odd array
         mov     r4, #0; even count
         mov     r5, #0; odd count

loopEvenOdd 
         cmp     r0, #0
         beq     endLoopEvenOdd
         sub     r0, r0, #1
         ldr     r6, [r1], #4; vett element
         and     r7, r6, #1; control even or odd
         cmp     r7, #0
         beq     addEven
         str     r6, [r3], #4
         add     r5, r5, #1
         b       loopEvenOdd

addEven  
         str     r6, [r2], #4
         add     r4, r4, #1
         b       mainLoop

endLoopEvenOdd  

cmp r4, r5
bge useEvenVett
mov r1, #odd; use odd array
mov r0, r5
b maxMinLoop

useEvenVett
mov r1, #even; use even array
mov r0, r4

ldr r4, [r1], #4; save max into r4
mov r5, r4; save min into r5

maxMinLoop
cmp r0, #1
beq endMaxMinLoop
sub r0, r0, #1
ldr r6, [r1], #4; array element
cmp r6, r4
bgt changeMax
controlMin
cmp r6, r5
blt changeMin
b maxMinLoop


changeMax
mov r4, r6
b controlMin

changeMin
mov r5, r6
b maxMinLoop

endMaxMinLoop




