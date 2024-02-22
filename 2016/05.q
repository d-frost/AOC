inp:first read0`:2016/input/05.txt;
f:{[p;arg]
 if[8<=count last arg;:arg];
 incr:1000;
 r:md5 each p,/:string n:first[arg]+til incr;
 i:&/[(0=r[;0];0=r[;1];16>r[;2])];
 (first[arg]+incr;last[arg],n where i)
 }[inp]
\t raze 1_'string .[;(::;2)]md5 each inp,/:string last f/[(0;())]