i:read0`:2025/input/05.txt;
(r;n):(0,first where ""~/:i)_ i;
r:"J"$"-"vs/:r;
n:"J"$1_n;
sum any each n within/:\: r
.n.last:();.n.count:();
wf:{[r]
 {[lo;hi]
  if[not count .n.last;.n.last:(lo;hi);:()];
  if[.n.last[1]<lo;.n.count+:1+last deltas .n.last;.n.last:(lo;hi);:()];
  .n.last:(.n.last[0];max(.n.last[1];hi));
  }.' asc r;
 .n.count+1+last deltas .n.last
 };
wf r