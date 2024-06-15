system"l util.q"; // generalSum
inp:"J"$"," vs first read0`:2021/input/07.txt;
n:{x+til y+1}.(min;max)@\:inp;
min sum abs n-/:inp
min sum generalSum@/:/:abs n-/:inp