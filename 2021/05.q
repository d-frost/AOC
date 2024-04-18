inp:read0`:2021/input/05.txt;
n1:n2 where any each (=).' n2:"J"$" "vs''"-"vs'ssr/[;(" -> ";",");("-";" ")]each inp;
p1:{flip(1+max abs r)#'a[0]+signum[r]*til each 1+abs r:last deltas a:(x;y)};
{sum 2<=count each group raze p1 .' x}each (n1;n2)