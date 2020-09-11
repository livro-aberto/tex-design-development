settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);
currentprojection=orthographic(2,5,-1);


path p = (0, 0) .. (1, -2) .. (3, 0) .. (3, -1) .. (3, 2) .. (1, 1) .. (1, 0) .. cycle;

triple extAlong = Z + .5Y;
real h = 6;
draw (path3 (p));
draw (surface(p), blue+opacity(.5));
draw (surface(shift (h * extAlong) * path3 (p)), blue+opacity(.5));
draw (shift (h * extAlong) * path3 (p));
draw (extrude(reverse (p), h * extAlong), blue+opacity (.5));
