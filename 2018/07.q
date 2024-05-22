inp:read0`:2018/input/07.txt;
nodes:distinct raze d:`$.[;(::;1 7)]" "vs/:inp;
roots:asc distinct{key[x]except value x}(!). flip d;
d:select dep by node from flip `dep`node!flip d;
dp2:d:d upsert flip(roots;`);
update order:0 from `d;
p1:{[n]
 if[null last n;:`];
 if[last[n] in roots;d[last n;`order]:1+(exec max order from d)];
 nextnode:n,1#roots except n;
 s:`node xasc select from d where order=0,all each max n in'/:\:dep;
 if[(0=count s)or (`Z^last[nextnode])<exec first node from s;:.z.s nextnode];
 `d upsert update order:1+(exec max order from d) from s:1#s;
 n,exec node from s
 };
p1/[1#roots];
raze string exec node from `order xasc d

map:60+(`$/:.Q.A)!til count .Q.A;
workers:`w1`w2`w3`w4`w5;w:workers!count[workers]#enlist `;
ticker:1!flip `second`started`done`workers`busy!"J**J*"$\:();
finishWork:{[s;aw]
 duration:-1+s-exec first second from ticker where aw in/: started;
 if[duration<map aw;:()];
 @[`w;w?aw;:;`];
 ticker[s;`done],:enlist aw;
 };
startWork:{[s;fw]
 done:(raze/)exec done from ticker;
 // get next node based on done
 nextNodeReady:(exec node from dp2 where all each dep in\:done)except (raze/)exec started from ticker;
 // if none ready, pick one that has no dependency
 if[any (first null::;{0=count x})@\:nextNodeReady;nextNodeReady:(exec node from dp2 where dep~\:`)except (raze/)exec started from ticker];
 if[not count nextNodeReady;:()];
 nextNodeReady:first (asc nextNodeReady)except value w;
 @[`w;fw;:;nextNodeReady];
 ticker[s;`started],:enlist nextNodeReady;
 };
p2:{[s]
 `ticker upsert (s;();@[;`done]ticker last(0!ticker)[`second];0N;());
 if[count aw:(value w)except`;finishWork[s;]each aw];
 if[count fw:where w=`;startWork[s;] each fw];
 ticker[s;`workers]:count(value w)except`;
 ticker[s;`busy]:(value w)except`;
 if[(~). asc each (ticker[s;`done];exec node from dp2);:s];
 s+1
 }
p2/[0]