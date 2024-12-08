inp:read0`:2024/input/06.txt;
dir:"^>v<"!(-1 0;0 1;1 0;0 -1);
d:key[dir] first where any key[dir]in/:inp;
p:raze((where any each::;where any::))@\:inp=d;
f:{[pd;d;m]
 if[null m . pd[0];:pd];
 gp:{x+z[y]}[;;d];
 str:gp . pd;
 nd:key[dir] first where -1 rotate  pd[1]=key dir;
 turn:gp . (pd[0];nd);
 $["#"~inp . str;(turn;nd);(str;pd[1])]
 }[;dir;inp];
p1:-1+count distinct f\[(p;d)][;0];
p1