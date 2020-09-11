settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(5cm);
currentprojection=orthographic(3,10,3);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (.5,.86602,0);
triple d = (0,1,0);

triple A = (.5,0.288675,1.5);

draw(surface(a -- b -- c -- a -- cycle), blue+opacity(0.5));
draw(surface(a -- b -- A -- cycle), blue+opacity(0.5));
draw(surface(b -- c -- A -- cycle), blue+opacity(0.5));
draw(surface(c -- a -- A -- cycle), blue+opacity(0.5));

draw((a -- b), dashed);
draw(b -- c);
draw(c -- a);
draw(a -- A -- b -- c -- A);

