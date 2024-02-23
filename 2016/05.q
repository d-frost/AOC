inp:first read0`:2016/input/05.txt;
p1:{[p;arg]
 if[8<=count last arg;:arg];
 incr:1000;
 r:md5 each p,/:string n:first[arg]+til incr;
 i:&/[(0=r[;0];0=r[;1];16>r[;2])];
 (first[arg]+incr;last[arg],n where i)
 };
raze 1_'string .[;(::;2)]md5 each inp,/:string last p1[inp]/[(0;())]

p2:{[p;arg]
 pw:last arg;
 if[not any null pw;:arg];
 incr:1000;
 r:md5 each p,/:string n:first[arg]+til incr;
 i:&/[(0=r[;0];0=r[;1];8>r[;2])];
 r:r where i;
 if[count r;pw:{if[not null x[y];:x]; @[x;y;:;z]}/[pw;`long$r[;2];first each string r[;3]]];
 (first[arg]+incr;pw)
 };
last f2[inp]/[(0;8#" ")]