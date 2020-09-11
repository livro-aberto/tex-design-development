settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=orthographic(3,1,.5);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

triple i = (1,0,.5);
triple j = (0,1,.5);

draw (i -- e -- j, dashed);
draw (i -- c -- j);


draw (a -- b -- c -- d -- cycle);
draw (e -- f -- g -- h -- cycle);
draw (a -- b -- f -- e -- cycle);
draw (c -- d -- h -- g -- cycle);

label ("H", (a), align=NW);
label ("E", (b), align=SW);
label ("F", (c), align=S);
label ("G", (d), align=SE);

label ("D", (e), align=NW);
label ("A", (f), align=NW);
label ("B", (g), align=NW);
label ("C", (h), align=NE);

label ("M", (i), align=W);
label ("N", (j), align=E);

triple [] array={a,b,c,d,e,f,g,h,i,j};
for(triple j:array){
	dot(j, linewidth(1.5));
}