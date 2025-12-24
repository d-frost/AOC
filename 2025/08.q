i:value each read0`:2025/input/08t.txt;
fsqrt:{sqrt sum {sqr:abs x-y;sqr*sqr} . (x;y)};
c:{raze i where each r=x}each 30#distinct except[;0]asc raze r:i fsqrt\:/: i;
f:{[c;i;n]
 thisNode:nodes[i;`n];
 r:distinct raze c where n in/: c;
 nn:(r where not n~/:r) except thisNode;
 nodes[i;`n]:$[i in value raze key nodes;distinct thisNode,r;r];
 .z.s[c;i;]each nn;
 }[c];
nodes:1!flip`idx`n!"J*"$\:();
f'[til count distinct raze c;distinct raze c];
prd 3#distinct @[;`n]0!desc count each' nodes