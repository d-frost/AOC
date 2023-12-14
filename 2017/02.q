inp:desc each "J"$ "\t" vs'read0`:2017/input/02.txt;
f:{(div) . first a where (=) . (%;div).\:flip a:a where (<>). flip a:x cross x};
sum each(((-).(first;last)@\:::);f)@/:\:inp