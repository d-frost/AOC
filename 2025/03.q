i:"J"$/:string read0`:2025/input/03t.txt;
f:{
 $[1=count x;$[y>last x;(y;x);(x;y)];
 $[(<). 10 sv' (x;(max x;y));(max x;y);x]]};
sum {10 sv f over x} each i