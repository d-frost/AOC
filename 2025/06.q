i:read0`:2025/input/06.txt;
c:where not" "=last i;
n:"J"$-1_c _/:i;
d:value each' first each' 1#/:/:-1#c _/: i;
fn:{(first y)/[x]};
arg1:flip flip each (n;d);
arg2:flip (except'[;0N]"J"$flip each flip -1_c _/:i;first d);
sum each fn .'' (arg1;arg2);