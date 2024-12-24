inp:first read0`:2024/input/09.txt;
gb:{raze ("J"$string x)#'c#raze (first (ceiling c % 2) cut til c:count x),'0N};
sort:{[dm;b]
 if[(null b)or 0>(-).(i:last where dm=b;ni:(null dm)?1b);:dm];
 @/[dm;(ni;i);:;(b;0N)]
 }
sum r*'til count r:r where not null r:r sort/ reverse r:gb[inp];

f:{[dn;b]
 if[(all null b)or not count where n:count[b]<=sum each r:null ((b~/:dn)?1b)#dn;:dn];
 ./[dn;((first where n;c#where first r where n);(last where b~/:dn;til c));:;(b;(c:count b)#0N)]
 }

sum r*'til count r:raze b f/ reverse b:i#'enlist[r],-1_(r:gb[inp]) {y _ x}\ i:("J"$string inp)