inp:first read0`:2018/input/05.txt;
n:@[;inp](52#.Q.an)!til 52;
diff:abs deltas ::;
p1:{[l]
 if[not 26 in diff l;:l];
 idx:{x+1}/[{[l;i] r:diff . l[(i-1),i];if[not 26 in r;:1b];26<>r}[l];0];
 idx:2 sublist asc (idx-1),idx;
 p:(count l)#1b; p[idx]:0b; l where p
 };
last p1/[n]