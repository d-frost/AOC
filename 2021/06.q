inp:value first read0`:2021/input/06.txt;
f:{[t]
 t1:update timer:timer-1 from select from t where 0<timer;
 t2:update timer:count[i]#8 from select from t where not timer;
 t3:update timer:count[i]#6 from select from t where not timer;
 t1+t2+t3
 };
2 sum/ 80 f/ {([timer:key x]cnt:value x)}count each group inp
2 sum/ 256 f/ {([timer:key x]cnt:value x)}count each group inp