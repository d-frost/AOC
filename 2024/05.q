inp:read0`:2024/input/05.txt;
(m;d):({flip"J"$" "vs' ssr'[x;"|";" "]};{value each x})@'(0 1) _' (first where""~/:inp) cut inp;
ga:{(1+y?x)_y};
gb:{z inter x[0] where x[1]=y}[m];
f:{(y except x)~raze(gb;ga).\:(x;y)};
gs:{[d]sum d@'div[;2]count each d};
gl:{[m;d;i]
 v:ga[i;d] inter m[0] where i=m[1];
 @/[d;d?/:i,v;:;v,i]
 }[m];
(p1;p2):gs each {x gl/ x}each' d where each flip{(::;not)@\:all x[;y]each y}[f]each d;
(p1;p2)