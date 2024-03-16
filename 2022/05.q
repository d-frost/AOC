inp:read0`:2022/input/05.txt;
c:inp til n:first where ""~/:inp;
p:0 -1 -1+/:{except[;0N]"J"$" "vs x}each _[;inp]1+n;
s:trim each -1_' flip[c]where in[;.Q.n]last c;
f:{[c;s;p]@/[s;(p[2];p[1]);((c p[0]#s[p[1]]),;p[0]_)]};
first each s f[reverse]/p
first each s f[::]/p