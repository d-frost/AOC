inp:first read0`:2024/input/09.txt;
gb:{raze ("J"$string x)#'c#raze (first (ceiling c % 2) cut til c:count x),'0N};
sort:{[dm;b]
 if[(null b)or 0>(-).(last where dm=b;(dm=0N)?1b);:dm];
 @/[dm;((null dm)?1b;last where dm=b);:;(b;0N)]
 }
sum r*'til count r:(r where not null::) r:r sort/ reverse r:gb[inp]