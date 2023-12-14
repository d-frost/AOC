inp:read0`:2016/input/02.txt;
d:"RDLU"!(0 1;1 0;0 -1;-1 0);
m1:3 cut 1+til 9;
f1:{2&0|y+x[z]};
m2:("   1   ";
    "  234  ";
    " 56789 ";
    "  ABC  ";
    "   D   "
   );
f2:{[m;x;y;z] $[null m . r:y+x[z];y;r]}[m2];
k:{[i;s;d;f;m;r] m ./: (s f[d]\raze i) -1+sums count each i}[inp];
raze each string k ./:((1 1;d;f1;m1;r1);(2 1;d;f2;m2;r2))