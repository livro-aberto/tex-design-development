if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="professor-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=false;
settings.embed=false;
settings.toolbar=true;

import three;
import graph3;
import solids;
import math;
import labelpath3;
import labelpath;
settings.render=16;
//attach=true;

pen azul = rgb(0,94/255,176/255); //azul
pen verde = rgb(75/255,173/255,49/255); //verde
pen vinho = rgb(183/255,13/255,40/255); //vinho
pen laranja = rgb(236/255,107/255,16/255); //laranja
pen agua = rgb(0,165/255,157/255); //verde agua
pen box2 = rgb(240/255,238/255,201/255);


texpreamble("\usepackage{fontspec}\setmainfont[Path=../../Fontes/]{Exo2-Light}");

size(3cm,3cm);
currentprojection=orthographic(1/2,6,0.5);

triple a = (0,0,0);
triple b = (1,0,0);
triple c = (1.5,0.8662,0);
triple d = (1,1.73205,0);
triple e = (0,1.73205,0);
triple f = (-.5,0.85502,0);

triple A = (-1,0,3);
triple B = (0,0,3);
triple C = (.5,0.8662,3);
triple D = (0,1.73205,3);
triple E = (-1,1.73205,3);
triple F = (-1.5,0.85502,3);

draw(surface(a -- b -- c -- d -- e -- f -- cycle), azul*80+opacity(0.65));
draw(surface(A -- B -- C -- D -- E -- F -- cycle), azul*80+opacity(0.65));

draw(surface(a -- b -- B -- A -- cycle), azul*80+opacity(0.65));
draw((A --a -- b -- B), dashed);

draw(surface(b -- B -- C -- c -- cycle), azul*80+opacity(0.65));
draw((A -- B -- C -- c));
draw((c -- b), dashed);

draw(surface(c -- d -- D -- C -- cycle), azul*80+opacity(0.65));
draw((c -- d -- D -- C -- cycle));

draw(surface(d -- D -- E -- e -- cycle), azul*80+opacity(0.65));
draw((d -- d -- D -- E -- e -- cycle));

draw(surface(e -- E -- F -- f -- cycle), azul*80+opacity(0.65));
draw((e --E -- F -- f -- cycle));

draw(surface(f -- F -- A -- a -- cycle), azul*80+opacity(0.65));
draw((a -- f), dashed);
draw((A -- F));
