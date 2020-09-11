settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(5cm);
currentprojection=orthographic(1/2,2,0.5);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1,1,0);
triple d = (0,1,0);


triple A = (.5,.5,1.5);

draw(surface(a--b--c--d--cycle), blue+opacity(.5));

draw(surface(a--b--A--cycle), blue+opacity(.5));
draw(surface(b--c--A--cycle), blue+opacity(.5));
draw(surface(c--d--A--cycle), blue+opacity(.5));
draw(surface(a--d--A--cycle), blue+opacity(.5));

draw(A--b--c--A--d--c);
draw(b--a--d, dashed);
draw(a--A, dashed);
