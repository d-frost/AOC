i:"J"$/:string read0`:2025/input/03.txt;
f1:{
 $[1=count x;$[y>last x;(y;x);(x;y)];
 $[(<). 10 sv' (x;(max x;y));(max x;y);x]]};
sum {10 sv f1 over x} each i

f2:{nn:y idx:last where (>) prior maxs (1+count[x]+neg z)_y;(idx;nn)};
wf:{
 if[y=count x 0;:x];
 r:f2[;;y] . x;
 (x[0],r 1;(1+r 0)_ x 1)
 };
{sum 10 sv' ({wf[;x]/[(();y)]}[x;]each y)[;0]}[;i] each 2 12