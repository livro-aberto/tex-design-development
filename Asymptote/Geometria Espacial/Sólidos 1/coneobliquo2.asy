settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);
currentprojection=orthographic(0,6,0.5);


path p = (-2,0) .. (0, -3) .. (3, -2) .. (3, -1) .. (3, 2) .. (1, 1) .. (0, 1) .. cycle;

triple c = (3,2,7);
dot((c), linewidth(.000001));
draw (path3 (p));
draw (surface(path3(p)), blue+opacity(.5));
draw (extrude(path3 (p), (c) -- cycle), blue+opacity (.5));
