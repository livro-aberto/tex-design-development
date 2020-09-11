settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);
currentprojection=orthographic(2,5,-1);


path3 p = circle(c=(0,0,0), r=1, normal=Z);;

triple extAlong = Z + .5Y;
real h = 3;
draw (p);
draw (surface(p), blue+opacity(.5));
draw (surface(shift (h * extAlong) * (p)), blue+opacity(.5));
draw (shift (h * extAlong) * (p));
draw (extrude(reverse (p), h * extAlong), blue+opacity (.5));
