inp:read0`:2015/input/05.txt;
f:{
    if[3>count raze "aeiou"#group x;:0b];
    if[any x like/: "*",/:(string`ab`cd`pq`xy),\:"*";:0b];
    if[all 0<>1_deltas (.Q.a!til count .Q.a) x;:0b];
    1b
 };
sum f each inp