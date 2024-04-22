inp:`$")"vs/:read0`:2019/input/06.txt;
d:enlist[`]!2 enlist/ `;
p1:{
 x:@/[x;raze(y[0];i);union;raze(enlist y[1];count[i:where any each y in/:x]#y[1])];
 @[x;key x;union;raze each x x[key x]]
 };
count raze m:1_d p1/ inp
p2:{
 df:{value[x]!key x};
 if[`SAN in (df x[0])y;:y];
 if[not `SAN in x[1][y];:x[0][y]];
 (df(where `SAN in/:x[1])#x[0])y
 };
-2+count p2[((!). reverse flip inp;m)]\[`YOU]