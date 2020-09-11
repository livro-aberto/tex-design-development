settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(5cm);
currentprojection=orthographic(-1.25,.2,1/2);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1.5,0.8662,0);
triple d = (1,1.73205,0);
triple e = (0,1.73205,0);
triple f = (-.5,0.85502,0);

triple A =(2,-1,2);

draw(surface(a -- b -- c -- d -- e -- f -- cycle), blue+opacity(0.5));

draw(surface(a -- b -- A -- cycle), blue+opacity(0.5));
draw(surface(b -- c -- A -- cycle), blue+opacity(0.5));
draw(surface(c -- d -- A -- cycle), blue+opacity(0.5));
draw(surface(d -- e -- A -- cycle), blue+opacity(0.5));
draw(surface(e -- f -- A -- cycle), blue+opacity(0.5));
draw(surface(f -- e -- A -- cycle), blue+opacity(0.5));


draw(b -- c, dashed);
draw(c -- d, dashed);
draw(c -- A, dashed);
draw(b -- A, dashed);

draw(d -- e -- f -- a -- b);

draw(d -- A -- e -- f-- A -- a);