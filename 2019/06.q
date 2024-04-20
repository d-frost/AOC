inp:`$")"vs/:read0`:2019/input/06.txt
d:enlist[`]!2 enlist/ `;
f:{
 x:@/[x;raze(y[0];i);union;raze(enlist y[1];count[i:where any each y in/:x]#y[1])];
 @[x;key x;union;raze each x x[key x]]
 };
count raze r:1_d f/ inp