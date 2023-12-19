inp:read0`:2022/input/02.txt;
h:.[inp;(::;0 2)];
f:{x+raze y rotate' 3 3#z};
sum@[;h]cross["ABC";"XYZ"]!flip f .' ((9#1+til 3;0 -1 1;3 6 0);(raze 3 3#0 3 6;-1 0 1;1 2 3))
