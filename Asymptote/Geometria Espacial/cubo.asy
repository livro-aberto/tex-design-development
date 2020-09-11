settings.outformat="png";
settings.render=16;
import three;
import graph3;
import solids;
size(5cm);

currentprojection=orthographic(2,0.5,1/2);
size(3cm,3cm);

draw(unitcube, blue*80+opacity(0.65));

draw((1,0,1) -- (1,0,0));
draw((1,0,0) -- (1,1,0));
draw((1,1,0) -- (0,1,0));

draw((0,0,0) -- (1,0,0), dashed);
draw((0,0,0) -- (0,1,0), dashed);
draw((0,0,0) -- (0,0,1), dashed);

draw((0,0,1) -- (0,1,1));
draw((0,1,1) -- (1,1,1));
draw((1,1,1) -- (1,0,1));
draw((1,0,1) -- (0,0,1));
draw((0,1,1) -- (0,1,0));
draw((1,1,1) -- (1,1,0));

