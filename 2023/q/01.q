inp:read0`:input/01.txt;
words:string `one`two`three`four`five`six`seven`eight`nine;
adjacentWords:{[w] cross[w;1_'w] where any each {y like/: x}[w]each cross[;]. flip {(_[-1];#[1])@\:x}'[w]}[words];
adjacentNumbers:string 18 21 38 58 79 82 83 98;
inp2:ssr/[;(adjacentWords,words);adjacentNumbers,1_.Q.n]each inp;
f:{sum "J"$(first;last)@\:/: x inter\: 1_.Q.n};
f@/:(inp;inp2)