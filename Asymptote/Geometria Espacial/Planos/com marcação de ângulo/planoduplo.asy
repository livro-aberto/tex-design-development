settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);


currentprojection=orthographic(3,-1,1);

draw((1/2,.75,0)+(0,0,.025) -- (.525,.775,.025) -- (.525,.775,0),linewidth(.25));
draw((1/2,.75,0)+(0,0,.025) -- (.525,.725,.025) -- (.525,.725,0),linewidth(.25));

dot((.5125,.7375,.0125), linewidth(.25));
dot((.5125,.7625,.0125), linewidth(.25));

draw((1/2,.75,7/8) -- (1/2,.75,-1/4), green+linewidth(.8), L=Label("$r$", position=0.05));

draw(surface((0,0,0) -- (1,0,0) -- (1,1.5,0) -- (0,1.5,0) -- cycle), blue*60+opacity(0.8));

draw(surface((1/2,.75,0) -- (3/4,1,0) -- (3/4,1,3/4) -- (1/2,.75,3/4) --  cycle), red+ opacity(0.8));
draw(surface((1/2,.75,0) -- (3/4,.5,0) -- (3/4,.5,3/4) -- (1/2,.75,3/4) --  cycle), red+opacity(0.8));
label("$\alpha$", (0,0,0), align=NE, blue*80);

