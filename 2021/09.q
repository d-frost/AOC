inp:read0`:2021/input/09.txt;
c:(cross/)til@/:(count;first count each)@\:inp;
a:(0 -1;-1 0;0 1;1 0);
sum 1+n where {all x<y}.' 10^flip(n:"J"$/:inp ./: c;"J"$/:/:inp ./:/: c+/:\:a)