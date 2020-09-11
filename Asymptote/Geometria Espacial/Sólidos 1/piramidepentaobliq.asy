settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(5cm);
currentprojection=orthographic(-1.25,.2,1/2);

triple a = (0,0,0);
triple b = (1,1,0);
triple c = (0.35796,2.60007,0);
triple d = (-1.03884,2.03884,0);
triple e = (-1.26007,0.64203,0);

triple A =(2,2,2);

draw(surface(a -- b -- c -- d -- e -- cycle), blue+opacity(0.5));

draw(surface(a -- b -- A -- cycle), blue+opacity(0.5));
draw(surface(b -- c -- A -- cycle), blue+opacity(0.5));
draw(surface(c -- d -- A -- cycle), blue+opacity(0.5));
draw(surface(d -- e -- A -- cycle), blue+opacity(0.5));
draw(surface(e -- a -- A -- cycle), blue+opacity(0.5));

draw(a -- b, dashed);
draw(b -- c, dashed);
draw(b -- A, dashed);
draw(c -- d -- e --a);
draw(c -- A -- d -- e -- A -- a);