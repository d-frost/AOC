inp:read0`:2020/input/07.txt;
r:" bags contain "vs/:inp;
is:`$ssr[;"00";""]@/:/:raze@/:/:-2#/:/:except\:\:[;enlist"other"]@-1_/:/:" "vs/:/:ssr[;"no";"0"]@/:/:", "vs/:r[;1];
os:`$raze@'" "vs/:r[;0];
d:os!is;
nodes:key[d] where not key[d] in raze value d;
t:1!flip`node`directAbove`furtherAbove!"S**"$\:();
f:{[x]
 t[x;`directAbove]:$[count n:where any each d in x;n;enlist`TOP];
 t[x;`furtherAbove]:(raze/)@[;`directAbove`furtherAbove]t each t[x;`directAbove];
 if[not null first d[x];:.z.s each d[x];];
 };
f each nodes;
count distinct except[;`TOP](raze/)@[t;`shinygold]