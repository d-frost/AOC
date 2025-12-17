inp:read0`:2024/input/14t.txt;
i:value each' 2_''" "vs' inp;
m:((0 0;49 50);(51 0;100 50);(0 52;49 102);(51 52;100 102));
g:101 103;
f:{[p;v;g]
 c:?[c>g-1;c+neg g;c:p+v];
 c:?[0>c;g+c;c];
 c
 };
c:{[n;g;p;v] n f[;v;g]/ p}[100;g] .' i
prd sum each all each' (c where not any each c=\:g div 2)within\:/:m

show (p;v):flip "J"$","vs''2_''" "vs'inp
show dims:11 7

show pos: (p + 100*v) mod\: dims

show pos: (p + 100*v) mod\: dims
".12" flip (dims#0) .[;;+;1]/ pos
3 sv'' 0N!0 1 2 ,/:\: 0 1 2

show sections: 
3 sv 
dims {(0,0 1+x div 2) bin y}' flip po

