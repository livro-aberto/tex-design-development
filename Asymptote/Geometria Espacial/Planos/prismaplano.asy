settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(2,1/2,.5);

triple a = (0,0,0);
triple b = (0,1,0);
triple c = (0,.5,.86602);

triple d = (4,0,0);
triple e = (4,1,0);
triple f = (4,.5,.86602);

draw(surface(a -- b -- c -- cycle), blue);
draw(surface(d -- e -- f -- cycle), red);
draw(surface(c -- f -- e -- b -- cycle), blue);
draw(surface(c -- f -- d -- a -- cycle), blue);
draw(surface(a -- d -- e -- b -- cycle), blue);

draw(c -(1,0,0) -- f+(1,0,0), green+linewidth(1), L=Label("$r$", position=0.1));

label("$\alpha$", (d), align=2N+W, red);