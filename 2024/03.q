inp:read0`:2024/input/03.txt;
d:raze inp;
fp:{[p;d]+\:[;s]where p~/:(s:count p)#'((1_)\)d};
gp:{first each ")"vs'x cut y};
gs:{sum value each ssr'[;csv;"*"]x where all each x in .Q.n,csv};
sd:`s#(!). flip enlist[(0,1b)],asc raze(fp[;d]@/:("do()";"don't()")),\:'10b;
(p1;p2):gs@/:gp[;d]@/:(r;r where sd r:fp["mul("]d);
(p1;p2)