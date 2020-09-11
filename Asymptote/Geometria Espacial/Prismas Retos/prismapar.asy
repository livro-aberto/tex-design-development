settings.outformat="png";

import three;
import solids;
settings.render=16;

pen azul = rgb(0,94/255,176/255); //azul
pen verde = rgb(75/255,173/255,49/255); //verde
pen vinho = rgb(183/255,13/255,40/255); //vinho
pen laranja = rgb(236/255,107/255,16/255); //laranja
pen agua = rgb(0,165/255,157/255); //verde agua

size(7.5cm);
currentprojection=orthographic(1,2,.5);

draw(surface((0,0,0) -- (2,0,0) -- (2,0,1) -- (0,0,1) -- cycle), azul*80+opacity(0.65));
draw(surface((0,0,0) -- (2,0,0) -- (2,1,0) -- (0,1,0) -- cycle), azul*80+opacity(0.65));
draw(surface((0,0,1) -- (2,0,1) -- (2,1,1) -- (0,1,1) -- cycle), azul*80+opacity(0.65));
draw(surface((0,1,0) -- (0,1,1) -- (2,1,1) -- (2,1,0) -- cycle), azul*80+opacity(0.65));
draw(surface((0,0,0) -- (0,0,1) -- (0,1,1) -- (0,1,0) -- cycle), azul*80+opacity(0.65));
draw(surface((0,1,0) -- (0,1,1) -- (2,1,1) -- (2,1,0) -- cycle), azul*80+opacity(0.65));
draw(surface((2,0,0) -- (2,0,1) -- (2,1,1) -- (2,1,0) -- cycle), azul*80+opacity(0.65));

draw((0,1,0) -- (0,0,0) -- (2,0,0), dashed);
draw((0,0,0) -- (0,0,1), dashed);
draw((0,0,1) -- (2,0,1) -- (2,1,1) -- (0,1,1) -- cycle);
draw((0,1,0) -- (0,1,1));
draw((2,1,0) -- (2,1,1));

draw((2,0,1) -- (2,0,0));
draw((2,0,0) -- (2,1,0));
draw((2,1,0) -- (0,1,0));
