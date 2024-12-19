inp:read0`:2024/input/08.txt;
mf:{
 i:raze n where count each n:(til count y),/:'where each x=/:y;
 ix:n where 2=count each distinct each n:2 0N#/:{x cross x}i;
 n1:{(+).(last deltas x;last x)} each ix;
 n2:raze {(+).(c#enlist last x;(til c:count y)*\:last deltas x)}[;y]each ix;
 {x where all each within[x;(0;-1+count y)]}[;y]each (n1;n2)
 };
(p1;p2):{count distinct raze x} each flip mf[;inp]each .Q.an