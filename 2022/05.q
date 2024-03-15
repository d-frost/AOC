inp:read0`:2022/input/05.txt;
c:inp til n:first where ""~/:inp;
p:0 -1 -1+/:{except[;0N]"J"$" "vs x}each _[;inp]1+n;
s:trim each 1_'reverse each flip[c]where in[;.Q.n]last c;
last each {[s;p]@/[s;(p[2];p[1]);(,[;(reverse(neg p[0])#s[p[1]])];(neg p[0])_)]}/[s;p]
