inp:cut[;inp]0,where ""~/:inp:read0`:2021/input/04.txt;
s:"J"$csv vs .[inp;(0;0)];
b:{except'[;0N]"J"$/:" "vs' x}each 1_'1_inp;
f:{
    if[1=count x;:x];
    $[any r:any each any each' all each'(::;flip)@\:/:n:x[1]|y=x[0];
        y*sum sum each (x[0]r)@'where each not n r:r?1b;
        (x[0];n)
    ]
 };
f/[(b;b=0N);s]