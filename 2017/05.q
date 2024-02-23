inp:"J"$read0`:2017/input/05.txt;
p1:{
 idx:x[0]; step:x[1]; maze:x[2];
 if[null maze[idx];:x];
 (idx+maze[idx];step+1;@[maze;idx;1+])
 };
p1/[(0;0;inp)][1]