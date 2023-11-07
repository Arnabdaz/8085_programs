
;<Program title>

jmp start

;data


;code
start: nop
lxi h,2000;
;size
mov c,m;
;searching element
lda 2010;
mov b,a;
jomp: inx h;
mov a,m;
cmp b;
jnz jompo;
mvi a,01;
sta 2013;
hlt;
jompo: dcr c;
jnz jomp;
mvi a,00;
sta 2013;
hlt
