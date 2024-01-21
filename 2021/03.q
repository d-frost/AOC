inp:flip"B"$'/:read0`:2021/input/03.txt;
f1:{first key desc count each group x};
prd sv[2;] each ((f1');not (f1')::)@\:inp
f2:{[f;r;i] r where r[::;i]=first key f count each group f r[::;i]};
prd sv[2;] each {first f2[x]/[flip inp;til count inp]}each (desc;asc)