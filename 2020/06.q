inp:read0`:2020/input/06.txt;
inp:1_'@[;0;enlist[""],](0,where ""~/:inp)cut inp;
sum{count distinct raze x}each inp
sum{sum count[x]=count each group raze x}each inp