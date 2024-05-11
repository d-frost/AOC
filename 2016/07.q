inp:read0`:2016/input/07.txt;
split:{.[;(::;0 1)]0N 2#1_'@[;0;" ",](0,where sum "[]"=\:x) cut x};
f:{any(~).'r where 2=count@'distinct@'(inter/')r:@'[;1;reverse]r:r@/:-1 1+/:where 2<>count@'distinct@'r:2#'-2_((1_)\)x};
sum 10b~/:max each f each'' split each inp