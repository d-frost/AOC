inp:flip ("SJ";" ")0:" "sv'{(1#x;1_x)}each ", "vs first read0`:input/01.txt;
inp[;0]:sums -1 1`R=inp[;0];
f:{[x;y]last[x]+\y[1]#enlist rotate[y[0]-1;(1 0;0 -1;-1 0;0 1)][0]};
(sum abs::) each (last;first where 1<count each group::)@\:raze enlist[0 0] f\ inp