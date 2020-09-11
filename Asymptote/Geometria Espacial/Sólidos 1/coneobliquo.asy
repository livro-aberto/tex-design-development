settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);
currentprojection=orthographic(0,7,0.5);


path3 p = circle(c=(0,0,0), r=1, Z);

triple extAlong = Z + .5Y;
real h = 6;
draw (p);
draw (surface(p), blue+opacity(.5));
draw (extrude(p, (-1.25,0,2) -- cycle), blue+opacity (.5));
draw ((-1.25,0,2) -- (1,0,0));
draw ((-1.25,0,2) -- (-1,0,0));