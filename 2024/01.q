inp:read0`:2024/input/01.txt;
d:"J"$(first;last)@\:flip" "vs' inp;
p1:sum abs(-). asc each d;
p2:sum d[0]*sum(='/:). d;
(p1;p2)