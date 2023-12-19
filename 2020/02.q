inp:read0`:2020/input/02.txt;
f1:{
    n:first[n]+til 1+abs (-). n:"J"$"-" vs first p:" "vs x;
    g:count each group last p;
    l:first/[1_p];
    g[l] in n
 };
f2:{1=count where first/[1_p]=@[last p;-1+"J"$"-"vs first p:" "vs x]};
(count where ::) each (f1;f2)@/:\:inp
