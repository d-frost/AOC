inp:read0`:2018/input/07.txt;
nodes:distinct raze d:`$.[;(::;1 7)]" "vs/:inp;roots:asc distinct{key[x]except value x}(!). flip d;d:select dep by node from flip `dep`node!flip d;`d upsert flip(roots;`);update order:0 from `d;
f:{[n]
 if[null last n;:`];
 if[last[n] in roots;d[last n;`order]:1+(exec max order from d)];
 nextnode:n,1#roots except n;
 s:`node xasc select from d where order=0,all each max n in'/:\:dep;
 if[(0=count s)or (`Z^last[nextnode])<exec first node from s;:.z.s nextnode];
 `d upsert update order:1+(exec max order from d) from s:1#s;
 n,exec node from s
 };
f/[1#roots]
raze string exec node from `order xasc d