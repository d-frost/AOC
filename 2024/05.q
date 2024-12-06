inp:read0`:2024/input/05.txt;
(m;d):(0 1) _' (first where""~/:inp) cut inp;
m:(!). flip"J"$" "vs' ssr'[m;"|";" "];
d:value each d;
ga:{(1+y?x)_y};
gb:{z inter where x=y}[m];
f:{(y except x)~raze(gb;ga).\:(x;y)};
p1:sum d@'div[;2]count each d:d where{all x[;y]each y}[f]each d;
p1