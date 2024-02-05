inp:read0`:2018/input/04.txt;
r:inp a?asc a:{"P"$"20",2_ssr/[;"- ";".D"]16#1_x}each inp;
f:{k!x k:where count each x};
g:d?max f d:sum each group ![;v:"J"$first each " "vs'last each "#"vs' first each rr]sum each last each' deltas each' m:"U"$5#'''12_/:/:/:cut'[;rr]where each like\:[;"*asleep"]rr:cut[;r]where any each "#"=/:r
g*"j"$first key desc @[;g]d:count each' group each raze each key each' group ![;v]group each raze each {x+til "j"$y-x}.'' m
e*"j"$p?max p:d e:e?max e:f max each d