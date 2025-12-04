i:0 1+/:deltas each asc each "J"$"-"vs' "," vs first read0`:2025/input/02.txt;
sum n where 1b~/:raze{(~)."J"$(0N,ceiling %[;2]count x)#x} each string n:raze {x+til y}.' i
sum distinct n where {p:#[;x]each 1+til r:div[;2]c:count x;n:c div(1+til r);m:`int$0<>c mod n;any x~/:(c-m)#'p}each string n