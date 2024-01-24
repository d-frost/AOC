inp:read0`:2023/input/03.txt;
n:except["J"$"."vs ssr/[raze inp;"*@/+$=&-#%";"."];0N];
m:(1 1;0 1;-1 1;-1 0;-1 -1;0 -1;1 -1;1 0);
i:(til count c),''where each c:in\:[inp;.Q.n];
sum n where any each in\:[;"*@/+$=&-#%"]raze each (-1_0,sums count each string n)_ raze inp ./:/:/: i+/:\:\:m