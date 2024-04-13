inp:"J"$"\t"vs first read0`:2017/input/06.txt;
f:{
 if[any x[0]~/:x[1];:x];
 r[i:r?m:max r:x[0]]:0;
 r:r+@[c#0;((m mod c)#i+1+til m)mod c;$[(c:count r) mod m;1;0]+];
 (r;(x[1],enlist x[0]);x[2]+1)
 };
last r:f/[(inp;();0)]
r[2]-first where r[0]~/:r[1]