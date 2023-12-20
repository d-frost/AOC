inp:first read0`:2015/input/03.txt;
d:"^>v<"!(1 0;0 1;-1 0;0 -1);
f:{[d;i] (enlist 0 0),sums d i};
count group f[d;inp]
count group raze f[d;]each flip 2 cut inp