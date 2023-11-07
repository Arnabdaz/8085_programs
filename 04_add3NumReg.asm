
;Write a program for the addition of three 8-bit numbers
;   • Addition using register (without carry)

jmp start

;data


;code
start: nop

mvi a,03h ;load accumulator with num 1
mvi b,02h ;load register b with num 2
add b     ;add data from register b to accumulator
mvi b,04h ;load register b with num 3
add b	  ;add data form register b to accumulator
mov c,a   ;move result to c register form accumulator

hlt