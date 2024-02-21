inp:first read0`:2016/input/05.txt;
f:{all "0"=5#raze string md5 x,string y};
r:f[inp;]each 1+til 12931929;
{first 5_raze string x}each md5 each inp,/:string 8 sublist 1+where r