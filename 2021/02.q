inp:read0`:2021/input/02.txt;
d:`forward`down`up!(0 1 0;1 0 1;-1 0 -1);
prd sum 1_'t:last[r]*d first r:("SJ";" ")0:inp
t:`aim`position`depth!/:t;
exec last depth*last sums[position] from update depth:sums position*sums aim from t