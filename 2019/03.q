`a`b set' csv vs' read0`:2019/input/03.txt
m:"RULD"!((0 1);(1 0);(0 -1);(-1 0));
f:{[x;y;z](last each x)+y*\:z};
f2:{raze flip each f\[0 0;m[.[x;(::;0)]];1+til each "J"$1_'x]};
min sum each abs each (inter) . f2 each (a;b)
min sum each 1+{?\:[x;y]}[r]each (inter) . r:f2 each (a;b)