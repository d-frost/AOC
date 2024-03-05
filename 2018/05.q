inp:first read0`:2018/input/05.txt;
f:{$[32=abs deltas[last x;y];-1_(),x;x,y]};
count f/[`int$inp]
min count each (f/)each `int$inp except/:flip 26 cut 52#.Q.an