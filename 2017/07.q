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
 };
fr each key[r]except value r;
p2:{
 pn:0!1#`t xasc select from d where 1=(count;i) fby ([]p;t);
 pns:0!select from d where p in pn[`p];
 (exec first w from pn)+(exec first t from pns except pn)-pn[`t][0]
 };
p2[]