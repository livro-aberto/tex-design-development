settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(3,.3,.5);

//draw(unitcube, blue*80+opacity(0.65));

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (.5,.86602,0);

triple d = (0,0,1);
triple e = (1,0,1);
triple f = (.5,.86602,1);

draw(surface(a--b--c--a--cycle), blue*80+opacity(0.65));
draw(surface(d--e--f--d--cycle), blue*80+opacity(0.65));
draw(surface(a--d--e--b--cycle), blue*80+opacity(0.65));
draw(surface(b--e--f--c--cycle), blue*80+opacity(0.65));
draw(surface(c--f--d--a--cycle), blue*80+opacity(0.65));

draw(d--e--f--cycle);
draw(d--a--b, dashed);
draw(a--c,dashed);
draw(e--b--c--f);