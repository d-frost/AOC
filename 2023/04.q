inp:read0`:2023/input/04.txt;
r:{value ssr[;"|";"in"]last":"vs x}each inp;
sum{floor 2 xexp -1+sum x}each r
sum{@[y;z+til sum x[z-1];+;y[z-1]]}[r]/[c#1;1+til c:count r]