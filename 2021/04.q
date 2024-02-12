inp:cut[;inp]0,where ""~/:inp:read0`:2021/input/04.txt;
s:"J"$csv vs .[inp;(0;0)];
b:{except'[;0N]"J"$/:" "vs' x}each 1_'1_inp;
f2:{(x[0]i;n i:where not i;y*sum sum each (x[0]r)@'where each not n r:?[;1b] i:any each any each' all each'(::;flip)@\:/:n:x[1]|y=x[0])};
r -1 1#\:where not 0=raze r:f2\[(b;b=0N);s][;2]