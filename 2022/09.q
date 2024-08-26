inp:"*J"$/:" "vs/:read0`:2022/input/09.txt;
m:"RULD"!(0 1;1 0;0 -1;-1 0);
d:(1 1;-1 -1;1 -1;-1 1);
h:sums raze inp[;1]#'m inp[;0];
addL:{x+/:y};interM:{(inter). flip x+\:/:y};
f:{[t;h]
 if[t~h;:t];
 if[any h~/:addL[t;value m];:t];
 if[h in addL[t;d];:t];
 if[count r:first interM[(h;t);value m];:r];
 if[count r:first r where all each not t=/:r:interM[(h;t);d,value m];:r];
 :t
 }\[0 0;]
count each distinct each (9 f\s)1 9