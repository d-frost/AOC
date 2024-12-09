inp:read0`:2024/input/07.txt;
(r;d):"J"$((::;" "vs' ::))@'flip": "vs/:inp;
cc:{"J"$raze each string x,\:y};
f:{(raze/'){(1#y){raze x .\:(y;z)}[x]/1_y}[x;]each y}[;d];
(p1;p2):sum each r where each r in'/:{f@/:(2#x;x)}[(+;*;cc)];
(p1;p2)