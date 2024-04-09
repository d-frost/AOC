inp:read0`:2023/input/05.txt;
m:"J"$/:/:" "vs/:/:2_'cut[;inp]where ""~/:inp;
s1:"J"$" "vs 1_last ":"vs first inp;
p1:{$[any r:x within/: flip(y[;1];y[;1]+y[;2]);x-y[r?1b][1]-y[r?1b][0];x]};
min last s1 p1\:\ m
s2:0N 2#s1;
s2:flip(s2[;0];s2[;0]+s2[;1]);
p2:{if[any(x {$[any r:(x-y[;0]-y[;1]) within\:' flip(y[;1];y[;1]+y[;2]);x+y[r?1b][1]-y[r?1b][0];x]}/ reverse m)within/:s2;:x];0N!x;x+1};
p2/[20358595]