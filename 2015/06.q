inp:read0`:2015/input/06.txt;
g:{1000#/:1000#x};
fm:`on`off`toggle!((abs;1+);(neg abs::;0|+[-1]::);(neg;2+));
steps:{(`$r[0]),"J"$/:"," vs/:1_r:except/[;enlist each ("turn";"through")]" "vs x}each inp;
l:(cross/'){x+til y}.''flip each 0 1+/:deltas each 1_'steps
f:{./[x;y;z]};
count where 1=raze f/[g[-1];l;fm[;0]steps[;0]]
sum raze f/[g[0];l;fm[;1] steps[;0]]