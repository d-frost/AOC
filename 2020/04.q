c:`byr`iyr`eyr`hgt`hcl`ecl`pid;
r:(!)./:flip each "S*"$/:/:":"vs''raze each" "vs''-1_'-1_cut[;inp]0,1+where""~/:inp:,[;enlist""]read0`:2020/input/04.txt;
sum t:all each c in/: key each r
t:raze c#/:enlist each r where t;
t:update "J"$byr,"J"$iyr,"J"$eyr,unit:`$#'[-2;hgt],{"J"$x where x in .Q.n}'[hgt],`$ecl from t;
t:select from t where byr within 1920 2010,iyr within 2010 2020,eyr within 2020 2030;
t:select from t where unit in `in`cm,hgt within' {?[x=`cm;150 193;59 76]}'[unit];
t:select from t where {(9=count x) and all x within "09"}'[pid];
t:select from t where {(7=count x) and all|[x like"#*";all (1_x) within/:("09";"af")]}'[hcl];
count t:select from t where ecl in `amb`blu`brn`gry`grn`hzl`oth