inp:read0`:2016/input/04.txt;
r:("J"$last "-"vs first::;key desc count each group asc raze -1_"-"vs first::;-1_last::;"-"sv -1_"-"vs first::)@\:/: "["vs' inp;
sum?[all each r[;2]=(count first r[;2])#/:r[;1];r[;0];0]
r[;0] first where any each like\:[;"northpole"] a:.Q.a mod'[;26]r[;0]+''(.Q.a?) each'' "-"vs' r[;3]