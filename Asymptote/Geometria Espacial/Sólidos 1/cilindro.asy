settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);
currentprojection=orthographic(1/2,6,0.5);


// Draw cylinder
// cylinder(startpoint3d, radius, length, along_this_axis)
triple start = (0,0,0);
real length = 3.5;
real radius = 1;
triple ax = (0,0,1);
revolution r = cylinder(start,radius,length,ax);
draw(surface(r),blue+opacity(0.5));
draw(r, black+linewidth(.5));
draw(surface(circle(c=(0,0,0), r=1, Z)), blue+opacity(0.5));
draw(surface(circle(c=(0,0,3.5), r=1, normal=Z)), blue+opacity(0.5));