inp:read0`:2020/input/08.txt;
cf:{"SJ"$/:" "vs/:x};
c:cf inp;
p1:{[x;y]
 if[(max raze(count;last)@\:y[2])>-1+count[x];:y];
 if[y[1] in y 2;:y];
 r:x y 1;
 opt1:$[r[0]=`acc;r 1;0];
 opt2:$[r[0]=`jmp;r 1;1];
 (opt1+y 0;opt2+y 1;y[2],y 1)
 };
first f[c]/[(0;0;())]
p2:{@[z;;ssr[;x;y]]each where z like\:x,"*"};
inp:raze p2[;;inp].'(("jmp";"nop");("nop";"jmp"));
c:cf each inp;
r:{[c]f[c]/[(0;0;())]}each c;
r[;0]l?max l:max@/:r[;2]