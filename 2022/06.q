inp:"j"$first read0`:2022/input/06.txt;
f:{x+first where x=count each distinct each x#/:neg[x]_((1_)\)y};
f[;inp]each 4 14