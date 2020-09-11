settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(3,1/2,.5);

draw((1/2,.75,1/2) -- (1/2,.75,-1/2), green, L=Label("$r$", position=0.2));
draw(surface((0,0,0) -- (1,0,0) -- (1,1.5,0) -- (0,1.5,0) -- cycle), blue*60+opacity(0.8));

label("$\alpha$", (0,0,0), align=NE, blue*80);

