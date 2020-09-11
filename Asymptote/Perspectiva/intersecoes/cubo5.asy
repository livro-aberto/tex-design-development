settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=orthographic(2,1/2,.75);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

triple j = (.5,1,0);

draw (a -- b -- c -- d -- cycle);
draw (e -- f -- g -- h -- cycle);
draw (a -- b -- f -- e -- cycle);
draw (c -- d -- h -- g -- cycle);

draw(e -- j);

label ("H", (a), align=NW);
label ("E", (b), align=SW);
label ("F", (c), align=S);
label ("G", (d), align=SE);

label ("D", (e), align=NW);
label ("A", (f), align=NW);
label ("B", (g), align=SW);
label ("C", (h), align=NE);

label ("N", (j), align=SE);

label ("M", (f+(0,.525,0)), align=NE);

dot(f+(0,.525,0), linewidth(1.5));

dot(a, linewidth(1.5));
dot(b, linewidth(1.5));
dot(c, linewidth(1.5));
dot(d, linewidth(1.5));
dot(e, linewidth(1.5));
dot(f, linewidth(1.5));
dot(g, linewidth(1.5));
dot(h, linewidth(1.5));
dot(j, linewidth(1.5));

