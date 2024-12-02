inp:read0`:2024/input/02.txt;
d:value each inp;
incr:1=count distinct signum::;
adj:all within[;1 3]abs::;
pri:1_'(-) prior' ::;
chk:(incr;adj)@\:/: ::;
p1:sum all each chk pri d;
p2:sum any each all each' chk each pri each {.[x;();_;]each til count x}each d;
(p1;p2)