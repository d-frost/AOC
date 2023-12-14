inp:read0`:2016/input/02.txt;
d:"RDLU"!(0 1;1 0;0 -1;-1 0);
m1:3 cut 1+til 9;
f1:{[d;s;i] 2&0|s+d[i]}[d];
m2:("   1   ";
    "  234  ";
    " 56789 ";
    "  ABC  ";
    "   D   "
   );
f2:{[d;m;s;i] $[null m . r:s+d[i];s;r]}[d;m2];
k:{[i;s;f;m] m ./: (s f\raze i) -1+sums count each i}[inp];
raze each string k ./:((1 1;f1;m1);(2 1;f2;m2))