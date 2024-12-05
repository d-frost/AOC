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
m:(1 1;-1 1;-1 -1;1 -1);
p2f:{[d]
 d:d ./:/:m+\:/:raze (til count d),/:'where each "A"=/:d;
 d:d where all each 2=/:count each' group each d;
 d:d where all each d in "MS";
 d:not all each(<>)prior/:d;
 sum d
 };
p2:p2f inp;
(p1;p2)