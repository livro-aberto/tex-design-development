settings.outformat="pdf";
settings.render=16;
import graph3;

settings.render=8;
size(5cm);

currentprojection=perspective(2.13,1.57,.72);

real x(real t) {return (1+cos(2pi*t)+2)/6;}
real y(real t) {return (1+sin(2pi*t)+2)/6;}
real z(real t) {return (t+.5)/6;}

path3 p=graph(x,y,z,0,5,operator ..);

draw(p,Arrow3);
draw(planeproject(XY*unitsquare3)*p);
draw(planeproject(YZ*unitsquare3)*p);
draw(planeproject(ZX*unitsquare3)*p);



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

