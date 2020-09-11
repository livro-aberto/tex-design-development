settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(2,1/3,1);

//currentlight = light(2,-1/3,1);

triple a = (0,0,0);
triple b = (0,1,0);
triple c = (0,.5,.86602);

triple d = (4,0,0);
triple e = (4,1,0);
triple f = (4,.5,.86602);

draw(surface(a -- b -- c -- a -- cycle), blue+opacity(.9));
draw(surface(d -- e -- f -- d -- cycle), blue+opacity(1));
draw(surface(c -- f -- e -- b -- cycle), red+opacity(.8));
draw(surface(c -- f -- d -- a -- cycle), red+opacity(.8));
draw(surface(a -- b -- e -- d -- cycle), red+opacity(.8), light=White);

draw(c -(1,0,0) -- f+(1,0,0), green+linewidth(1), L=Label("$r$", position=0.1));

label("$\alpha$", (d), align=2N+W, red);
