inp:" " vs'read0`:2018/input/03.txt;
l:"J"$","vs'-1_'first each 2_'inp;
s:"J"$"x"vs'last each inp;
sum null raze r:{[g;s;l;i] ./[g;(l[1]+til s[1]),\:enlist l[0]+til s[0];{$[x~0;y;0N]};i]}/[1000 1000#0;s;l;1+til count inp]
1+first where {[r;l;s;i] (all/) i=r . reverse l+'til each s}[r]'[l;s;1+til count l]