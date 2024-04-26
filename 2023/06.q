inp:read0`:2023/input/06.txt;
value each lower each inp;
f:{sum y<(1+n)*reverse n:til x};
prd f .' flip(time;distance)
f . "J"$(last each ":"vs' inp)except\:" "