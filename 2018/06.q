inp:reverse each "J"$","vs'read0`:2018/input/06.txt
c:(cross/)til each s:1+max inp;
r:{sum each abs x-/:y}[;c]each inp;
r:sum each flip a where 1=count each where each a:flip r=\:min r;
b:a distinct asc {(til x),(y*til x),(-1+y*1+til x),(y*-1+x)+til y}. s;
max r where not max b where 1=count each where each b
sum 10000>sum each sum abs c-\:/:inp