inp:read0`:2024/input/12t.txt;
m:(-1 0;0 -1;1 0;0 1);
coordinates:(cross/)til each (count;first count@)@\: inp;
appendCoordinates:{[n;c]
    r:m+\:c;
    r:$[0=count r:r where (=). ((inp .)::;inp ./:)@'(c;r);enlist c;r];
    if[(all/) not null d[n];
    if[all r in d[n];:()]];
    .[`d;enlist n;{[n]$[n in key d;{distinct ,[x;y]};:]}[n];r];
    .z.s[n;] each r;
    };
f:{[c]
 if[(any/) c in/: d;:()];
 n:1+max key d;
 appendCoordinates[n;c];
 };
d:enlist[0]!enlist();
f each coordinates;
sum raze(count each d)*(sum each sum each' (inp ./:/: d)<>'inp ./:/:/: d+/:\:\:m)