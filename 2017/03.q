inp:"J"$first read0`:2017/input/03.txt;
f:{sum @[;y]abs sums raze (enlist 0 0),@[;last flip 0N 2#-1+x;neg]{flip raze each x#''(0 1;1 0)} each x};
f[;inp]1+til 650