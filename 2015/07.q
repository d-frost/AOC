d2b:{0b vs x};
b2d:{0b sv x};
lf:{b2d x . d2b each y};
sf:{b2d y[1] x/ d2b y[0]};
cf:{65536+b2d not d2b each x};
v:`$first s:reverse flip " -> "vs/:inp:upper read0`:2015/input/07.txt;
i:{where x like "*",string[y],"*"}[inp] each `NOT`OR`AND`LSHIFT`RSHIFT;
f:{[f;c;d;x] ssr[f,"(",x,")";c," ";d]} ./:(("cf";"NOT";"");("lf[|]";" OR";";");("lf[&]";" AND";";");("sf[next]";" LSHIFT";";");("sf[prev]";" RSHIFT";";"));
s:":"sv/:flip(s[0];@/[s[1];i;f]);
s:1 rotate s@v?distinct(`$/:.Q.A),asc v;
value each s;A
value each @[s;0;:;"B:",string A];A