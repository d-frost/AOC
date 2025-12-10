i:read0`:2025/input/07.txt;
nodes:()
m:`d`l`r!((1 0);(1 -1);(1 1));
split:(-1 0;0 -1;0 1);
s:0,where "S"=first i;
gn:{
 p:i ./: n:x+/:value m;
 n:n where "."=p;
 $["."=first p;enlist first n;n]
 };
wf:{
 nodes,:enlist x;
 raze .z.s each gn[x] except nodes
 };
wf[s];
sum {"|||"~ni ./: split+\:x}each raze (til count ni),''where each "^"=/:ni:i .[;;:;"|"]/ nodes