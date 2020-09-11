settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(3,2,.5);

draw(unitcube, blue*80+opacity(0.65));

triple a = (0,0,0);
triple b = (0,1,0);
triple c = (1,1,0);
triple d = (1,0,0);

triple e = (0,0,1);
triple f = (0,1,1);
triple g = (1,1,1);
triple h = (1,0,1);

draw(h -- d);
draw(d -- c);
draw(c -- b);

draw(a -- d, dashed);
draw(a -- b, dashed);
draw(a -- e, dashed);

draw(e -- f);
draw(f -- g);
draw(g -- h);
draw(h -- e);
draw(f -- b);
draw(g -- c);


draw(surface(e--f--g--h--cycle), red);
label("$\alpha$", (e), align=NW, red);

draw(g+(0,0,1/2) -- (c)-(0,0,1/4), green+linewidth(1), L=Label("$r$", align=E, position=0.05));

draw(g+(-.05,0,0) -- g+(-.05,0,-.05) -- g+(0,0,-.05));
draw(g+(0,-0.05,0) -- g+(0,-.05,-.05) -- g+(0,0,-.05));

dot(g+(-.025,0,-.025), linewidth(.5));
dot(g+(0,-.025,-.025), linewidth(.5));