inp:read0`:2017/input/07.txt;
n:(!). flip "SJ"$/:.[;(::;1);-1_]" ("vs/:.[;(::;0)]" -> "vs/:inp;
p1:{
 k:", "vs/:.[;(::;1)]v:" -> "vs/:x;
 v:.[;(::;0)]" "vs/:.[;(::;0)]v;
 i:where 1<count@'k;
 d:raze{[x;y]x!count[x]#y}.'flip(`$k[i];`$v[i]);
 (d;first value[d]except key d)
 };
p1[inp][1]
r:p1[inp][0]
d:1!flip`n`p`w!()$/:"SSJ";
`d upsert flip (key[n];r[key n];value n);
update t:0 from `d;
fr:{[nodes]
 {update t:w+sum exec t from d where p=x from `d where n=x} each nodes;
 .z.s each distinct exec p from d where n in nodes;
 }each key[r]except value r;
fr each b;
p2:{
 problemParent:exec first p from `t xasc select from d where p in where 1<>exec count distinct t by p from `t xasc d;
 expectedTotalWeight:exec first t from select from d where p=problemParent,1<>(count;i) fby t;
 actualTotalWeight:exec first t from select from d where p=problemParent,1=(count;i) fby t;
 update w:w+1_deltas(actualTotalWeight;expectedTotalWeight) from `d where t=actualTotalWeight;
 exec first w from d where p=problemParent,1=(count;i) fby t
 };
p2[]