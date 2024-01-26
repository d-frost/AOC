inp:read0`:2023/input/03.txt;
m:m cross m:(1 0 -1);
p:"*@/+$=&-#%";
n:except[;0N]"J"$"."vs ssr/[raze inp;p;"."];
i:m+\:/:/:(til count c),''where each c:in\:[inp;.Q.n];
c:(-1_0,sums count each string n);
sum n where any each in\:[;p]raze each c _ raze inp ./:/:/:i
sum prd flip n where each w where 2=sum each w:g in/:\:raze each c _ raze i