inp:"J"$read0`:2017/input/05.txt;
p1:{
 idx:x[0]; maze:x[1]; step:x[2];
 if[null maze[idx];:x];
 (idx+maze[idx];@[maze;idx;1+];step+1)
 };
last p1/[(0;inp;0)]