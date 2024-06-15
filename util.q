generalSum:{div[;2]x*x+1};
ltil:{x+til y+1};
dfs:{v:();{z,:y;raze $[1<sum z=y;();y,.z.s[x;;z] each x y]}[x;y;v]}; // credit AK [dailyq]