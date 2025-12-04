g:read0`:2025/input/04.txt;
adj:(-1 -1;0 -1;1 -1;1 0;1 1;0 1;-1 1;-1 0);

f:{[g]
 tp:raze(til count first g),''where each g="@";
 n:tp+/:\:adj;
 nodes:tp where 4>sum each {[g;n]"@"=g . n}[g]each' n;
 g .[;;:;"x"]/ nodes};

{last deltas {sum sum each x} each "@"=/:(x;g)}each (f g;f over g)