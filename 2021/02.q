inp:read0`:2021/input/02.txt;
d:`forward`down`up!(0 1 0;1 0 1;-1 0 -1);
prd sum 1_'t:last[r]*d first r:("SJ";" ")0:inp
t:`aim`position`depth!/:t;
t:update position:sums position,depth:sums aim*position from update aim:sums aim from t;
exec last depth*last position from t