inp:"J"$/:/:read0`:2022/input/08.txt;
p1:{((>)prior')maxs@/:x};
turn:{3 (reverse flip::)\x};
revert:{x (flip reverse::)/ y}'[til 4;];
2 sum/ max revert p1 each turn[inp]
p2:{(reverse til count x)&1+sum@/:x>'maxs@/:1_'-1_((1_)\)x}';
2 max/ prd revert p2 each turn[inp]