inp:read0`:2024/input/04.txt;
turn:{3 (reverse flip::)\x};
d:turn inp;
gd:{((::;neg reverse::)@\:1+til count x)#'\:x};
(tri1;tri2):flip gd each d;
fd:{raze {-1_ x each'((-1_')\)y}[x;]each y};
dp:fd[last;tri1],fd[last;reverse each' tri2];
dp:(dp where r),distinct dp where not r:" "in/:dp;
gs:{sum x~/:neg[s]_(s:count x)#'((1_)\)y}["XMAS"];
p1:sum gs each raze[d],dp;