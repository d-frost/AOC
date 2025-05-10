inp:read0`:2024/input/15t.txt;
(g;d):(::;raze)@'_[;inp]0,where ""~/:inp;
f:{[g;d]
 // rotate grid 3 times
 gs:3 {reverse flip x}\ g;
 // locate '@' indices
 gis:where each' maxs each "@"=/:gs;
 // get lines
 gls:raze each gs@''gis;
 // get correct line and indices for d
 (g;gl;gi):(gs;gls;gis)@\:r:"v<^>"?d;
 // get indices before first '#'
 gl:gl where mins gl<>"#";
 // check if there is a '.' in line
 // if there is, move '@' forward
 // if not, do nothing
 gl:$[
    "." in gl;
    ,[;gl (til count gl) except m] -1 rotate gl m:til 1+gl?".";
    gl];
 // get indices of updates points
 n:count[gl]#n where 2=count each n:(til count g),'gi;
 // recreate g based on new line
 g:.[;;:;]/[g;n;gl];
 // flip back to correct orientation
 g:(3 {flip reverse x}\ g)[r];
 // return new g
 g
 };
sum sum each raze (100*til count g),''where each "O"=g f/ d