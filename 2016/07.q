inp:read0`:2016/input/07.txt;
split:{.[;(::;0 1)]0N 2#1_'@[;0;" ",](0,where sum "[]"=\:x) cut x};
p1:{any(~).'r where 2=count@'distinct@'(inter/')r:@'[;1;reverse]r:r@/:-1 1+/:where 2<>count@'distinct@'r:2#'-2_((1_)\)x};
p2:{
 r:raze@'3#'''-3_''((1_)\'')flip split[x];
 r:2=count@'distinct@'abs deltas@'"j"$c:(cross). r;
 g:2=count@'group@'c;
 any g&r
 };
sum 10b~/:max@'p1@'''split@'inp
sum p2@'inp