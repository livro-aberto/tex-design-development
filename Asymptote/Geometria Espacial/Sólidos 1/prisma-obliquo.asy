settings.outformat="png";
settings.render=16;
import three;
import graph3;
size(4cm);
currentprojection=orthographic(2,0.5,1/2);

draw(surface((0,0,0) -- (0,1,0) -- (1,1,0) -- (1,0,0)-- cycle), blue+opacity(0.5));
draw(surface((0,.5,2) -- (0,1.5,2) -- (1,1.5,2) -- (1,.5,2)-- cycle), blue+opacity(0.5));

draw(surface((0,0,0) -- (0,.5,2) -- (1,.5,2) -- (1,0,0)-- cycle), blue+opacity(0.5));
draw(surface((1,0,0) -- (1,1,0) -- (1,1.5,2) -- (1,.5,2)-- cycle), blue+opacity(0.5));
draw(surface((0,0,0) -- (0,1,0) -- (0,1.5,2) -- (0,.5,2)-- cycle), blue+opacity(0.5));
draw(surface((0,1,0) -- (0,1.5,2) -- (1,1.5,2) -- (1,1,0)-- cycle), blue+opacity(0.5));

draw((0,1,0) -- (0,0,0) -- (1,0,0), dashed);
draw((0,0,0) -- (0,0.5,2), dashed);

draw((0,.5,2) -- (0,1.5,2) -- (1,1.5,2) -- (1,.5,2)-- cycle);
draw((0,1,0) -- (0,1.5,2) -- (1,1.5,2) -- (1,1,0)-- cycle);
draw((1,0,0) -- (1,1,0) -- (1,1.5,2) -- (1,.5,2)-- cycle);


