inp:first value each read0`:2024/input/11.txt;
p1:{$[x~0;1;0~mod[;2]count string x;"J"$2 0N#string x;2024*x]};
count 25 {raze f each x}/ inp

p2:{
 r:enlist each x;
 idx:0=mod[;2]count each s:string x;
 r[where idx]:"J"$2 0N#/:s where idx;
 r[zero:where r~\:enlist 0]:1;
 r[except[where not idx;zero]]*:2024;
 raze r
 };

count 25 p2/ inp