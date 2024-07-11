inp:read0`:2021/input/09.txt;
c:(cross/)til@/:count@/:1 first\inp;
a:(0 -1;-1 0;0 1;1 0);
sum 1+n where {all x<y}.' 10^flip(n:"J"$/:inp ./: c;"J"$/:/:inp ./:/: c+/:\:a)

b:a+\:/:c:raze(cross/')enlist'[;n] til count n:where@/:m:(9<>)prior"J"$/:/:inp;
f:{[x;y;z] distinct x,y where any@/:any@/:/:x~\:/:/:z};
r:3#count@/:group desc count@/:distinct@/:raze@/:(f[;c;b]\) peach enlist@/:c;
{prd 3#raze #'[;key x]value[x] div key x}[r]