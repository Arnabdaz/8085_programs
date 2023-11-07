
;<Program title>

jmp start

;data


;code
start: nop

lxi h,2000h
mov d,m
dcr d
loop2: mov e,d
lxi h,2001h
loop: mov a,m
inx h
mov c,m
cmp c
jc jump
mov m,a
dcx h
mov m,c
inx h
jump: dcr e
jnz loop
dcr d
jnz loop2

hlt