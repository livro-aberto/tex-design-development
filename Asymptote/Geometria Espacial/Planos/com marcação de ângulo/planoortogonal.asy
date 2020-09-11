settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(3,1/2,.5);

draw((1/2,.75,1/2) -- (1/2,.75,-1/2), green, L=Label("$r$", position=0.2));
draw(surface((0,0,0) -- (1,0,0) -- (1,1.5,0) -- (0,1.5,0) -- cycle), blue*60+opacity(0.8));

draw((1/2,.75,0)+(0,0,.025) -- (.525,.775,.025) -- (.525,.775,0),linewidth(.25));
draw((1/2,.75,0)+(0,0,.025) -- (.525,.725,.025) -- (.525,.725,0),linewidth(.25));

dot((.5125,.7375,.0125), linewidth(.25));
dot((.5125,.7625,.0125), linewidth(.25));

draw((1/2,.75,0) -- (.560928,.810928,0));
draw((1/2,.75,0) -- (.5609378,.68906,0));


label("$\alpha$", (0,0,0), align=NE, blue*80);

