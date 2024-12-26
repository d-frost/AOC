inp:read0`:2024/input/10.txt;
d:value each' inp;
idx:raze(til count d),/:'where each 0=d;
m:(1 0;0 1;-1 0;0 -1);
nf:{[idx]
 if[9=node:d . idx;:enlist idx];
 newNode:d ./:pos:idx+/:m;
 targetNode:1+node;
 idx:pos where newNode=targetNode;
 raze .z.s each idx
 };
sum(count distinct::)each nf each idx
sum count each nf each idx