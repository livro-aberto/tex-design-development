settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
import math;
size(5cm);

currentprojection=orthographic(1.5,.75,1/2);



triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);

triple e = (0,0,1);
triple f = (1,0,1);
triple g = (1,1,1);
triple h = (0,1,1);

draw ((a -- b -- f -- e -- cycle));
draw ((a -- d -- h -- e -- cycle));
draw ((a -- b -- c -- d -- cycle));

draw(cylinder((1/2,1/2,1/5), 1/3,3/5,(0,0,1)));
draw(surface(cylinder((1/2,1/2,1/5), 1/3,3/5,(0,0,1))), red);
draw(surface(circle((1/2,1/2,4/5), r=1/3,Z)), red);
//draw((circle((1/2,1/2,4/5), r=1/3,Z)));
draw(cylinder((1/2,1/2,1/5), 1/3,3/5,(0,0,1)), black+linewidth(.5));



