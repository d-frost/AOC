i:read0`:2025/input/05.txt;
(r;n):(0,first where ""~/:i)_ i;
r:"J"$"-"vs/:r;
n:"J"$1_n;
sum any each n within/:\: r
.n.last:();.n.count:();
wf:{[r]
 {[r]
  if[()~.n.last;.n.last:r;:()];
  if[.n.last[1]<r 0;.n.count+:1+last deltas .n.last;.n.last:r;:()];
  .n.last[1]:max(.n.last[1];r 1);
  }each asc r;
 .n.count+1+last deltas .n.last
 };
wf r