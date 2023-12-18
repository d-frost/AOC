inp:"J"$csv vs first read0`:2019/input/02.txt;
f:{[x;y]
    i:x[1];l:x[0];
    if[l[i]=99;:(l;i)];
    af:$[l[i]=1;sum;l[i]=2;prd];
    $[l[i] in 1 2;(@[l;l i+3;:;af l l i+1 2];i+4);(l;i+1)]
    };
(first/)(@[inp;1 2;:;12 2];0) f/til count inp