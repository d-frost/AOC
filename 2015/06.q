inp:read0`:2015/input/06.txt;
fm:`on`off`toggle!((abs;1+);(neg abs::;0|+[-1]::);(neg;2+));
steps:{(`$r[0]),"J"$/:"," vs/:1_r:except/[;enlist each ("turn";"through")]" "vs x}each inp;
l:(cross/'){x+til y}.''flip each 0 1+/:deltas each 1_'steps
f:{./[x;y;z]};
sum 1=raze f/[1000 1000#-1;l;fm[;0]steps[;0]]
sum raze f/[1000 1000#0;l;fm[;1] steps[;0]]