inp:read0`:input/02.txt;
threshold:14 13 12;
f1:{";" vs last ":"vs x}
f2:{"JS"$/:" "vs' 1_'"," vs x}
f:{
 t:`num`colour!/:raze f2 each f1 x;
 t:(!). value flip 0!select max num by colour from t where colour in `red`green`blue
 };
sum 1+where all each threshold>=/:f each inp
sum prd each f each inp


