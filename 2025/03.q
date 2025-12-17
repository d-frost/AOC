i:"J"$/:string read0`:2025/input/03.txt;
f1:{
 $[1=count x;$[y>last x;(y;x);(x;y)];
 $[(<). 10 sv' (x;(max x;y));(max x;y);x]]};
sum {10 sv f1 over x} each i

f2:{nn:x idx:last where (>) prior maxs (-11+count n)_x;(idx;nn)}
wf:{
 r:f2 x;
 n,:r 1;
 if[12=count n;:()];
 (1+r 0)_ x
 }
result:();{n::();wf over x;result,:10 sv n}each i;
sum result