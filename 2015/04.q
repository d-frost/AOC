inp:first read0`:2015/input/04.txt;
f:{x=first where "0"<>raze string md5 y,string z};
first where f[5;inp]each til `long$2e6
first where f[6;inp]each til `long$1e7