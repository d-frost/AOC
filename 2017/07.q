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