inp:read0`:2024/input/10.txt;
d:value each' inp;
idx:raze(til count d),/:'where each 0=/:d;
m:(1 0;0 1;-1 0;0 -1);
nf:{[track;idx]
 if[track;i,:enlist idx];
 if[9=node:d . idx;:1b];
 newNode:d ./:pos:idx+/:m;
 targetNode:1+node;
 idx:pos where newNode=targetNode;
 .z.s[track] each idx except ?[track;i;()]
 };
wf:{[track;idx]i::();nf[track;idx]};
sum each sum each' (raze/''){wf[x;] each idx}each 10b