inp:read0`:2023/input/01.txt;
w:string `one`two`three`four`five`six`seven`eight`nine;
aw:{[w] cross[w;1_'w] where any each {y like/: x}[w]each cross[;]. flip {(_[-1];#[1])@\:x}'[w]}[w];
an:string 18 21 38 58 79 82 83 98;
inp2:ssr/[;(aw,w);an,1_.Q.n]each inp;
f:{sum "J"$(first;last)@\:/: x inter\: 1_.Q.n};
f@/:(inp;inp2)