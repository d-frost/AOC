inp:read0`:2024/input/07.txt;
r:"J"$first d:flip ": "vs/:inp;
d:"J"$" "vs'last d;
s:(raze/'){(1#x){(+;*).\:(x;y)}/1_x}each d;
p1:sum r where r in's;