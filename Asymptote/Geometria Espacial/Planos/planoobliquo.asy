settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(4,3,.5);

draw((4/8,0.25,1/2) -- (4/8,1.25,-1/2), green, L=Label("$r$", position=0.1, align=E));
draw(surface((0,0,0) -- (1,0,0) -- (1,1.5,0) -- (0,1.5,0) -- cycle), blue*60+opacity(0.8));

label("$\alpha$", (0,0,0), align=NE, blue*80);

