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