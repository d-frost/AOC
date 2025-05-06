inp:read0`:2024/input/13t.txt;
m:-1_'-1_cut[;r]0,1+where ""~/:r:ssr'[;"+";"="](": "vs/: inp,enlist"")[;1];
i:{flip "J"$last each' "=" vs'' ", "vs/: x}each m;
f:{
 r:(cross/')(1+til[x])*\:/:/:y[;0 1];
 i:first where min y[;2]='sum each' r;
 if[null i;:()];
 sum 3 1 * r[0;i] div y[0;0 1]
 }
sum raze {[i] min raze f[;i]each til 100}each i