inp:"*J"$/:" "vs/:read0`:2022/input/09.txt;
m:"RULD"!((0 1);(1 0);(0 -1);(-1 0));
d:(1 1;-1 -1;1 -1;-1 1);
h:sums raze inp[;1]#'m inp[;0];
f:{[t;h]
 if[t~h;:t];
 if[any h~/:t+/:value m;:t];
 if[h in t+/:d;:t];
 if[count r:first(inter). flip(h;t)+\:/:value m;:r];
 if[count r:first r where all each not t=/:r:(inter). flip(h;t)+\:/:d,value m;:r];
 :t
 };
count distinct 0 0 f\ h