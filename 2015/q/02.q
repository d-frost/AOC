inp:asc each "J"$"x"vs' read0`:input/02.txt;
f1:{first[a]+sum 2*a:asc prd each x,'3#next x,first x};
f2:{sum(prd x;sum raze 2#'2#x)};
sum each flip(f1;f2)@\:/:inp

