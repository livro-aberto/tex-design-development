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

draw(a -- b -- c -- d -- cycle);
draw(a -- b -- f -- e -- cycle);
draw(a -- d -- h -- e -- cycle);

draw(h -- g -- c, dashed);
draw(g -- f, dashed);


